class PostsController < ApplicationController
  def create
    Post.create(post_params)

    redirect_to root_path
  end

  def new
    @post = Post.new
  end

  # validate :image_presence
  # def image_presence
  #   errors.add(:image, "can't be blank") unless image.attached?
  # end


  private

  def post_params
    params.require(:post).permit(:description, :image, :user_id)
  end
end
