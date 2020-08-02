<?php

use Ronijan\Pagination\Pagination;

$paginate = new Pagination;


$limit = 6;
$adjacents = 2;

$totalPages = $paginate->totalRows($limit);
$page = $paginate->getPage();
$offset = $paginate->getOffset($limit);
$result = $paginate->rows($offset, $limit);
$first = $paginate->firstPage($totalPages, $adjacents, $page);
$last = $paginate->lastPage($totalPages, $adjacents, $page);
