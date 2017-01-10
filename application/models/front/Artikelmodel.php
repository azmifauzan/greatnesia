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
		$this->db->select('artikel.kategori_id, artikel.url, artikel.artikel_id, artikel.judul, artikel.tgl_dibuat, artikel.isi, kategori.nama, artikel.creator, artikel.image');
		$this->db->where('artikel_id',$id);
		$this->db->where('url',$url);
		$this->db->join('kategori','artikel.kategori_id = kategori.kategori_id');
		return $this->db->get('artikel')->row();
	}

	public function getTopArtikel($jum)
	{
		$this->db->limit($jum);
		return $this->db->get('artikel');
	}

	public function getRandomQuote()
	{
		$this->db->limit(1);
		$this->db->order_by('qid', 'RANDOM');
		return $this->db->get('quote')->row();
	}
}