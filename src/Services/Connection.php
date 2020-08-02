<?php

namespace Ronijan\Pagination\Services;

use mysqli;

class Connection
{
<<<<<<< HEAD
  protected $host;
  protected $username;
  protected $password;
  protected $dbName;

  public function __construct()
  {
    $this->host = 'localhost';
    $this->username = 'root';
    $this->password = '!@aA12345';
    $this->dbName = 'test';
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
=======
    protected $host;
    protected $username;
    protected $password;
    protected $dbName;

    /**
     * Connection constructor.
     */
    public function __construct()
    {
        $this->host = 'localhost';
        $this->username = 'root';
        $this->password = '';
        $this->dbName = 'db';
    }

    /**
     * @return false|mysqli
     */
    public function sql()
    {
        $connection = mysqli_connect($this->host, $this->username, $this->password, $this->dbName);

        if (mysqli_connect_errno())
            die("Failed to connect MySQL: " . mysqli_connect_error());

        return $connection;
    }

    /**
     * @return string
     */
    public function table()
    {
        return 'contacts';
    }
>>>>>>> 9fdf58024604e59e059d0bf505be4a6a64220f24
}
