<?php require_once 'vendor/autoload.php';

use Ronijan\Pagination\Services\Helpers;
use Ronijan\Pagination\Pagination;

$helpers = new Helpers;
$paginate = new Pagination;


$limit = 4;
$adjacent = 2;

$totalPages = $paginate->totalRows($limit);
$page = $paginate->getPage();
$offset = $paginate->getOffset($limit);
$result = $paginate->rows($offset, $limit);
$first = $paginate->firstPage($totalPages, $adjacent, $page);
$last = $paginate->lastPage($totalPages, $adjacent, $page);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap pagination in PHP and MySQL</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="src/assets/css/bootstrap.min.css">
</head>
<body>

<div class="container mtb-margin-top">
    <div class="row">
        <div class="col-md-12">
            <h5 class="mt-5 mb-5">Bootstrap pagination in PHP and MySQL</h5>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">

            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">URL</th>
                    <th scope="col">Message</th>
                    <th scope="col">Created at</th>
                </tr>
                </thead>
                <tbody>

                <?php if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_object($result)) {
                        echo '<tr>
                <th scope="row">' . $row->id . '</th>
                <td>' . $row->name . '</td>
                <td>' . $row->email . '</td>
                <td>' . $helpers->limitWords($row->url, 3) . '</td>
                <td>' . $helpers->limitWords($row->message, 5) . '</td>
                <td>' . $row->created_at . '</td>
                </tr>';
                    }
                } ?>

                </tbody>
            </table>

            <?php if ($totalPages > 1) { ?>
                <ul class="pagination pagination-sm justify-content-center">
                    <!-- Previous Page -->
                    <li class='page-item <?= ($page <= 1 ? 'disabled' : '') ?>'>
                        <a class='page-link' href='?page=<?= ($page > 1 ? ($page - 1) : 1) ?>'> &#8249;&#8249; </a>
                    </li>
                    <!-- Numbers Pages -->
                    <?php for ($i = $first; $i <= $last; $i++) { ?>
                        <li class='page-item <?= ($i == $page ? 'active' : '') ?>'>
                            <a class='page-link' href='?page=<?= $i; ?>'><?= $i; ?></a>
                        </li>
                    <?php } ?>
                    <!-- Next Page -->
                    <li class='page-item <?= ($page >= $totalPages ? 'disabled' : '') ?>'>
                        <a class='page-link' href='?page=<?= ($page < $totalPages ? ($page + 1) : $totalPages) ?>'>
                            &#8250;&#8250; </a>
                    </li>
                </ul>
            <?php } ?>

        </div>
    </div>
</div>

<!-- scripts -->
<script src="src/assets/js/jquery.min.js"></script>
<script src="src/assets/js/bootstrap.min.js"></script>

</body>
</html>
