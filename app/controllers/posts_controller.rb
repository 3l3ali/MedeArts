class PostsController < ApplicationController

  before_action :set_post, only: [:edit, :update, :destroy]
  # def index

  # end

  # def show
  # end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    # @order = current_user.orders.new(order_params)

    # session[:items_ids].each { |item| @order.items << Item.find(item) }

    if @post.save
      redirect_to current_user
    else
      render :new
    end
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to root_path
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def set_post
    @post = current_user.posts.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def post_params
    params.require(:post).permit(:content)
  end
end
