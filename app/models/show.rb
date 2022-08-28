class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        self.actors.collect do |character|
            "#{character.first_name} #{character.last_name}"
        end.join(", ")
    end

end