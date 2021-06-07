class NewsfeedsController < ApplicationController
  before_action :authenticate_user!

  def show
    @new_post = Post.new
    @posts = current_user.
      posts.includes(:user).
      with_rich_text_content_and_embeds.
      order(created_at: :desc)
  end
end
