require_relative 'person'

class Politician < Person
    @@affiliations = ["(D)emocrat", "(R)epublican?"]

    def self.affiliations
        @@affiliations
    end
  
end



