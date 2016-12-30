<?php
/**
* 
*/
class Home extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('front/homemodel','hmm');
	}

	public function index($off = 0)
	{
		$total = $this->hmm->countNewArtikel();                
        $this->load->library('pagination');
        $config["base_url"] = site_url('home/index');
        $config["total_rows"] = $total;
        $config["per_page"] = 20;
        $config["uri_segment"] = 3;
        $this->pagination->initialize($config);

        $data["artikel"] = $this->hmm->getNewArtikel($config['per_page'],$off);
        $this->load->helper('text');
		$this->load->view('front/home_view',$data);
	}
}