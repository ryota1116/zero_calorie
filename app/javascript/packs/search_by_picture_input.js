$(function () {
  $("#search_by_picture input[type=file]").on('change', function (e) {
    console.log(e.target.files);
    if (e.target.files[0].size > 0) {
      $(this).parents('form').submit();
    }
  });
});