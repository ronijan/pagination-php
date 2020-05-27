<?php namespace Ronijan\Pagination;

use Ronijan\Pagination\Services\Connection;


class Pagination
{
	private function database()
	{
		return new Connection;
	}

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

	public function getPage()
	{
		$page = '';

		if(isset($_GET['page']) && $_GET['page'] != "") {
			$page = $_GET['page'];
		} else {
			$page = 1;
		}

		return $page;
	}

	public function rows($offset, $limit)
	{
		$database = $this->database();
		$con = $database->sql();
		$table = $database->table();
		$query  = "select * from $table limit $offset, $limit";

		return mysqli_query($con, $query);
	}

	public function getOffset($limit)
	{
		$offset = '';

		if(isset($_GET['page']) && $_GET['page'] != "") {
			$page = $_GET['page'];
			$offset = $limit * ($page-1);
		} else {
			$offset = 0;
		}

		return $offset;
	}

	public function firstPage($totalPages, $adjacents, $page )
	{
		$firstPage = '';

		if($totalPages <= (1+($adjacents * 2))) {
			$firstPage = 1;
		} else {
			if(($page - $adjacents) > 1) {
				if(($page + $adjacents) < $totalPages) {
					$firstPage = ($page - $adjacents);
				} else {
					$firstPage = ($totalPages - (1+($adjacents*2)));
				}
			} else {
				$firstPage = 1;
			}
		}

		return $firstPage;
	}

	public function lastPage($totalPages, $adjacents, $page)
	{
		$lastPage = '';

		if($totalPages <= (1+($adjacents * 2))) {
			$lastPage   = $totalPages;
		} else {
			if(($page - $adjacents) > 1) {
				if(($page + $adjacents) < $totalPages) {
					$lastPage   = ($page + $adjacents);
				} else {
					$lastPage   = $totalPages;
				}
			} else {
				$lastPage   = (1+($adjacents * 2));
			}
		}

		return $lastPage;
	}
}
