class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :slug
      t.string :title
      t.text   :description
      t.string :url
      t.references :modified_by
      # t.belongs_to :account
      t.datetime :start_date
      t.datetime :stop_date
      t.timestamps
    end
  end
end
