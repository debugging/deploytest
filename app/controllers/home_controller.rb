class HomeController < ApplicationController
  def index
  	@posts = Post.all

  	post = Post.new
  	post.name = (0..8).map { (65 + rand(26)).chr }.join
  	post.save!
  end
end
