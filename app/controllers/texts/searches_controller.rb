class Texts::SearchesController < ApplicationController
  def index
    
    @texts = Text.where('title LIKE(?)', "%#{params[:title]}%")
    respond_to do |format|
      format.html { redirect_to :root }
      # ↓検索結果のデータをレスポンスするコード
      format.json { render json: @texts }
    end
  end
end