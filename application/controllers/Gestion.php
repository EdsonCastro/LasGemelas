<?php

//USAR ESTE CONTROLADOR PARA LA PÁGINA DE GESTIÓN
class Gestion extends CI_Controller 
	{
		function __construct()
		{
			parent::__construct();
			$this->load->library('form_validation');
			$this->load->helper("url");
			$this->load->helper(array('form','url'));
			$this->load->library('session');
		}

		function index()
		{
			$this->load->view('Admin');
		}
	}
?>