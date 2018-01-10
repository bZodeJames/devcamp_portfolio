class PagesController < ApplicationController
  def Home
  	@posts = Blog.all.limit(3)
  	@skills = Skill.all
  	@portfolio_items = Portfolio.all.limit(3)
  end

  def About
  end

  def Contact
  end

  def utahjazz
    @tweets = SocialTool.twitter_search
  end
end
