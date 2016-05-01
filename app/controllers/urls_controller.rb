class UrlsController < ApplicationController

  def create
    @url = Url.new(user_params)
    @url.save
    redirect_to root_path(id: @url)
  end

  def index
  end

  def show
    @url = Url.find(params[:id])
    redirect_to @url.name
  end

  private

  def user_params
    params.permit(:name)
  end

end
