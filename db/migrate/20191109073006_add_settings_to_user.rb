class AddSettingsToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :settings, :user, foreign_key: true
  end
end
