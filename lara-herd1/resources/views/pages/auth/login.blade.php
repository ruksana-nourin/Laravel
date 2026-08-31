@extends("layouts.basic")

@section("content")

<!-- Main Content -->
  <main>
    <div class="container">
      <div class="row justify-content-center align-items-center min-vh-100">

        <div class="col-12 col-sm-8 col-md-6 col-lg-4">

          <div class="card main-card">
            <div class="card-body p-4">

              <h2 class="text-center mb-4">Login</h2>

              <form>

                <div class="mb-3">
                  <label for="email" class="form-label">
                    Email address
                  </label>

                  <input
                    type="email"
                    class="form-control"
                    id="email"
                    placeholder="Enter your email"
                    required
                  >
                </div>

                <div class="mb-3">
                  <label for="password" class="form-label">
                    Password
                  </label>

                  <input
                    type="password"
                    class="form-control"
                    id="password"
                    placeholder="Enter your password"
                    required
                  >
                </div>

                <div class="mb-3 form-check">
                  <input
                    type="checkbox"
                    class="form-check-input"
                    id="remember"
                  >

                  <label class="form-check-label" for="remember">
                    Remember me
                  </label>
                </div>

                <button type="submit" class="btn btn-primary w-100">
                  Login
                </button>

                <div class="text-center mt-3">
                  <a href="#" class="text-decoration-none">
                    Forgot Password?
                  </a>
                </div>

                <hr>

                <p class="text-center mb-0">
                  Don't have an account?
                  <a href="#" class="text-decoration-none">
                    Register
                  </a>
                </p>

              </form>

            </div>
          </div>

        </div>
      </div>
    </div>
  </main>

          
@endsection
