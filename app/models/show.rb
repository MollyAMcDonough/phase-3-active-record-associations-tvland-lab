class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters
    def actors_list
        actor_names = []
        self.actors.each do |actor|
            actor_names << actor.full_name
        end
        actor_names
    end
end