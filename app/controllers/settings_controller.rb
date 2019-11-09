class SettingsController < ApplicationController

  # GET /settings
  def index
    json_response(current_user.settings)
  end

  # PUT /settings
  def update
    current_user.settings.update(settings_params)
    head :no_content
  end

  private

  def settings_params
    # whitelist params
    params.permit(:pencil_thickness, :pencil_pressure_sensitivity, :eraser_thickness, :annotation_options)
  end

end
