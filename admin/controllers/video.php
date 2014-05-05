<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Video extends CI_Controller
{
    
    public function __construct()
    {
        parent::__construct();
        // Setting Timeout Limit. Its value can be changed from config.php
        $timeout = $this->config->item('timeout_limit');
        set_time_limit($timeout);
    }
	
	public function share() {
		
		if (isset($_POST)) {
			
			//$this->load->model('video_model');
			
			
		}
		echo 'show form'; exit;
		
		//$this->load->view();
	}
    
	public function fetchAllChannelsVideosMetaAttribution() {
	
		$this->load->model('channel_model');
        
        $query            = $this->channel_model->get_all_entries();
        $data['total']    = $query->num_rows();
		
		if ($data['total'] < 1) {
			redirect(base_url().index_page().'/channel/view/norecord/');
		}
		
        $data['channels'] = $query->result();
		
		foreach ($data['channels'] as $channel) {
			
			$network = $this->fetchSingleChannelVideos($channel->gd_feed_link_href);
			
			if ($network) {
			
				$data = array(
					'meta_attribution_tag'		=> $network
				);
				
				$this->channel_model->update_entry($data, array(
					'id' => $channel->id
				));
				
				unset($network);
				unset($data);
			}
				
		}
		
	}
	
	public function fetchSingleChannelVideos($gd_feed_link_href) {
		
		if ($gd_feed_link_href) {
			
			$url = $gd_feed_link_href;
			
			// create curl resource
            $ch = curl_init();
            
			$start_index 	= 1;
			$max_result 	= 1;
            $encoded = '&start-index=' . $start_index . '&max-results=' . $max_result;
            
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
					
					if (is_string($entry)){
					
						if (strpos($entry,':video:')) {
							$id_arr = explode(':video:',$entry);
							$video_id = $id_arr[1];
							
							if ($video_id) {
								$tags =	get_meta_tags("http://www.youtube.com/watch?v=".$video_id);
								
								if (array_key_exists('attribution', $tags)) {
									return $network = $tags['attribution'];
								}
							}
						}
					
					}
					
				
				}
				
			}
			
			
		}
		
		return false;
		
	}
    
}

/* End of file channel.php */
/* Location: ./application/controllers/channel.php */
