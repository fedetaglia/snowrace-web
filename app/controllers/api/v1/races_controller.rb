class Api::V1::RacesController < Api::V1::BaseController
    
  def create
    @user = User.find_or_create_by(app_id: "#{params[:race][:user_app_id]}") if params[:race][:user_app_id].present?
    race_result = params[:race][:race_result] if params[:race][:race_result].present?

    if @user.valid? and race_result.present?

      @race = Race.new(user: @user, race_result: race_result)

      if @race.save
        expose @race, serializer: Api::RaceSerializer
      else
        p "RACE ERRORS #{@race.errors.full_messages}"
        render_error RocketPants::InvalidResource.new(@race.errors)
      end

    else
      p "USER ERRORS: #{@user.errors.full_messages}"
      render_error RocketPants::InvalidResource.new(@user.errors)
    end    

  end

end