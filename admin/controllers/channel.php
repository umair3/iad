<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Channel extends CI_Controller
{
    
    public function __construct()
    {
        parent::__construct();
        // Setting Timeout Limit. Its value can be changed from config.php
        $timeout = $this->config->item('timeout_limit');
        set_time_limit($timeout);
    }
    
    public function search($str, $start_index, $max_result)
    {
        $url = "http://gdata.youtube.com/feeds/api/channels?";
        
        $entries_exist = TRUE;
        
        // if entries tags exist in the reponse xml continue requests
        while ($entries_exist == TRUE) {
            
            // create curl resource
            $ch = curl_init();
            
            $encoded = 'q=' . $str . '&start-index=' . $start_index . '&max-results=' . $max_result . '&v=2';
            
            curl_setopt($ch, CURLOPT_URL, $url . $encoded);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            $xml = curl_exec($ch);
            curl_close($ch);
            
            // removing colon from xml tags, since simplexml_load_string does not read them and thinks them of another namespace.
            $xml = preg_replace("/(<\/?)(\w+):([^>]*>)/", "$1$2$3", $xml);
            
            $xml_obj = simplexml_load_string($xml) or die("Error: Can not create object. Cannot connect to youtube data API. Please check your internet.");
            
            $xml_arr = json_decode(json_encode((array) $xml_obj), 1);
            
            if (!empty($xml_arr['entry']) && is_array($xml_arr['entry'])) {
                
                foreach ($xml_arr['entry'] as $entry) {
                    
					if (isset($entry['author']) && $entry['author']!='') {
						$author	= (object) $entry['author'];
						$author = $author->name;
					} else {
						$author = '';
					}
					
                    $category        = (object) $entry['category'];
					
					if (isset($category->{'@attributes'}) && $category->{'@attributes'}!='') {
						//using curly braces since attribute name starts with @.
						$category_attrib = (object) $category->{'@attributes'}; 
						$scheme = $category_attrib->scheme;
						$term = $category_attrib->term;
					} else {
						
						$scheme = '';
						$term 	= '';
						
					}
					
					$channel_stats        = (object) $entry['ytchannelStatistics'];
					
					if (isset($channel_stats->{'@attributes'}) && $channel_stats->{'@attributes'}!='') {
						//using curly braces since attribute name starts with @.
						$channel_stats_attrib = (object) $channel_stats->{'@attributes'}; 
						$subscriber_count 	= $channel_stats_attrib->subscriberCount;
						$view_count			= $channel_stats_attrib->viewCount;
					} else {
						
						$subscriber_count 	= '0';
						$view_count 		= '0';
						
					}
                    
                    $alternate_link = '';
                    if (is_array($entry['link'])) {
                        foreach ($entry['link'] as $link) {
                            
                            if ($link['@attributes']['rel'] == 'alternate') {
                                $alternate_link = $link['@attributes']['href'];
                            }
                        }
                    }
					
					$gdfeedLink        = (object) $entry['gdfeedLink'];
					
					if (isset($gdfeedLink->{'@attributes'}) && $gdfeedLink->{'@attributes'}!='') {
						//using curly braces since attribute name starts with @.
						$gdfeedLink_attrib 	= (object) $gdfeedLink->{'@attributes'}; 
						$gdfeedLink_href 	= $gdfeedLink_attrib->href;
					} else {
						$gdfeedLink_href	= '';
					}
                    
                    $summary = (is_string($entry['summary']) && $entry['summary'] != '') ? $entry['summary'] : '';
                    
                    // if channel already exists, then update it.
                    $this->load->model('channel_model');
                    
					// Checking if yt:ChannelId already exists for same current retrieval date
                    $exists = $this->channel_model->entry_exists('yt_channel_id', $entry['ytchannelId']);
                    
					// checking if values are null, then skip inserting this value
					if (
					$entry['title'] != NULL 
					&& $author!=NULL 
					&& $entry['updated']!=NULL 
					&& $scheme!=NULL 
					&& $term!=NULL 
					&& $alternate_link!=NULL
					) {
						if ($exists == TRUE) {
							$data = array(
								'title' 					=> $entry['title'],
								'author_name' 				=> $author,
								'summary' 					=> $summary,
								'category_scheme' 			=> $scheme,
								'category_term' 			=> $term,
								'link_alter_page' 			=> $alternate_link,
								'stats_subscriber_count' 	=> $subscriber_count,
								'stats_view_count' 			=> $view_count,
								'add_date' 					=> $entry['updated'],
								//'retrieval_time' 			=> date("Y-m-d H:i:s"),
								//'yt_channel_id' 			=> $entry['ytchannelId'],
								'gd_feed_link_href'			=> $gdfeedLink_href
							);
							
							$this->channel_model->update_entry($data, array(
								'yt_channel_id' => $entry['ytchannelId']
							));
							unset($entry);
							unset($data);
						} else {
							
							$data = array(
								'title' 					=> $entry['title'],
								'author_name' 				=> $author,
								'summary' 					=> $summary,
								'category_scheme' 			=> $scheme,
								'category_term' 			=> $term,
								'link_alter_page' 			=> $alternate_link,
								'stats_subscriber_count' 	=> $subscriber_count,
								'stats_view_count' 			=> $view_count,
								'add_date' 					=> $entry['updated'],
								//'retrieval_time' 			=> date("Y-m-d H:i:s"),
								'yt_channel_id' 			=> $entry['ytchannelId'],
								'gd_feed_link_href'			=> $gdfeedLink_href
							);
							
							$this->channel_model->insert_entry($data);
							unset($entry);
							unset($data);
						}	
					}
					
                }
                
                $start_index = $start_index + 50;
                $this->_sleep();
                unset($xml_obj);
                unset($xml_arr);
            } else {
                // entries not exist. Break the while loop.
                $entries_exist = FALSE;
            }
        }
        
    }
    
    public function fetchAll()
    {
        // fetch data from youtube and save in db for alphabets in chunks of 50
        $alphabet = 'a';
        for ($i = 1; $i <= 26; $i++) {
            $this->search($alphabet, 1, 50);
            $alphabet++;
            $this->_sleep();
        }
        
        // fetch data from youtube and save in db for 0-9 in chunks of 50
        for ($i = 0; $i <= 9; $i++) {
            $this->search($i, 1, 50);
            $this->_sleep();
        }
        
        redirect(base_url() . index_page() . '/channel/view/fetched');
        
    }
    
    private function _sleep()
    {
        
        // Specify wait in milli seconds
        $min = $this->config->item('min');
        $max = $this->config->item('max');
        
        // converting milli seconds into micro seconds
        $min = $min * 1000;
        $max = $max * 1000;
        
        $wait = rand($min, $max);
        usleep($wait);
        
    }
    
    public function view($message = '')
    {
        
        $data['message'] = ($message == 'fetched') ? 'YouTube channels search data for alphabets a-z and digits 0-9 fetched successfully and saved in DB.' : $message;
        
		$data['message'] = ($message == 'norecord') ? 'No YouTube exists. Please fetch channels first.':'';
		
        $this->load->model('channel_model');
        
        $query            = $this->channel_model->get_all_entries();
        $data['total']    = $query->num_rows();
        $data['channels'] = $query->result();
        $this->load->view('list_channels', $data);
        
    }
    
	public function edit($channel_id, $message = '')
    {
        $this->load->model('channel_model');
        $data['message'] = ($message == 'success') ? 'Channel information updated successfully.' : '';
        
		if (isset($_POST['meta_attribution_tag'])) {
			
			$data = array(
				'meta_attribution_tag'	=> $_POST['meta_attribution_tag']
			);
			
			$this->channel_model->update_entry($data, array(
				'id' => $channel_id
			));
			
			redirect(base_url().index_page().'/channel/edit/'.$channel_id.'/success/');
			
		}
		
        $data['channel']  = $this->channel_model->get_entry('id', $channel_id);
        
        $this->load->view('edit_channel', $data);
        
    }
	
    private function _array2csv(array &$array)
    {
        
        if (count($array) == 0) {
            return null;
        }
        ob_start();
        $df = fopen("php://output", 'w');
        fputcsv($df, array_keys(reset($array)));
        foreach ($array as $row) {
            fputcsv($df, $row);
        }
        fclose($df);
        return ob_get_clean();
    }
    
    private function _download_send_headers($filename)
    {
        // disable caching
        $now = gmdate("D, d M Y H:i:s");
        header("Expires: Tue, 03 Jul 2001 06:00:00 GMT");
        header("Cache-Control: max-age=0, no-cache, must-revalidate, proxy-revalidate");
        header("Last-Modified: {$now} GMT");
        
        // force download
        header("Content-Type: application/force-download");
        header("Content-Type: application/octet-stream");
        header("Content-Type: application/download");
        
        // disposition / encoding on response body
        header("Content-Disposition: attachment;filename={$filename}");
        header("Content-Transfer-Encoding: binary");
    }
    
    public function csvExport()
    {
        $this->_download_send_headers("data_export_" . date("Y-m-d") . ".csv");
        
        $query            = $this->db->query('SELECT * FROM channels');
        $data['channels'] = $query->result_array();
        
        echo $this->_array2csv($data['channels']);
        die();
    }
    
}

/* End of file channel.php */
/* Location: ./application/controllers/channel.php */
