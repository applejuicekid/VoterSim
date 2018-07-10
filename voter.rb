require_relative 'person'

class Voter < Person
    @@affilitaions =  ["(L)iberal", "(C)onservative", "(T)ea Party", "(S)ocialist", "(N)eutral"]

    def self.affilitaions
        @@affilitaions
    end
    
end





