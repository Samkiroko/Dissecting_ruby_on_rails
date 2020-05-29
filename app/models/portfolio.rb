class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||="https://i.picsum.photos/id/875/600/400.jpg"
    self.thumb_image ||="https://i.picsum.photos/id/875/350/200.jpg"
  end

end


