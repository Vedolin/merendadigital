<template>
  <div>
    <ul class="list-group">
        <li class="list-group-item text-right">
            <button id="demo-menu-lower-left" class="mdl-button mdl-js-button mdl-button--icon">
                <i class="material-icons">more_vert</i>
            </button>

            <ul class="mdl-menu mdl-menu--bottom-left mdl-js-menu mdl-js-ripple-effect" for="demo-menu-lower-left">
                <li class="mdl-menu__item">Some Action</li>
                <li class="mdl-menu__item mdl-menu__item--full-bleed-divider">Another Action</li>
                <li disabled class="mdl-menu__item">Disabled Action</li>
                <li class="mdl-menu__item">Yet Another Action</li>
            </ul>
            <strong>Criar Comentário</strong>
        </li>
        <li class="list-group-item">
            <i class="material-icons">mood</i>
            <a href="#">Elogio</a>
        </li>
        <li class="list-group-item">
            <a href="#">Crítica</a>
        </li>
        <li class="list-group-item">
            <a href="#">Sugestão</a>
        </li>
        <li class="list-group-item">
            <i class="material-icons text-right">warning</i>
            <a href="#">Denúncia</a>
        </li>
    </ul>

  </div>
</template>

<script>
  export default {
  }
</script>

<style scoped>

</style>
