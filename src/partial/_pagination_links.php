<?php if($totalPages > 1) { ?>
  <ul class="pagination pagination-sm justify-content-center">
    <!-- Previous Page -->
    <li class='page-item <?= ($page <= 1 ? 'disabled' : '')?>'>
      <a class='page-link' href='?page=<?= ($page>1 ? ($page-1) : 1)?>'> &#8249;&#8249; </a>
    </li>
    <!-- Numbers Pages -->
    <?php for($i=$first; $i<=$last; $i++) { ?>
      <li class='page-item <?= ($i == $page ? 'active' : '')?>'>
        <a class='page-link' href='?page=<?= $i;?>'><?= $i;?></a>
      </li>
    <?php } ?>
    <!-- Next Page -->
    <li class='page-item <?= ($page >= $totalPages ? 'disabled' : '')?>'>
      <a class='page-link' href='?page=<?= ($page < $totalPages ? ($page+1) : $totalPages)?>'> &#8250;&#8250; </a>
    </li>
  </ul>
<?php } ?>
