# frozen_string_literal: true

# Application Record Base
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
