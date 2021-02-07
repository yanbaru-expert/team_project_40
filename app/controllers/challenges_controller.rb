class ChallengesController < ApplicationController
  def index
    @challenges = ["【条件分岐】旅行プログラムを作ろう！",
      "【メソッド】旅行プログラムを作ろう！",
      "【クラス】ドラクエ風プログラムを作ろう！",
      "【クラス】ToDoリストプログラムを作ろう！"
    ]
  end
end
