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

    // get session data
    $email = $this->session->userdata('email');

    // get data user by email
    $data['user'] = $this->User->get($email);

    // load view dasboard
    $this->load->view('templates/header', $data);
    $this->load->view('Dasboard', $data);
    $this->load->view('templates/footer');
  }

  public function list()
  {
    // helper to cek session
    cek_login();

    // data title
    $data['page'] = 'List User';

    // get session data
    $email = $this->session->userdata('email');

    // get data user by email
    $data['user'] = $this->User->get($email);
    // get data all user
    $data['listUser'] = $this->User->index();

    // load view dasboard
    $this->load->view('templates/header', $data);
    $this->load->view('List_user', $data);
    $this->load->view('templates/footer');
  }
}
