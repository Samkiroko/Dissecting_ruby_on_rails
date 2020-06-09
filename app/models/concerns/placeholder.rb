module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "https://i.picsum.photos/id/875/#{height}/#{width}.jpg"
  end
end
