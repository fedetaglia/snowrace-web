require 'api/serializer'

module Api
  class RaceSerializer < Serializer
    attributes :user_app_id, :race_result

    def user_app_id
      object.user.app_id
    end

  end

end