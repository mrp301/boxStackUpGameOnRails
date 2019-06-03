class GameController < ApplicationController

  def index
    @score = Score.new
    @scores = Score.all
  end

  def create
    @score = Score.new(create_params)
    # インスタンスの保存に成功した場合の処理
    if @score.save
      flash[:success] = "ユーザを登録しました"
      redirect_to '/game/index'

    # インスタンスの保存に失敗した場合の処理
    else
      flash[:danger] = "ユーザの登録に失敗しました"
      render :new
    end
  end

  def list
    @scores = Score.all
  end

  private
  # post取得
  def create_params
    params.require(:score).permit(:user_name, :score)
  end

end
