<?php

require_once 'vendor/autoload.php';

use Ronijan\Pagination\Services\Helpers;
$helpers = new Helpers;

// get variables
require_once 'src/partial/_pagination_vars.php';

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

        <div class="table-responsive fadeout mb-5">
          <table class="table table-striped table-hover">
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

              <?php if(mysqli_num_rows($result) > 0) {
                while($row = mysqli_fetch_object($result)) {
                  echo '<tr>
                  <th scope="row">'.$row->id.'</th>
                  <td>'.$row->name.'</td>
                  <td>'.$row->email.'</td>
                  <td>'.$helpers->limitWords($row->url, 3).'</td>
                  <td>'.$helpers->limitWords($row->message, 5).'</td>
                  <td>'.$row->created_at.'</td>
                  </tr>';
                }
              } ?>

            </tbody>
          </table>
        </div>

        <!-- add bootstrap links -->
        <?php require_once 'src/partial/_pagination_links.php'; ?>

      </div>
    </div>
  </div>

  <!-- scripts -->
  <script src="src/assets/js/jquery.min.js"></script>
  <script src="src/assets/js/bootstrap.min.js"></script>

</body>
</html>
