class CreateProfiles < ActiveRecord::Migration[5.1]

    def change
        create_table :profiles do |t|
            t.references :user
            t.string :avatarPhoto
            t.string :headerPhoto
            t.string :name
            t.string :biography
            t.string :location
            t.string :website
            t.string :themeColor
            t.string :birthday
            
            t.timestamps
        end
    end

end