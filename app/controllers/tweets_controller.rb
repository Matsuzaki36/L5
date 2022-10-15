class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
    end
    
    def new
        @tweets = Tweet.new
    end
    
    def create
        @tweets = Tweet.new(message: params[:tweet][:message])
        @tweets.save
        redirect_to root_path
    end

    def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
        redirect_to root_path
    end
end
