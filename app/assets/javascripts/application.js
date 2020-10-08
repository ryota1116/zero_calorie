// Loads all Semantic javascripts
// = require semantic-ui

// ドロップダウンを使用するためのコード
// $(function(){
//   $('.ui.dropdown').dropdown();
// })

// ドロップダウンメニューを選択し、ページが遷移した後も、ドロップダウンが有効な状態にする
// https://stackoverflow.com/questions/59734369/semantic-ui-dropdown-menu-functionality-not-working-in-rails-6
$(document).on("turbolinks:load", () => $(".ui.dropdown").dropdown());