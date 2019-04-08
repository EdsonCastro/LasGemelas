<?php
Class Material extends CI_Model {

    function __construct() {
        $this->load->database();
    }

    function get_materiales() {
        return $this->db->query("SELECT * FROM Material")->result_array();
    }

    function borrar_material($id_material) {
        $this->db->query("DELETE FROM Material WHERE id = $id_material");
    }

    function crear_material($nuevo_material) {
        $this->db->query("INSERT INTO Material(nombre, cantidad, precio) VALUES ('$nuevo_material[nombre]', $nuevo_material[cantidad], $nuevo_material[precio])");
    }

    function get_material_id($id_material) {
        return $this->db->query("SELECT * FROM Material WHERE id= $id_material")->result_array()[0];
    }

    function modificar_material($nuevo_cambio, $id_material) {
        $this->db->query("UPDATE Material SET nombre = '$nuevo_cambio[nombre]', cantidad = $nuevo_cambio[cantidad], precio = $nuevo_cambio[precio] where id = $id_material");
    }
}
?>