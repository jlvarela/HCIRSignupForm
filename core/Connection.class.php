<?php
class Connection
{
	private static $instance;
	private static $db_selected;
	private $link;
	private $lastID;
	
	public function __construct() {
		$host = "localhost";
		$username = "admin";
		$password = "admin";
		$database = "hcir";
		
		$this->link = mysql_connect($host, $username, $password) or die("Cannot connect to the database: ". mysql_error());
        self::$db_selected = mysql_select_db($database, $this->link) or die ('Cannot connect to the database: ' . mysql_error());

	}
	
	public static function getInstance()
    {
        if (!isset(self::$instance)) {
            $className = __CLASS__;
            self::$instance = new $className;
        }
        return self::$instance;
    }
	
	public function commit($query)
	{	
		try{
			$results = mysql_query($query) or die(" ". mysql_error());
			$this->lastID = mysql_insert_id();
			return $results;
		}
		catch(Exception $e){
			//echo $e->getMessage();
			//exit();
		}
	}
	
	public function getLastID()
	{
		return $this->lastID;
	}     
	   
	public function __wakeup()
	{
		$this->connect();
	}
	
	public function close()
	{
		mysql_close($link);
	}

	/*public function __sleep()
	{
		return array('host', 'username', 'password', 'db');
	}*/
		
 }
?>
