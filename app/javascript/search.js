$(document).on('turbolinks:load', function () {
  $(function () {
    $('.js-text_field').on('keyup', function () {
      // キーボードを入力したタイミングで以下の処理を実行する
      var title = $.trim($(this).val());

      $.ajax({
        type: 'GET', // リクエストのタイプ
        url: '/texts/searches', // リクエストを送信するURL
        data: ("title=" + title), // サーバーに送信するデータ
        dataType: 'json' // サーバーから返却される型
      })
      .done(function(data) {
        $('.row div').remove();
        $(data).each(function(i,text) {
          $('.row').append(
            `<div class="col-12 col-md-6 col-lg-4 text-card-container">
              <div class="card content-card border-dark mb-3">
                <a target="_blank" rel="noopenernoreferrer" href="/texts/${text.id}"></a>
                  <img class="card-img-top" src="https://d5izmuz0mcjzz.cloudfront.net/texts/no_image.jpg" width="100%">
                  <div class="card-body text-dark text-card-body">
                    <p class="card-text text-title">${text.title}</p>
                    <p>【${text.genre}】</p>
                  </div>
                </a>
              </div>
            </div>`
          );
        });
      });
    });
  });
});