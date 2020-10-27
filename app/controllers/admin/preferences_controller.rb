class Admin::PreferencesController < ApplicationController 
    def index
        #@post_count = Post.count
        #@authors_count = Author.count
        #@last_post = Post.last
       
    end
    def new
        if params[:author_id] && !Author.exists?(params[:author_id])
          redirect_to authors_path, alert: "Author not found."
        else
          @post = Post.new(author_id: params[:author_id])
        end
      end
end