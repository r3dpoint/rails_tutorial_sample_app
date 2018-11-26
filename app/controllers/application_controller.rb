# frozen_string_literal: true

# The ApplicationController controller.
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
