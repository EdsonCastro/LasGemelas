<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Registro extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('usuarios_model');
	}
	public function index(){
		//$this->load->view('Frontend/header');
		$this->load->view('registro_view');
		//$this->load->view('Frontend/footer');
	}
	
	
	public function verify_registro(){
		$this->form_validation->set_rules('nombre', 'Username', 'required|trim|callback_verify_user');
    $this->form_validation->set_rules('pass', 'Password', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required');

		if ($this->form_validation->run() == FALSE)
		{
			$mensaje = array('mensaje' => 'Error en el registro.');
			//$this->load->view('Frontend/header');
			$this->load->view('registro_view', $mensaje);
			//$this->load->view('Frontend/footer');
		}
		else
		{
			$this->usuarios_model->add_usuario();
			$mensaje = array('mensaje' => 'El usuario se ha registrado correctamente.');
			//$this->load->view('Frontend/header');
			$this->load->view('registro_view', $mensaje);
			//$this->load->view('Frontend/footer');
		}
	}

	//comprueba si el usuario existe o no
	function verify_user($usuario){
		return !$this->usuarios_model->verify_user($usuario);
	}
}
?>