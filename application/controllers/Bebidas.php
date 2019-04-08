<?php

//USAR ESTE CONTROLADOR PARA LA PÁGINA DE GESTIÓN
class Bebidas extends CI_Controller 
	{
		function __construct()
		{
			parent::__construct();
			$this->load->library('form_validation');
			$this->load->helper("url");
			$this->load->helper(array('form','url'));
			$this->load->library('session');
		    $this->load->model('Bebida');
		}

		function index()
		{
			$datos_bebidas['clave'] = $this->Bebida->get_bebidas();
        	$this->load->view('listaBebidas', $datos_bebidas);
		}

		function ver_bebida()
    	{
    		$datos_bebidas['clave'] = $this->Bebida->get_bebidas();
        	$this->load->view('listaBebidas', $datos_bebidas);
		}

		function eliminar_bebida($id_bebida)
		{
			$this->Bebida->borrar_bebida($id_bebida);
			$datos_bebidas['clave'] = $this->Bebida->get_bebidas();
        	$this->load->view('listaBebidas', $datos_bebidas);
		}

		function nueva_bebida()
    	{
        	$this->load->view('form_bebida');
		}

		function crear_bebida()
    	{
    		$nueva_bebida = array('nombre'  => $this->input->post('nombre'),
                                  'alcohol' => $this->input->post('alcohol'),
                                  'precio'  => $this->input->post('precio'),
                              	  );

    		

    		if($nueva_bebida['nombre']!="")
    			$this->Bebida->crear_bebida($nueva_bebida);

    		$datos_bebidas['clave'] = $this->Bebida->get_bebidas();
    		$this->load->view('listaBebidas', $datos_bebidas);

        	
		}

		function modificar_bebida($id_bebida)
		{
			$bebida['clave'] = $this->Bebida->get_bebida_id($id_bebida);
			$this->load->view('form_cambio_bebida', $bebida);
		}

		function nuevo_cambio($id_bebida){
			$nuevo_cambio = array('nombre'  => $this->input->post('nombre'),
                                  'alcohol' => $this->input->post('alcohol'),
                                  'precio'  => $this->input->post('precio'),
                              	  );

			if($nuevo_cambio['nombre']!="")
				$this->Bebida->modificar_bebida($nuevo_cambio, $id_bebida);

			$datos_bebidas['clave'] = $this->Bebida->get_bebidas();
        	$this->load->view('listaBebidas', $datos_bebidas);
		}
	}
?>
