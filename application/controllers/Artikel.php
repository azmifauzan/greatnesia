<?php
/**
* 
*/
class Artikel extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('front/artikelmodel','arm');
	}

	public function baca($id,$url)
	{
		$jumlain = 10;
		$data['artikel'] = $this->arm->getArtikelDetil($id,$url);
		$data['title'] = $data['artikel']->judul;
		$data['lain'] = $this->arm->getTopArtikel($jumlain);
		$data["quote"] = $this->arm->getRandomQuote();
		$this->load->view('front/artikel_view',$data);
	}
}