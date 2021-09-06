class Skill < ApplicationRecord
  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults

  def set_defaults
    self.badge ||= "https://spng.pngfly.com/20190518/yjc/kisspng-josh-software-private-limited-ruby-on-rails-comput-ruby-on-rails-development-company-ruby-on-rails-de-5cdfc9e5cc1e85.5812441515581700858361.jpg"
  end
end
