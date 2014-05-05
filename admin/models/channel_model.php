<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Channel_model extends CI_Model
{
    
    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
    function get_all_entries()
    {
        return $query = $this->db->query('SELECT * FROM channels');
    }
    
    function entry_exists($column, $value)
    {
        $query = $this->db->query("
		SELECT *
		FROM channels
		WHERE $column = '" . $value . "'
		AND DATE( retrieval_time )  = DATE( NOW(  )  )
		");        
		
        if ($query->num_rows > 0) {
            return TRUE;
        }
        return FALSE;
        
    }
    
    function get_entry($column, $value)
    {
        $query = $this->db->query("
		SELECT *
		FROM channels
		WHERE $column = '" . $value . "'
		");        
		
        return $query->row();
        
    }
	
    function insert_entry($data)
    {
        $this->db->insert('channels', $data);
    }
    
    function update_entry($data, $criteria)
    {
        $this->db->update('channels', $data, $criteria);
    }
    
}
