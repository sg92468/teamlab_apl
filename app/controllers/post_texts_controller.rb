class PostTextsController < ApplicationController
  def new
    @post_text = PostText.new
  end

  def create
    @post_text = PostText.new(post_text_params)
    @post_text.user_id = current_user.id
    if @post_text.save
      redirect_to post_text_path(@post_text.id)
    else
      render 'new'
    end
  end

  def index
    @post_texts = PostText.page(params[:page]).per(5).reverse_order
  end

  def show
    @post_text = PostText.find(params[:id])
  end

  def edit
    @post_text = PostText.find(params[:id])
  end

  def update
    @post_text = PostText.find(params[:id])
    if @post_text.update(post_text_params)
      redirect_to post_text_path(@post_text.id)
    else
      render 'edit'
    end
  end

  def destroy
    @post_text = PostText.find(params[:id])
    @post_text.destroy
    redirect_to post_texts_path
  end

  private
  def post_text_params
    params.require(:post_text).permit(:title, :category_id, :num, :body, :image)
  end
end
