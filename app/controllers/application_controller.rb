class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include CurrentUserConcern
  include DefaultPageContentConcern
  include DeviseWhitelistConcern
  include SetSourceConcern
end
