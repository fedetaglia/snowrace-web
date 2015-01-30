require 'api/serializer'

module Api
  class RacesSerializer < Serializer
    attributes :id, :race_result

    def user_app_id
      object.user.app_id
    end

  end

end