class PagesController < ApplicationController
  def Home
  	@posts = Blog.all.order("created_at DESC").limit(3)
  	@skills = Skill.all
  	@portfolio_items = Portfolio.all.order("created_at DESC").limit(3)
  end

  def About
    @testimonials = Testimonial.all
  end

  def Contact
  end

  def utahjazz
    @tweets = SocialTool.twitter_search
  end
end
