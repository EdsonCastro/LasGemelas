<?php

class contacto extends CI_Controller 
	{
		function __construct()
		{
			parent::__construct();
		}

		function index()
		{
			$this->load->view('head2');
			$this->load->view('contacto');
			$this->load->view('footer');
		}
	}

?>