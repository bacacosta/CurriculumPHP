<?php
require_once("db.class.php");

class experience {
	private $db;

	function __construct() {
		$this->db = new db();
	}

	public function getCollection() {
		$sql  = "";
		$sql .= "";

		return $this->db->execute($sql);
	}
}
?>