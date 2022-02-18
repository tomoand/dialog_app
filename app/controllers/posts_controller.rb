class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id:params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(title: params[:title], content: params[:content])
    if @post.save
      flash[:notice] = "新規投稿しました"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end

  def edit
    @post = Post.find_by(id:params[:id])
  end

  def update
    @post = Post.find_by(id:params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "更新しました"
      redirect_to("/posts/show/#{@post.id}")
    else
      render("posts/#{@post.id}/edit")
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    if @post.destroy
      flash[:notice] = "削除しました"
      redirect_to("/posts/index")
    else
      redirect_to("/posts/#{params[:id]}/show")
    end
  end
end
