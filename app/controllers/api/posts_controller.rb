class Api::PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  def index
    render json: Post.all.order(featured: :desc, created_at: :desc)
  end

  def show
    render json: @post
  end

  def create
    post = Post.create(post_params)
    if post.save
      render json post
    else
      render json: post.errors, status: 422
  end

  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: 422
    end
  end

  def destroy
    @post.destroy
  end
end
