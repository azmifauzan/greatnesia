<?php
/**
* 
*/
class Quotemodel extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}

	public function countAllQuote()
    {
        $this->db->from('quote');
        return $this->db->count_all_results();
    }

    public function getAllQuote($pg,$off)
    {
        return $this->db->get('artikel',$pg,$off);
    }
}