<?php

namespace Ronijan\Pagination\Services;

use mysqli;

class Connection
{
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
}
