class MatelpagesController < ApplicationController
  def index
    @matelpages = Matelpage.order("created_at DESC").page(params[:page]).per(5)
  end

  def show
    @matelpage = Matelpage.find(params[:id])
    @comments = @matelpage.comments.includes(:user)
  end

  def new
  end

  def create
    Matelpage.create(country: matelpage_params[:country], city: matelpage_params[:city], image: matelpage_params[:image], text: matelpage_params[:text], user_id: current_user.id)
  end

  private
  def matelpage_params
    params.permit(:country, :city, :text, :image)
  end

  def id_params
    params.permit(:id)
  end

  def redirect_to_index
    redirect_to :action => "index" unless user_signed_in?
  end
end

