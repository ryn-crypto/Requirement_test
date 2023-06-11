  <!-- login page -->
  <section class="vh-100" style="background-color: #9A616D;">
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col col-xl-10">
          <div class="card" style="border-radius: 1rem;">
            <?= $this->session->flashdata('message'); ?>
            <div class="row g-0">
              <div class="col-md-6 col-lg-5 d-none d-md-block m-auto">
                <img src="<?= base_url('assets/img/login.png') ?>" alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
              </div>
              <div class="col-md-6 col-lg-7 d-flex align-items-center">
                <div class="card-body p-4 p-lg-5 text-black">
                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                    <span class="h1 fw-bold mb-0">Authorization App</span>
                  </div>
                  <h5 class="fw-light mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                  <form action="<?= base_url('auth') ?>" method="post">
                    <div class="form-outline mb-4">
                      <label class="form-label" for="email">Email address</label>
                      <input type="email" id="email" name="email" class="form-control form-control-lg" required />
                    </div>

                    <div class="form-outline mb-4">
                      <label class="form-label" for="password">Password</label>
                      <input type="password" id="password" name="password" class="form-control form-control-lg" required />
                    </div>

                    <div class="pt-1 mb-4 row">
                      <button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
                    </div>
                  </form>
                  <a class="small text-muted" href="<?= base_url('auth/forgot_password') ?>">Forgot password?</a>
                  <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="<?= base_url('auth/register') ?>" style="color: #393f81;">Register here</a></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- login page end -->