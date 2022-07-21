<header>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="{{ route('dashboard') }}">Dashboard</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="{{ route('account') }}">Account <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        @if (Auth::check())
        <a class="nav-link" href="{{ route('logout') }}">Logout</a>    
      @endif
        
      </li>
  </div>
</nav>    
</header>