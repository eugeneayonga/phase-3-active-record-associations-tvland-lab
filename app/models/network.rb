class Network < ActiveRecord::Base
  has_many :shows

    def sorry
        "We're sorry about passing on John Mulaney's pilot"
    end

    def shows
        self.shows.collect do |show|
            "#{show.name}"
        end.join(", ")
    end

end
