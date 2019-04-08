<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Usuarios_model extends CI_Model {
	public function __construct(){
		parent::__construct();
	}
	
	//Comprueba si el usuario existe o no
	public function verify_user($user){
		$consulta = $this->db->get_where('usuario', array('nombre' => $user));
		$fila = $consulta->row();
		return isset($fila);
	}

	//añade un usuario
	public function add_usuario(){

		$pass = $this->input->post('pass' , TRUE );
		$hash = password_hash($pass, PASSWORD_DEFAULT);

		$this->db->insert('usuario' , array(
			'nombre' => $this->input->post('nombre' , TRUE ), 
			'pass' => $hash, 
			'email' => $this->input->post('email' , TRUE )));
	}
	
	//verifica usuario y contraseña
	public function verify_sesion(){

		$consulta = $this->db->get_where('usuario' , array('nombre' => $this->input->post('nombre' , TRUE )));
		$fila = $consulta->row();
		$hash = $fila->pass;

		$pass = $this->input->post('pass' , TRUE);

		return password_verify($pass,$hash);
	}
}
?>