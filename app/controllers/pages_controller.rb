class PagesController < ApplicationController
  def Home
  	@posts = Blog.all
  	@skills = Skill.all
  end

  def About
  end

  def Contact
  end

  def utahjazz
    @tweets = SocialTool.twitter_search
  end
end
