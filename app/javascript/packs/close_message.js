$(function () {
  $(".flash_message .close.icon").on("click", () => {
    $('.flash_message').fadeOut("slow");
  });
});

$(function () {
  $(".error_message .close.icon").on("click", () => {
    $('.error_message').fadeOut("slow");
  });
});