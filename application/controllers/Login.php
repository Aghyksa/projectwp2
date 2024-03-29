<?php

class Login extends CI_Controller {

    function __construct() {
        parent::__construct();

        // if ($this->session->userdata('status') != "login") {
        //     redirect(base_url("home"));
        // }
        
        $this->load->model('Modeladmin');
        $this->load->model('m_login');
    }

    function index() {
        $data ['title'] = "Sekolah Tinggi Sisfo";
        $this->load->view('template/header');
        $this->load->view('login');
        $this->load->view('template/footer');
    }

    function aksi_login() {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $where = array(
            'username' => $username,
            'password' => sha1($password)
        );
        $cek = $this->m_login->cek_login("data_login", $where)->num_rows();
        if ($cek > 0) {

            $data_session = array(
                'nama' => $username,
                'status' => "login"
            );

            $this->session->set_userdata($data_session);

            redirect(base_url("login/admin"));
        } else {
            $this->session->set_flashdata('message','<div class="alert alert-danger" role="alert">
              Username atau Password Salah</div>');
            redirect ('Login');
        }
    }

    function admin(){
        $data['mahasiswa'] = $this->Modeladmin->tampil_data();
        $data ['title'] = "Sekolah Tinggi Teknologi Bandung";
        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar');
        $this->load->view('dashboard', $data);
        // $this->load->view('datatabel');
        $this->load->view('template/footer');
    }

    function logout() {
        $this->session->sess_destroy();
        redirect('home');
    }

    
}
