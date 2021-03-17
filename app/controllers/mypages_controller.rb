class MypagesController < ApplicationController
  def index
    @texts = Text.all

    # ログインユーザーの「読破済み」を取得
    @userReadText = current_user.read_texts
  end
  
end
