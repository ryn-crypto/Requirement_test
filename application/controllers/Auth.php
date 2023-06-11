<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('User');
	}

	public function index()
	{
		$this->_ceksession();
		// validation form
		$this->form_validation->set_rules(
			'email',
			'Email',
			'required|trim|valid_email',
		);
		$this->form_validation->set_rules(
			'password',
			'Password',
			'required|trim',
		);

		// cek validation
		if ($this->form_validation->run() == false) {

			// data title page
			$data['page'] = 'Login Page';

			$this->load->view('templates/header', $data);
			$this->load->view('login_page');
			$this->load->view('templates/footer');
		} else {
			$this->_login();
		}
	}

	public function register()
	{
		$this->_ceksession();
		// validation form
		$this->form_validation->set_rules('name', 'Name', 'required|trim');
		$this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[user.email]');
		$this->form_validation->set_rules(
			'password',
			'Password',
			'required|trim|min_length[5]|matches[comfirm]',
			[
				'matches' => "password dosn't match!",
				'min_length' => 'to short password!'
			]
		);
		$this->form_validation->set_rules('comfirm', 'Password', 'required|trim|matches[password]');

		// cek validation
		if ($this->form_validation->run() == false) {
			// if problem
			$data['page'] = 'Register Page';

			$this->load->view('templates/header', $data);
			$this->load->view('registrasi_page');
			$this->load->view('templates/footer');
		} else {
			// preparing data
			$data = [
				'email' => htmlspecialchars($this->input->post('email', true)),
				'name' => htmlspecialchars($this->input->post('name', true)),
				'picture' => 'default.png',
				'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
				'hintspassword' => substr($this->input->post('password'), -3)
			];

			// insert data with model user
			$this->User->registration($data);

			// set flash data and redirect
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
			your account has been registered. please login</div>');
			redirect('auth');
		}
	}

	public function forgot_password()
	{
		$email = htmlspecialchars($this->input->post('email', true));

		if (!$email) {
			// title
			$data['page'] = 'Forgot Password';

			$this->load->view('templates/header', $data);
			$this->load->view('forgot_password/email');
			$this->load->view('templates/footer');
		} else {
			// get data user with model user
			$data = $this->User->get($email);
			if ($data) {
				// title
				$title['page'] = 'Forgot Password';

				$this->load->view('templates/header', $title);
				$this->load->view('forgot_password/password', $data);
				$this->load->view('templates/footer');
			} else {
				// set flash data and redirect
				$this->session->set_flashdata('message', '<div class="alert alert-warning" role="alert">
			email not found</div>');
				redirect('auth/forgot_password');
			}
		}
	}

	public function reset()
	{
		// validation form
		$this->form_validation->set_rules(
			'newPassword',
			'NewPassword',
			'required|trim|min_length[5]|matches[comfirm]',
			[
				'matches' => "Confirmation passwords do not match!",
				'min_length' => 'New password is too short!'
			]
		);
		$this->form_validation->set_rules('comfirm', 'Password', 'required|trim|matches[newPassword]');

		// cek validation
		if ($this->form_validation->run() == false) {
			// title
			$data['page'] = 'Forgot Password';

			$this->load->view('templates/header', $data);
			$this->load->view('forgot_password/email');
			$this->load->view('templates/footer');
		} else {
			// prepare data
			$email = htmlspecialchars($this->input->post('email', true));
			$passwordold = htmlspecialchars($this->input->post('old_password', true));
			$passwordnew = htmlspecialchars($this->input->post('newPassword', true));

			//get data user by email
			$user = $this->User->get($email);

			// validation password match
			if (!password_verify($passwordold, $user['password'])) {
				// if password dosn't macth
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Old password does not match!</div>');
				redirect('auth/forgot_password');
			} else {
				// title
				$data = [
					'password' => password_hash($passwordnew, PASSWORD_DEFAULT),
					'hintspassword' => substr($passwordnew, -3)
				];

				// update Password
				$this->User->update($data, $user['id']);

				// set flash data and redirect to login
				$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Password has been changed, please login!</div>');
				redirect('auth');
			}
		}
	}

	public function logout()
	{
		$this->session->unset_userdata('email');

		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">You have logged out!</div>');
		redirect('auth');
	}

	// private function login
	private function _login()
	{
		// get data by post input
		$email = $this->input->post('email');
		$password = $this->input->post('password');

		//get data user
		$user = $this->User->get($email);

		// cek user
		if ($user) {
			// if already register
			// cek password
			if (password_verify($password, $user['password'])) {
				// if password varified
				$data = [
					'email' => $user['email']
				];

				$this->session->set_userdata($data);

				redirect('Dasboard');
			} else {
				// if password dosn't macth
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Wrong Password !</div>');
				redirect('auth');
			}
		} else {
			// if unregistered
			$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Unregistered e-mail!</div>');
			redirect('auth/register');
		}
	}

	private function _ceksession()
	{
		if ($this->session->userdata('email')) {
			redirect('Dasboard');
		}
	}
}
