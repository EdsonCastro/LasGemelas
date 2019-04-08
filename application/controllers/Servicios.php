<?php

class Servicios extends CI_Controller 
	{
		function __construct()
		{
			parent::__construct();
		}

		function index()
		{
			$this->load->view('head2');
			$this->load->view('menu');
			$this->load->view('footer');
		}

		function boda()
		{
			$this->load->view('head2');
			$this->load->view('boda');
			$this->load->view('footer');
		}

		function aperitivos()
		{
			$this->load->view('head2');
			$this->load->view('aperitivos');
			$this->load->view('footer');
		}

		function ensalada()
		{
			$this->load->view('head2');
			$this->load->view('ensalada');
			$this->load->view('footer');
		}
	}

?>