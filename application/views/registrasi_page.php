  <!-- login page -->
  <section style="background-color: #9a618a;">
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col col-xl-10">
          <div class="card" style="border-radius: 1rem;">
            <div class="row g-0">
              <div class="col-md-6 col-lg-5 d-none d-md-block m-auto">
                <img src="<?= base_url('assets/img/register.png') ?>" alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
              </div>
              <div class="col-md-6 col-lg-7 d-flex align-items-center">
                <div class="card-body p-4 p-lg-5 text-black">
                  <?= form_open_multipart('Auth/register'); ?>
                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                    <span class="h1 fw-bold mb-0">Authorization App</span>
                  </div>

                  <h5 class="fw-light mb-2 pb-3" style="letter-spacing: 1px;">Create your account</h5>

                  <div class="form-outline mb-3">
                    <label class="form-label" for="email">Email address</label>
                    <input type="email" id="email" name="email" class="form-control form-control-lg" required />
                  </div>

                  <div class="row">
                    <div class="col-12 col-md-6">
                      <div class="form-outline mb-3">
                        <label class="form-label" for="name">Full Name</label>
                        <input type="text" id="name" name="name" class="form-control form-control-lg" required />
                      </div>
                    </div>
                    <div class="col-12 col-md-6">
                      <div class="custom-file form-outline mb-3">
                        <label class="custom-file-label mb-2 mb-md-3" for="foto">Upload foto</label>
                        <input type="file" class="custom-file-input" id="foto" name="picture">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-12 col-md-6">
                      <div class="form-outline mb-3">
                        <label class="form-label" for="password">Password</label>
                        <input type="password" id="password" name="password" class="form-control form-control-lg" required />
                      </div>
                    </div>
                    <div class="col-12 col-md-6">
                      <div class="form-outline mb-3">
                        <label class="form-label" for="comfirm">Comfirm Password</label>
                        <input type="password" id="comfirm" name="comfirm" class="form-control form-control-lg" required />
                      </div>
                    </div>
                    <div class="col-12 mb-3">
                      <?= form_error('password', '<small class="text-danger pl-1">', '</small>') ?>
                      <?= form_error('name', '<small class="text-danger pl-1">', '</small>') ?>
                      <?= form_error('email', '<small class="text-danger pl-1">', '</small>') ?>
                    </div>
                  </div>

                  <div class="pt-1 mb-3 row">
                    <button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
                  </div>
                  </form>
                  <p class="mb-5 pb-lg-2" style="color: #393f81;">Have an account <a href="<?= base_url('auth') ?>" style="color: #393f81;">Login</a></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- login page end -->