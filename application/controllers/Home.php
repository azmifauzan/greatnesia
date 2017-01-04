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
        $config["per_page"] = 5;
        $config["uri_segment"] = 3;
        $config["full_tag_open"] = '<div class="paging">';
        $config["full_tag_close"] = '</div>';
        $config["cur_tag_open"] = '<span class="current">';
        $config["cur_tag_close"] = '</span>';
        $config["next_link"] = 'Next';
        $config["prev_link"] = 'Prev';
        $this->pagination->initialize($config);

        $jumlain = 10;
        $rel = ($off+1) * $jumlain;
        $data['lain'] = $this->hmm->getRelatedArtikel($rel,$jumlain);
        $data["artikel"] = $this->hmm->getNewArtikel($config['per_page'],$off);
        $this->load->helper('text');
		$this->load->view('front/home_view',$data);
	}
}