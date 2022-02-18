class SearchController < ApplicationController
  def search_index
  end

  def result
    @posts = Post.where('title like ?', "%#{params[:word]}%")
              .or(Post.where('content like ?', "%#{params[:word]}%"))
              .order(created_at: :desc)
  end
end
