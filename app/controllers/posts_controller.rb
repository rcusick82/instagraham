class PostsController < ApplicationController

  def create
    # @post.errors = "NOPE!!!!"
    @post = Post.new(post_params)
    @post.user = current_user
     if @post.save
       flash[:notice] = "post accepted"
       redirect_to root_path
     else
       flash[:warning] = "try again chief"
       render :new
       # flash[:notice] = " Oh Hell No!!"
       # redirect_to new_user_registration_path
       # redirect_to user_session_path, :flash => { :error => "NOPE!!!"}
       # flash[:warning] = @post.errors
       # render :new
       # redirect_to user_session_path, notice: "No sir!"
     end
  end

  def index

  end
  # def new
  #   @post = Post.new
  # end

  # validate :image_presence
  # def image_presence
  #   errors.add(:image, "can't be blank") unless image.attached?
  # end


  private

  def post_params
      params.require(:post).permit(:description, :image, :user)
  end
end
