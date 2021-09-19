module DefaultPageContentConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults 
    @page_title = "DevPortfolio"
    @seo_keywords = "Justin Linn, Software Engineer, Portfilio, React, React Native, Gatsby, NextJS, Ruby, Ruby on Rails"
  end
end