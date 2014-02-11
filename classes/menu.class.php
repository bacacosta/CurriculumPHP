<?php
require_once("db.class.php");

class menu {
	private $db;

	function __construct() {
		$this->db = new db();
	}

	public function getCollection() {
		$sql  = "SELECT description, link ";
		$sql .= "FROM menu ";
		$sql .= "WHERE locale = 'en'";

		return $this->db->execute($sql);
	}
}
?>