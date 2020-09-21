$(function () {
  // datetimepicker
  $('#datetimepicker4').datetimepicker({
    format: 'L'
  });

  $('#datetimepicker11').datetimepicker({
      viewMode: 'years',
      format: 'MM/YYYY'
  });
});

// カレンダーの切り替え
$(function () {
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
});

// カレンダーをモーダルで表示
$('.calendar-modal').on('click', () => {
  $('.ui.modal').modal('show');
});
