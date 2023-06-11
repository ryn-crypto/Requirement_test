<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dasboard extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('User');
  }

  public function index()
  {
    // helper to cek session
    cek_login();

    // data title
    $data['page'] = 'Dasboard';

    $this->load->view('templates/header', $data);
    $this->load->view('Home');
    $this->load->view('templates/footer');
  }
}
