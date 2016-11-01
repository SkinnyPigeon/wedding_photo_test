class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # skip_before_filter :verify_authenticity_token
end
