<?php
/**
* 
*/
class Homemodel extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}

	public function getNewArtikel($pg,$off)
	{
		$this->db->select('artikel.*');
		$this->db->select('kategori.nama');
		$this->db->where('status',1);
		$this->db->order_by('tgl_dibuat','desc');
		$this->db->join('kategori','artikel.kategori_id = kategori.kategori_id');
		return $this->db->get('artikel',$pg,$off);
	}

	public function countNewArtikel()
	{
		$this->db->where('status',1);
		$this->db->from('artikel');
        return $this->db->count_all_results();
	}
}