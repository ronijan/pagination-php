<?php

namespace Ronijan\Pagination\Services;

class Connection
{
  protected $host;
  protected $username;
  protected $password;
  protected $dbName;

  public function __construct()
  {
    $this->host = 'localhost';
    $this->username = 'root';
    $this->password = '';
    $this->dbName = 'db';
  }

  public function sql()
  {
    $con = mysqli_connect($this->host, $this->username, $this->password, $this->dbName);

    if(mysqli_connect_errno($con)) die("Failed to connect MySQL: " .mysqli_connect_error());

    return $con;
  }

  public function table()
  {
    return 'contacts';
  }
}
