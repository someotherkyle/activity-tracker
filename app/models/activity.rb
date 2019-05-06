class Activity < ActiveRecord::Base
  belongs_to :user

  def is_ongoing?
    end_time == nil ? true : false
  end
end
