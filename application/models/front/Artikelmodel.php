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

	public function getArtikelDetil($id)
	{
		$this->db->select('artikel.kategori_id, artikel.url, artikel.artikel_id, artikel.judul, artikel.tgl_dibuat, artikel.isi, kategori.nama, artikel.creator, artikel.image');
		$this->db->where('artikel_id',$id);
		//$this->db->where('url',$url);
		$this->db->join('kategori','artikel.kategori_id = kategori.kategori_id');
		return $this->db->get('artikel')->row();
	}

	public function getTopArtikel($jum,$ex)
	{
		$this->db->limit($jum);
		$this->db->order_by('tgl_dibuat','desc');
		$this->db->where_not_in('artikel_id',$ex);
		return $this->db->get('artikel');
	}

	public function getRandomQuote()
	{
		$this->db->limit(1);
		$this->db->order_by('qid', 'RANDOM');
		return $this->db->get('quote')->row();
	}
}