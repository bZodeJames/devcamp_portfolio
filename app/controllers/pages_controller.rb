class PagesController < ApplicationController
  def home
  	@posts = Blog.all.limit(3)
  	@skills = Skill.all
  	@portfolio_items = Portfolio.all.limit(3)
  end

  def about
    @testimonials = Testimonial.all
  end

  def contact
  end

  def utahjazz
    @tweets = SocialTool.twitter_search
  end
end
