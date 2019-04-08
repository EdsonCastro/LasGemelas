<?php

class Equipo extends CI_Controller 
	{
		function __construct()
		{
			parent::__construct();
		}

		function index()
		{
			$this->load->view('head2');
			$this->load->view('equipo');
			$this->load->view('footer');
		}
	}

?>