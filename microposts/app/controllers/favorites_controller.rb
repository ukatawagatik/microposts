class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:favopost_id])
    current_user.favo(micropost)
    flash[:success] = 'ポストをお気に入りに追加しました。'
    redirect_to :back
  end

  def destroy
    micropost = Micropost.find(params[:favopost_id])
    current_user.unfavo(micropost)
    flash[:success] = 'ポストのお気に入りを解除しました。'
    redirect_to :back
  end
  
end
