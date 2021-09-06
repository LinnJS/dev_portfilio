class Project < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  def self.react
    where(title: 'React sample project')
  end

  scope :ruby_on_rails, -> { where(subtitle: 'The approach will not be easy. 1') }

end
