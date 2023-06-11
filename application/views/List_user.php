<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title><?= $page ?></title>

  <link href="<?= base_url('assets/css/style.css') ?>" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>

<body>
  <div class="wrapper">
    <nav id="sidebar" class="sidebar js-sidebar">
      <div class="sidebar-content js-simplebar">
        <a class="sidebar-brand" href="index.html">
          <span class="align-middle">Authorization App</span>
        </a>

        <ul class="sidebar-nav">
          <li class="sidebar-header">
            Pages Content
          </li>

          <li class="sidebar-item">
            <a class="sidebar-link" href="<?= base_url('Dasboard') ?>">
              <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
            </a>
          </li>

          <li class="sidebar-item active">
            <a class="sidebar-link" href="<?= base_url('Dasboard/list') ?>">
              <i class="align-middle" data-feather="list"></i> <span class="align-middle">List user</span>
            </a>
          </li>

          <li class="sidebar-header">
            Action
          </li>

          <li class="sidebar-item">
            <span class="sidebar-link">
              <i class="align-middle" data-feather="log-out"></i> <span class="align-middle" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#logoutModals">Log-out</span>
            </span>
          </li>
        </ul>
      </div>
    </nav>

    <div class="main">
      <nav class="navbar navbar-expand navbar-light navbar-bg">
        <a class="sidebar-toggle js-sidebar-toggle">
          <i class="hamburger align-self-center"></i>
        </a>

        <div class="navbar-collapse collapse">
          <ul class="navbar-nav navbar-align">
            <a class="nav-link d-none d-sm-inline-block" href="<?= base_url('Dasboard') ?>">
              <img src="<?= base_url('assets/img/profile_pictures/') . $user['picture'] ?>" class="avatar img-fluid rounded me-1" alt="Profile Pict" /> <span class="text-dark"><?= $user['name'] ?></span>
            </a>
          </ul>
        </div>
      </nav>

      <main class="content">
        <div class="container-fluid p-0">
          <h1 class="h3 mb-3"> <?= $page ?></h1>
          <div class="row">
            <div class="col">
              <div class="card mb-3">
                <div class="row">
                  <table class="table text-center">
                    <thead>
                      <tr>
                        <th scope="col">No</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php
                      $iteration = 1;
                      foreach ($listUser as $list) :
                      ?>
                        <tr>
                          <th><?= $iteration ?></th>
                          <td><?= $list['name'] ?></td>
                          <td><?= $list['email'] ?></td>
                        </tr>
                      <?php
                        $iteration++;
                      endforeach;
                      ?>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </main>
    </div>
  </div>

  <!-- Modal -->
  <div class="modal fade" id="logoutModals" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Log Out</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          are you sure you want to logout
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <a href="<?= base_url('auth/logout') ?>"><button type="button" class="btn btn-danger">Yes</button></a>
        </div>
      </div>
    </div>
  </div>

  <script src="<?= base_url('assets/js/script.js') ?>"></script>
</body>

</html>