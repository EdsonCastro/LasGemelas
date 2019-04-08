<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('usuarios_model');
	}
	public function index(){
		//$this->load->view('Frontend/header');
		$this->load->view('login_view');
		//$this->load->view('Frontend/footer');
	}
	

	public function verify_sesion(){
		$nombre = $this->input->post('nombre');
		if($this->usuarios_model->verify_user($nombre) and $this->usuarios_model->verify_sesion()){

				//$_SESSION['usuario'] = $this->input->post('nombre');
				//$_SESSION['is_logged_in'] = TRUE;

				//$this->load->view('Frontend/header');
				$this->load->view('index');
				//$this->load->view('Frontend/footer');
		} else {
				$mensaje = array('mensaje' => 'Usuario y/o contraseña incorrectos.');
				//$this->load->view('Frontend/header');
				$this->load->view('login_view', $mensaje);
				//$this->load->view('Frontend/footer');
		}
	}
	
	/*
	public function logout(){
		$_SESSION['is_logged_in'] = FALSE;
		session_destroy();
		//$this->load->view('Frontend/header');
		$this->load->view('login_view');
		//$this->load->view('Frontend/footer');
	}
	*/
}
?>