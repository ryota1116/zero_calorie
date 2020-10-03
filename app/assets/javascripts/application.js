// Loads all Semantic javascripts
//= require semantic-ui

// ドロップダウンを使用するためのコード
// $(function(){
//   $('.ui.dropdown').dropdown();
// })

// ドロップダウンメニューを選択し、ページが遷移した後も、ドロップダウンが有効な状態にする
$(document).on("turbolinks:load", () => $(".ui.dropdown").dropdown());