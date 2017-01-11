<?php
class Daftar extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('usermodel','usm');
    }
    
    public function index()
    {
        if($this->session->flashdata('error'))
        {
            $data['error'] = $this->session->flashdata('error');
            $this->load->view('daftar_view',$data);
        }
        else
        {
            $this->load->view('daftar_view');
        }
    }
    
    public function proses()
    {
	if($this->input->post("daftar"))
	{
	    $this->load->library('form_validation');
        $this->form_validation->set_rules('username', 'Username', 'required|min_length[6]|is_unique[user.username]');
	    $this->form_validation->set_rules('password', 'Password', 'required|min_length[6]');
	    $this->form_validation->set_rules('repassword', 'Ulangi Password', 'required|matches[password]');
	    $this->form_validation->set_rules('email', 'email', 'required|valid_email|is_unique[user.email]');
	    $this->form_validation->set_rules('nama', 'Nama', 'required');
	    if ($this->form_validation->run() == FALSE)
	    {
			$data['error'] = 'Terdapat kesalahan dalam data yang Anda inputkan, mohon diperbaiki kembali !';
			$this->load->view('daftar_view',$data);
	    }
	    else
	    {
			$us = $this->input->post('username');
			$ps = $this->input->post('password');
			$em = $this->input->post('email');
			$nm = $this->input->post('nama');
			$this->usm->addUser($us,$ps,$em,$nm);
			$this->session->set_flashdata('info','Pendaftaran Anda berhasil. Silahkan login menggunakan akun Anda!');
			redirect('ucp/login','refresh');
	    }
	}
	else
	{
	    redirect('ucp/login');
	}
    }
}