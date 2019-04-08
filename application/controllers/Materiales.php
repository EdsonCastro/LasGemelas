<?php
class Materiales extends CI_Controller {
	function __construct() {
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->helper("url");
		$this->load->helper(array('form','url'));
		$this->load->library('session');
	    $this->load->model('Material');
	}

	function index() {
		$datos_materiales['clave'] = $this->Material->get_materiales();
    	$this->load->view('listaMateriales', $datos_materiales);
	}

	function ver_material() {
		$datos_materiales['clave'] = $this->Material->get_materiales();
    	$this->load->view('listaMateriales', $datos_materiales);
	}

	function eliminar_material($id_material) {
		$this->Material->borrar_material($id_material);
		$datos_materiales['clave'] = $this->Material->get_materiales();
    	$this->load->view('listaMateriales', $datos_materiales);
	}

	function nuevo_material() {
    	$this->load->view('form_material');
	}

	function crear_material() {
		$nuevo_material = array('nombre'  => $this->input->post('nombre'),
                              'cantidad' => $this->input->post('cantidad'),
                              'precio'  => $this->input->post('precio'),
                          	  );

		

		if($nuevo_material['nombre']!="")
			$this->Material->crear_material($nuevo_material);

		$datos_materiales['clave'] = $this->Material->get_materiales();
		$this->load->view('listaMateriales', $datos_materiales);

    	
	}

	function modificar_material($id_material) {
		$material['clave'] = $this->Material->get_material_id($id_material);
		$this->load->view('form_cambio_material', $material);
	}

	function nuevo_cambio($id_material) {
		$nuevo_material = array('nombre'  => $this->input->post('nombre'),
                              'cantidad' => $this->input->post('cantidad'),
                              'precio'  => $this->input->post('precio'),
                          	  );

		
		if($nuevo_material['nombre']!="")
			$this->Material->modificar_material($nuevo_material, $id_material);

		$datos_materiales['clave'] = $this->Material->get_materiales();
		$this->load->view('listaMateriales', $datos_materiales);
	}
}
?>
