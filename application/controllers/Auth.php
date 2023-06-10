<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		// $this->load->library('form_validation');
	}

	public function index()
	{
		$data['page'] = 'Login Page';

		$this->load->view('templates/header', $data);
		$this->load->view('login_page');
		$this->load->view('templates/footer');
	}

	public function login()
	{
		$data['page'] = 'Login Page';

		$this->load->view('templates/header', $data);
		// $this->load->view('login_page');
		// $this->load->view('templates/footer');
	}

	// private function

	private function _login()
	{
		$email = $this->input->post('email');
		$password = $this->input->post('password');

		$this->load->model('Registrasi');
		$user = $this->Registrasi->ambil_data(['email' => $email], 'user');

		if ($user) {
			if ($user['aktif'] == 1) {
				if (password_verify($password, $user['password'])) {

					$data = [
						'email' => $user['email'],
						'role_id' => $user['role_id']
					];

					$this->session->set_userdata($data);

					if ($user['role_id'] == 1) {
						redirect('admin');
					} else {
						redirect('user');
					}
				} else {
					$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Password salah!</div>');
					redirect('auth');
				}
			} else {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Akun anda tidak bisa dibuka, hubungi HRD</div>');
				redirect('auth');
			}
		} else {
			$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Email tidak terdaftar!</div>');
			redirect('auth');
		}
	}

	private function _ceksession()
	{
		if ($this->session->userdata('email')) {
			redirect('user');
		}
	}
}
