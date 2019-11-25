class SettingsController < ApplicationController

  # GET /settings
  def index
    if !current_user.settings
      #Note: move this somewhere else if default setting arguments need to be instantiated somewhere else as well
      default_settings = {
        pencil_thickness: 1,
        pencil_pressure_sensitivity: 1,
        eraser_thickness: 20,
        annotation_options: true
      }
      settings = Settings.create!(default_settings)
      current_user.settings = settings
      current_user.save!
    end
    json_response(current_user.settings)
  end

  # PUT /settings/:id
  def update
    current_user.settings.update(settings_params)
    head :no_content
  end

  private

  def settings_params
    # whitelist params
    params.require(:settings).permit(:pencil_thickness, :pencil_pressure_sensitivity, :eraser_thickness, :annotation_options)
  end

end
