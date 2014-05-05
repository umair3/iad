<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class A extends CI_Controller {

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
	
}

/* End of file persons.php */
/* Location: ./admin/controllers/persons.php */