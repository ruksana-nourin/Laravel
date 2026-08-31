@extends("layouts.basic")

@section("content")

    <!-- Main Content -->
  <main>
    <div class="container">
      <div class="row min-vh-100 justify-content-center align-items-center">

        <div class="col-md-8 col-lg-6 text-center">

          <div class="error-icon mb-3">
            🔍
          </div>

          <h1 class="error-code">
            404
          </h1>

          <h2 class="mt-4">
            Page Not Found
          </h2>

          <p class="text-muted mb-4">
            Sorry, the page you're looking for doesn't exist
            or has been moved.
          </p>
          <x-button href="/" class="btn-outline-primary">
            Go Back Home
          </x-button>

        </div>

      </div>
    </div>
  </main>


@endsection