  <!-- login page -->
  <section class="min-vh-100 m-auto" style="background-color: #9a618a;">
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col col-xl-10">
          <div class="card" style="border-radius: 1rem;">
            <?= $this->session->flashdata('message'); ?>
            <div class="row g-0">
              <div class="col-md-6 col-lg-5 d-none d-md-block m-auto">
                <img src="<?= base_url('assets/img/forgot.png') ?>" alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
              </div>
              <div class="col-md-6 col-lg-7 d-flex align-items-center">
                <div class="card-body p-4 p-lg-5 text-black">
                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                    <span class="h1 fw-bold mb-0">Authorization App</span>
                  </div>

                  <form action="<?= base_url('Auth/reset') ?>" method="post">
                    <div class="row">
                      <div class="form-outline mb-3 col">
                        <label class="form-label" for="oldpassword">Old Password</label>
                        <input type="password" id="oldpassword" name="old_password" class="form-control form-control-lg text-center" placeholder="*****<?= $hintspassword ?>" required />
                      </div>
                    </div>

                    <div class="row">
                      <div class="form-outline mb-3 col-12 col-md-6">
                        <label class="form-label" for="newPassword">New Password</label>
                        <input type="password" id="newPassword" name="newPassword" class="form-control form-control-lg" required />
                      </div>

                      <div class="form-outline mb-3 col-12 col-md-6">
                        <label class="form-label" for="comfirm">Comfirm New Password</label>
                        <input type="password" id="comfirm" name="comfirm" class="form-control form-control-lg" required />
                      </div>
                    </div>

                    <input name="email" value="<?= $email ?>" class="visually-hidden" />
                    <div class="pt-1 m-1 row">
                      <button class="btn btn-dark btn-lg btn-block" type="submit">Change Password</button>
                    </div>
                  </form>
                  <p class="mt-4 pb-lg-2" style="color: #393f81;">Back to <a href="<?= base_url('auth/login') ?>" style="color: #393f81;">Login</a></p>

                  <h5 class="fw-light mb-2 pb-3 fst-italic">** fill in the old password as true possible with the existing hints</h5>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- login page end -->