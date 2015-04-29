class Api::V1::CommentsController < ApplicationController
  def index
    @data = Comment.all
  end

  def create
    @comment = Comment.create(comment_params)
    render :show, status: :created
  end

  private

  def comment_params
    params.permit(:author, :text)
  end
end
