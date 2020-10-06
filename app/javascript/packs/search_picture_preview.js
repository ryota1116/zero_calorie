//////////////////////// 案1 ////////////////////////////////
// $(document).on("turbolinks:load", function () {
//   $(function () {
//     $("#search-by-picture-modal-button").on("click", () => {
//       $('#search-by-picture-modal').modal('show');
//       // モーダル内のプレビュー画像を削除(指定したDOM要素の”子要素のみ”を削除する。)
//       $("#search-picture-preview").empty();
//     });
//   });
// });

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

//////////////////////// 案1 ////////////////////////////////
// // ディスプレイ
// let width = $(window).width();
// let height = $(window).height();
// // フード追加モーダル
// let foodWeight = $("#search-by-picture-modal").outerWidth();
// let foodHeight = $("#search-by-picture-modal").outerHeight();
// //取得した値をcssに追加する
// $("#search-by-picture-modal").css({
//   "left": ((width- foodWeight)/2) + "px",
//   "top": ((height - foodHeight)/2) + "px"
// });

// 画像検索用モーダルの表示
// クリックイベントの判定
// https://to-benefit7.com/outofrange-popup-close/
$(document).on('click', function(e) {
	// クリックされた場所の判定
	if(!$(e.target).closest('#search-by-picture-modal').length && !$(e.target).closest('#search-by-picture-modal-button').length){
    $('#search-by-picture-modal').fadeOut();
    $("#search-picture-preview").empty(); // モーダル内のプレビュー画像を削除(指定したDOM要素の”子要素のみ”を削除する。)
	} else if($(e.target).closest('#search-by-picture-modal-button').length){
		// ３．ポップアップの表示状態の判定
		if($('#search-by-picture-modal').is(':hidden')){
      $('#search-by-picture-modal').fadeIn();
      $("#search-picture-preview").empty(); // モーダル内のプレビュー画像を削除(指定したDOM要素の”子要素のみ”を削除する。)
		}else{
      $('#search-by-picture-modal').fadeOut();
      $("#search-picture-preview").empty(); // モーダル内のプレビュー画像を削除(指定したDOM要素の”子要素のみ”を削除する。)
		}
	}
});
