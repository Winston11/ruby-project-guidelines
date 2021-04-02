class Review < ActiveRecord::Base
    belongs_to :owner
    belongs_to :streaming_service
end
