class PagesController < ApplicationController
  def Home
  	@posts = Blog.all
  end

  def About
  end

  def Contact
  end
end
