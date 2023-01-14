<script>
  import '../app.sass';
  import { page } from '$app/stores';

  $: pathname = $page.url.pathname;
</script>

<nav class="navbar navbar-expand-lg navbar-dark bg-navbar mb-2">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">
      <img src="/logo.svg" alt="Logotipo do MDS Page" width="24" height="24" class="d-inline-block align-text-top" />
      MDS Page</a>
    <button
      class="navbar-toggler"
      type="button"
      data-bs-toggle="collapse"
      data-bs-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon" />
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" class:active="{pathname === '/'}" aria-current="page" href="/">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="https://github.com/mdssjc/mds-notes">Notes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="https://github.com/mdssjc/mds">Book</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="https://github.com/mdssjc">Github</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" class:active="{pathname === '/about'}" aria-current="page" href="/about">About</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<main class="content container-fluid">
  <slot />
</main>

<footer>
  <hr />
  Developed by Marcelo dos Santos :: 2023-2021
</footer>
