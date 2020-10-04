// 画像検索用モーダルの表示
$(function () {
  $("#search-by-picture-form-modal").on("click", () => {
    $('.ui.modal.search-by-picture').modal('show');
    // モーダル内のプレビュー画像を削除(指定したDOM要素の”子要素のみ”を削除する。)
    $("#search-picture-preview").empty();
  });
});

// 画像プレビュー
$(document).on("turbolinks:load", function () {
  // 画像が添付されるたびにイベント発火
  $("#meal_picture_search_picture").on("change", function (e) {
    // プレビュー画像を削除(指定したDOM要素の”子要素のみ”を削除する。)
    $("#search-picture-preview").empty();

    var files = e.target.files;
    var d = new $.Deferred().resolve();
    $.each(files, function (i, file) {
      d = d.then(function () {
        return previewImage(file);
      });
    });
  });

  var previewImage = function (imageFile) {
    var reader = new FileReader();
    var img = new Image();
    var def = $.Deferred();
    reader.onload = function (e) {
      // プレビュー画像を表示
      $("#search-picture-preview").append(img);
      img.src = e.target.result;
      def.resolve(img);
    };
    reader.readAsDataURL(imageFile);
    return def.promise();
  };
});
