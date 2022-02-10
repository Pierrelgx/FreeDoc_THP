class CreateJoinTableCity < ActiveRecord::Migration[5.2]
  def change
    add_reference :city, :doctors, :patients, foreign_key: true
  end
end
