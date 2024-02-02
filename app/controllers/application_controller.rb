class ApplicationController < ActionController::Base
    before_action :set_posts

    def set_posts
        @posts = Post.published
    end
end
