<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class A extends CI_Controller {
	
	public function __construct() {
            parent::__construct();
            // Your own constructor code
    }
	
	public function index()
	{
		
		$this->db->select("
		id_emb, 
		title_emb AS title,
		thumbnail_emb AS referer,
		video_url_emb AS url,
		img_width_emb AS width, 
		img_height_emb AS height, 
		thumbnail_url_emb AS image, 
		thumbnail_url_emb AS preview
		", FALSE);
		$this->db->from('oa_embeds');
		
		$data['persons'] = $this->db->get();
		
		$data['persons_num_rows'] = $data['persons']->num_rows();
		$data['persons'] = $data['persons']->result_array();
		
		$json = json_encode(array($data['persons']));
		
		$json = str_replace('[[','[',$json);
		$json = str_replace(']]',']',$json);
		
		$json = $_GET['callback'].'('.$json.')';
		
		$this->output->set_content_type('application/json')->set_output($json);
		
		//print_r($data['persons']);
		//exit;
		
	}
	
	public function add()
	{
		if ($_POST) {
			
			$data = array (
			'title_emb'			=> $this->input->post('title'),
			'thumbnail_emb'		=> '',
			'video_url_emb'		=> $this->input->post('video_url'),
			'img_width_emb'		=> 100,
			'img_height_emb'	=> 100,
			'thumbnail_url_emb'	=> $this->input->post('thumbnail_url'),
			'country_emb'		=> $this->input->post('country'),
			'desc_emb'			=> $this->input->post('description'),
			'category_emb'		=> $this->input->post('category')
			);
			
			$this->db->insert('oa_embeds', $data);
			
		} else {
			$error = 'No data posted';
			
			$json = json_encode($error);
			
			$this->output->set_content_type('application/json')->set_output($json);
		}
		
	}
	
}

/* End of file persons.php */
/* Location: ./admin/controllers/persons.php */