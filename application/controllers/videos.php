<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Videos extends CI_Controller {

	public function index()
	{
		
		$this->db->select("
		id, 
		CONCAT(persons_first_name, ' ', persons_last_name) AS title,
		persons_image AS referer,
		persons_image AS url,
		persons_width AS width, 
		persons_height AS height, 
		CONCAT('uploads/',persons_image) AS image, 
		CONCAT('uploads/',persons_image) AS preview
		", FALSE);
		$this->db->from('oa_persons');
		
		
		$data['persons'] = $this->db->get();
		
		$data['persons_num_rows'] = $data['persons']->num_rows();
		$data['persons'] = $data['persons']->result_array();
		
		$json = json_encode(array($data['persons']));
		
		$json = str_replace('[[','[',$json);
		$json = str_replace(']]',']',$json);
		
		if (isset($_GET['callback']) && $_GET['callback']!='') {
			$json = $_GET['callback'].'('.$json.')';
		}else{
			$json = '('.$json.')';
		}
		
		$this->output->set_content_type('application/json')->set_output($json);
		
		//print_r($data['persons']);
		//exit;
		
	}
	
}

/* End of file persons.php */
/* Location: ./admin/controllers/persons.php */