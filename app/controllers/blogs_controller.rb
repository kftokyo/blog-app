class BlogsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @blogs = Blog.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @d = Date.today
  end

  def create
    Blog.create(title: blog_params[:title], text: blog_params[:text], user_id: current_user.id)
  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def blog_params
    params.permit(:title, :text)
  end

end
