class CreateArcticles < ActiveRecord::Migration[5.1]
  def change
    create_table :arcticles do |t|

      t.timestamps
    end
  end
end
