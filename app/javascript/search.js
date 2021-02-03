$(function () {
  $('.js-text_field').on('keyup', function () {
    // キーボードを入力したタイミングで以下の処理を実行する
    var title = $.trim($(this).val());
  });
});
