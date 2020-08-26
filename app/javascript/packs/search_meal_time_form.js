$(function () {
  // ボタンを押すと、formを切り替える
  $('#check-day').on('click', () => {
    $("#day").show();
    $("#week").hide();
    $("#month").hide();
  });

  $('#check-week').on('click', () => {
    $("#day").hide();
    $("#week").show();
    $("#month").hide();
  });

  $('#check-month').on('click', () => {
    $("#day").hide();
    $("#week").hide();
    $("#month").show();
  });

  $('.calendar-modal').on('click', () => {
    $('.ui.modal').modal('show');
  });

  // クリックしたボタンに色を付ける
  // id='meal-time-buttons'レベルのコンテナを取得
  var header = document.getElementById('meal-time-buttons');
  // headerコンテナ内のclass='meal-time-button'を持つ要素を取得
  var btns = header.getElementsByClassName("meal-time-button");

  for (var i = 0; i < btns.length; i++) {
    btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("meal-time-button ui button olive");
    current[0].className = current[0].className.replace(" olive", "");
    this.className += " olive";
    });
  }

  // datetimepicker
  $('#datetimepicker4').datetimepicker({
    format: 'L'
  });

  $('#datetimepicker11').datetimepicker({
      viewMode: 'years',
      format: 'MM/YYYY'
  });
});