module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = 'Samuel Kiroko N | Portfolio website'
    @seo_keywords = "Samuel kiroko portfolio, fullstack ruby, rails,
                     Javascript, react, html & css"
  end
end
