class Project < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  def self.react
    where(title: 'React sample project')
  end

  scope :ruby_on_rails, -> { where(subtitle: 'The approach will not be easy. 1') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://images.unsplash.com/photo-1579935110378-81262796945f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
    self.thumb_image ||= "https://images.unsplash.com/photo-1620002093398-8f16081af5ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80"
  end
end
