module DefaultPageContent
    extend ActiveSupport::Concern

  included do  
    before_action :set_page_defaults
  end  
      
  def set_page_defaults
    @page_title = "James Matthew Briggs Portfolio"
    @seo_keywords = "James Briggs portfolio"
  end

end
