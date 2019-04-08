<?php
Class Bebida extends CI_Model
{

    function __construct(){
        $this->load->database();
    }

    function get_bebidas()
    {
        return $this->db->query("SELECT * FROM Bebida")->result_array();
    }

    function borrar_bebida($id_bebida)
    {
        $this->db->query("DELETE FROM Bebida WHERE id = $id_bebida");
    }

    function crear_bebida($nueva_bebida)
    {
        $this->db->query("INSERT INTO Bebida(nombre, contiene_alcohol, precio) VALUES ('$nueva_bebida[nombre]', $nueva_bebida[alcohol], $nueva_bebida[precio])");
    }

    function get_bebida_id($id_bebida)
    {
        return $this->db->query("SELECT * FROM Bebida WHERE id= $id_bebida")->result_array()[0];
    }

    function modificar_bebida($nuevo_cambio, $id_bebida)
    {
        $this->db->query("UPDATE Bebida SET nombre = '$nuevo_cambio[nombre]', contiene_alcohol = $nuevo_cambio[alcohol], precio = $nuevo_cambio[precio] where id = $id_bebida");
    }
}
?>