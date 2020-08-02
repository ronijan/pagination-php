<?php

namespace Ronijan\Pagination;

use mysqli_result;
use Ronijan\Pagination\Services\Connection;


class Pagination
{
    /**
     * @return Connection
     */
    private function database()
    {
        return new Connection;
    }

    /**
     * @param $limit
     * @return false|float
     */
    public function totalRows($limit)
    {
        $database = $this->database();
        $con = $database->sql();
        $table = $database->table();
        $sql = "SELECT COUNT(*) 'totalRows' FROM $table";
        $res = mysqli_fetch_object(mysqli_query($con, $sql));
        $totalRows = $res->totalRows;

        return ceil($totalRows / $limit);
    }

    /**
     * @return int|mixed
     */
    public function getPage()
    {
        if (isset($_GET['page']) && $_GET['page'] != "") {
            $page = $_GET['page'];
        } else {
            $page = 1;
        }

        return $page;
    }

    /**
     * @param $offset
     * @param $limit
     * @return bool|mysqli_result
     */
    public function rows($offset, $limit)
    {
        $database = $this->database();
        $con = $database->sql();
        $table = $database->table();
        $query = "select * from $table limit $offset, $limit";

        return mysqli_query($con, $query);
    }

    /**
     * @param $limit
     * @return float|int
     */
    public function getOffset($limit)
    {
        if (isset($_GET['page']) && $_GET['page'] != "") {
            $page = $_GET['page'];
            $offset = $limit * ($page - 1);
        } else {
            $offset = 0;
        }

        return $offset;
    }

    /**
     * @param $totalPages
     * @param $adjacent
     * @param $page
     * @return float|int
     */
    public function firstPage($totalPages, $adjacent, $page)
    {
        if ($totalPages <= (1 + ($adjacent * 2))) {
            $firstPage = 1;
        } else {
            if (($page - $adjacent) > 1) {
                if (($page + $adjacent) < $totalPages) {
                    $firstPage = ($page - $adjacent);
                } else {
                    $firstPage = ($totalPages - (1 + ($adjacent * 2)));
                }
            } else {
                $firstPage = 1;
            }
        }

        return $firstPage;
    }

    /**
     * @param $totalPages
     * @param $adjacent
     * @param $page
     * @return float|int
     */
    public function lastPage($totalPages, $adjacent, $page)
    {
        if ($totalPages <= (1 + ($adjacent * 2))) {
            $lastPage = $totalPages;
        } else {
            if (($page - $adjacent) > 1) {
                if (($page + $adjacent) < $totalPages) {
                    $lastPage = ($page + $adjacent);
                } else {
                    $lastPage = $totalPages;
                }
            } else {
                $lastPage = (1 + ($adjacent * 2));
            }
        }

        return $lastPage;
    }
}
