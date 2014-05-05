<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Persons extends CI_Controller {

	public function index()
	{
		$this->load->view('front/header');
		
		$data['persons'] = $this->db->get('oa_persons');
		$data['persons_num_rows'] = $data['persons']->num_rows();
		$data['persons'] = $data['persons']->result();
		
		$this->load->view('persons/list',$data);
		$this->load->view('front/footer');
	}
	
	public function add()
	{
		$this->load->view('front/header');
		
		$data['countries'] = $this->_getCountries();
		
		$data['account_types'] = $this->_getAccountTypes();
		
		if ($_POST) {
			$this->load->library('form_validation');
	
			$this->form_validation->set_rules('first_name', 'first name', 'trim|required|min_length[2]|max_length[20]|xss_clean');
			$this->form_validation->set_rules('middle_name', 'middle name', 'trim|min_length[2]|max_length[20]|xss_clean');
			$this->form_validation->set_rules('last_name', 'last name', 'trim|required|min_length[2]|max_length[20]|xss_clean');
			$this->form_validation->set_rules('country', 'country', 'trim|required|xss_clean');
	
			if ($this->form_validation->run() === TRUE)
			{
			
				$config['upload_path'] = './uploads/';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size'] = '100';
				$config['max_width'] = '1024';
				$config['max_height'] = '768';
				
				$this->load->library('upload', $config);
				
				if ( ! $this->upload->do_upload('image'))
				{
					$data = array('error' => $this->upload->display_errors());
				}
				else
				{
					$img = $this->upload->data();
					
					// creating thumbnail
					$this->load->library('image_lib');
					
					$config['image_library'] = 'gd2';
					$config['source_image'] = './uploads/'.$img['file_name'];
					$thumb = $img['raw_name'].'_thumb'.$img['file_ext'];
					$config['new_image'] = './uploads/'.$thumb;
					$config['create_thumb'] = TRUE;
					$config['maintain_ratio'] = TRUE;
					$config['width'] = 75;
					$config['height'] = 50;
					
					if($this->image_lib->resize())
					{
					
						$person = array (
							'persons_first_name'	=> $this->input->post('first_name'),
							'persons_middle_name'   => $this->input->post('middle_name'),
							'persons_last_name'	=> $this->input->post('last_name'),
							'persons_image'   	=> $img['file_name'],
							'persons_thumbnail'   	=> $thumb,
							'persons_width'   	=> $img['image_width'],
							'persons_height'   	=> $img['image_height'],
							//'persons_video'   	=> $this->input->post(''), 
							//'persons_user_id'   	=> $this->input->post(''),
							'persons_country'   	=> $this->input->post('country'),
							'persons_desc'   	=> $this->input->post('desc'),
						        //'persons_timestamp'  	=> time('UTC')
						);
						
					        $this->db->insert('oa_persons', $person);
					        
					        $person_id =$this->db->insert_id();
					        $rows = $this->input->post('account_row');
					        
					        foreach ($rows as $row)
					        {
						        $person_accounts = array(
						        	'accounts_person_id'	=> $person_id,
						        	'accounts_type_id'	=> $this->input->post('account_type'.$row),
						        	'accounts_value'	=> $this->input->post('account_title'.$row),
						        	'accounts_valid'	=> '1'
						        );	
						        
						        $this->db->insert('oa_accounts',$person_accounts);
					        }
					        
					        $data['success'] = 'Person added successfully.';
					
					} else {
					
						$data = array('error' => $this->image_lib->display_errors());
						
					}
					
					
				}
			
			}
		}
		
		$this->load->view('persons/add',$data);
		$this->load->view('front/footer');
	}

	private function _getCountries()
	{
		$query = $this->db->get('oa_countries');
		return $query->result();
	}
	
	private function _getAccountTypes()
	{
		$query = $this->db->get('oa_account_types');
		return $query->result();
	}
	
}

/* End of file persons.php */
/* Location: ./admin/controllers/persons.php */