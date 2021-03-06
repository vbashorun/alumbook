#Created by Tessa
class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.references :login, index: true, foreign_key: true
      t.string :survey_name
      t.text :survey_description
      t.date :date_created
      t.string :status

      t.timestamps null: false
    end
  end
end
