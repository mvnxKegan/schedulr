<?php
	class DB {

		private $_mysqli;
		private $_query;
		private $_results = array();
		private $_count = 0;
		
		public static $instance;
		
		public $logRecordData;
		public $logType;
				
		//instanciates the class for usage
		Public static function getInstance() {
			$GLOBAL = $GLOBALS;
			//Check for instance, else create an instance
			
			if(!isset(self::$instance)) {
				self::$instance = new DB();
			}
			
			return self::$instance;
		}
		public function __construct() {
			$GLOBAL = $GLOBALS;
			try{
				//Attempt to instanciate a connection to the DB
				$connection = $this->_mysqli = new mysqli($GLOBAL["config"]["setting_db_host"], $GLOBAL["config"]["setting_db_user"], $GLOBAL["config"]["setting_db_pass"], $GLOBAL["config"]["setting_db_database"]);
				if($connection->connect_error){
					//If connetion fails, kill connection and log error
					die();
					$this->writeToLog("ConnectionError");
				}
				else{ //If Connection successful, log in DB
					$this->writeToLog("Connection");
				}
			} catch(Exception $e){
				
			}
			
		}

		//Database Query Functions
		public function query($sql_query) {
			$GLOBAL = $GLOBALS;
			$this->_results = array();
			if($this->_query = $this->_mysqli->query($sql_query)) {
				while($row = $this->_query->fetch_object()) {
					$this->_results[] = $row;
				}
				$this->writeToLog("Other");
			}
			if(!$this->_query = $this->_mysqli->query($sql_query)) {
				$this->writeToLog("Error");
			}
			return $this;
		}

		//Return Query Results
		public function results() {
			$GLOBAL = $GLOBALS;
			
			return $this->_results;
		}
		public function count() {
			$GLOBAL = $GLOBALS;
			
			return $this->_count;
		}
		
		//Database Logging Functions
		public function writeToLog($logType) {
			$GLOBAL = $GLOBALS;
			
			if($logType === "Error"){ // Write to Error Log
				$logRecordData = "SQL State Error:". $this->_mysqli->sqlstate;
				$logRecordData .= " - Error Array: " . serialize($this->_mysqli->error_list);
				
				$logRecord = "Date & Time: " . date("Y-m-d h:i:sa") . " - " . $logRecordData;
				$logFile = fopen("engine/logs/errorLog.txt", "a") or die("Unable to open file!");
				fwrite($logFile, "\n". $logRecord);
				fclose($logFile);
			}
			if($logType === "Other"){ // Write to generic Log
				$logRecordData = "Transaction Information: ". $this->_mysqli->info;
				$logRecordData .= " - Warning Count: ". $this->_mysqli->warning_count;
				$logRecordData .= " - Query ID: ". $this->_mysqli->insert_id;
				$logRecordData .= " - Affected Rows: ". $this->_mysqli->affected_rows;
				
				$logRecord = "Date & Time: " . date("Y-m-d h:i:sa") . " - " . $logRecordData;
				$logFile = fopen("engine/logs/defaultLog.txt", "a") or die("Unable to open file!");
				fwrite($logFile, "\n". $logRecord);
				fclose($logFile);
			}
			if($logType === "Connection"){ // Log Successful Connections
				$logRecordData = "Database Connection Instanciated Successfully";
				
				$logRecord = "Date & Time: " . date("Y-m-d h:i:sa") . " - " . $logRecordData;
				$logFile = fopen("engine/logs/ConnectionLog.txt", "a") or die("Unable to open file!");
				fwrite($logFile, "\n". $logRecord);
				fclose($logFile);
			}
			if($logType === "ConnectionError"){ // Log Failed connections
				$logRecordData = "Connection Error:". $this->_mysqli->connect_error;
				
				$logRecord = "Date & Time: " . date("Y-m-d h:i:sa") . " - " . $logRecordData;
				$logFile = fopen("engine/logs/ConnectionLog.txt", "a") or die("Unable to open file!");
				fwrite($logFile, "\n". $logRecord);
				fclose($logFile);
			}

			if($logType === "Delete"){ // Log deletes from Database
			}
			if($logType === "Read"){ // Log Calls to data in Database
			}
			if($logType === "Insert"){ // Log data inserted into Database
			}

			if($logType === "CreateTable"){ // Log Calls to data in Database
			}
			if($logType === "AltTable"){ // Log Calls to data in Database
			}
			if($logType === "DropTable"){ // Log Calls to data in Database
			}
		}

	}
?>