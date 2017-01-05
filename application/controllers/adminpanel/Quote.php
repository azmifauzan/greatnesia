<?php
/**
* 
*/
class Quote extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		if($this->session->userdata('isLoginAdmin') != TRUE)
            redirect('adminpanel/login','refresh');
        $this->load->model('admin/usermodel','usm');
        $this->load->model('admin/quotemodel','qtm');
	}

	public function index($off = 0)
    {
        $data['menu'] = 'Quote';
        $username = $this->session->userdata('username');
        $data['user'] = $this->usm->getUserDetail($username);
                        
        $total = $this->qtm->countAllQuote();                
        $this->load->library('pagination');
        $config["base_url"] = site_url('adminpanel/quote/index');
        $config["total_rows"] = $total;
        $config["per_page"] = 20;
        $config["uri_segment"] = 4;
        $this->pagination->initialize($config);
        
        $data['quote'] = $this->ifm->getAllQuote($config['per_page'],$off);
        if($this->session->flashdata('info'))
            $data['info'] = $this->session->flashdata('info');
        $this->load->view('admin/quote_view',$data);
    }
}