<?php
/**
* 
*/
class Artikelmodel extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}

	public function getArtikelDetil($id,$url)
	{
		$this->db->select('artikel.artikel_id,artikel.judul,artikel.tgl_dibuat,artikel.isi,user.nama,artikel.creator,artikel.image');
		$this->db->where('artikel_id',$id);
		$this->db->where('url',$url);
		$this->db->join('user','artikel.creator=user.username');
		return $this->db->get('artikel')->row();
	}

	public function getTopArtikel($jum)
	{
		$this->db->limit($jum);
		return $this->db->get('artikel');
	}
}