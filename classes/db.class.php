<?php
require("config/constants.php");

class db {
	private $server = DB_SERVER;
	private $user   = DB_USER;
	private $passwd = DB_PASSWD;
	private $dbname = DB_NAME;

	function __construct() {
		$conn = mysql_connect($this->server, $this->user, $this->passwd);
		mysql_select_db($this->dbname);
	}

	public function execute($sql) {
		$res = mysql_query($sql);

		if ($res && mysql_num_rows($res) > 0) {
			while ($line = mysql_fetch_assoc($res))
				$arr_result[] = $line;
			return $arr_result;
		} else
			return false;
	}
}
?>