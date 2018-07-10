

class Menu

    def self.list_all(everybody_array)
        puts "Here is the list of everyone"
        everybody_array.each do |person| 
            # puts "name: "  + person.name +  person.class.to_s + person.affiliation
            puts "Type: #{person.class} Name: #{person.name} Affiliation: #{person.affiliation}"
        end
    end

    #delete method
    def self.delete_person(everybody_array, person_to_delete)
        everybody_array.each_with_index do |person, index| 
           if person.name == person_to_delete
            everybody_array.delete_at(index)
           end
            
        end
        
     end

    #update name method
     def self.update_name(everybody_array, name_to_update, new_name)
        everybody_array.each_with_index do |person, index| 
           if person.name == name_to_update
            everybody_array[index].instance_variable_set(:@name, new_name)
            p everybody_array[index].name
           
           end
            
        end
        
     end

#update affiliation
     def self.update_affiliation(everybody_array, new_name)
       
        everybody_array.each_with_index do |person, index| 
           if person.class.name == "Voter"
             puts "What affiliation do you want to change to?"
             puts "(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral"
                

             elsif person.class.name == "Politician"
            
             puts "What party do you want to change to?"
             puts "(D)emocrat or (R)epublican?"
           end
          

        new_affiliation = gets.chomp.downcase
        #voter
      
        if new_affiliation == "l"
            affiliation = "liberal"
          end
          if new_affiliation == "c"
             affiliation = "conservative"
           end
           if new_affiliation == "t"
             affiliation = "tea party"
           end
           if new_affiliation == "s"
             affiliation = "socialist"
           end
           if new_affiliation == "n"
             affiliation = "nuetral"
           end

        #politician
        if new_affiliation == "d"
            affiliation = "democrat"
          end
          if new_affiliation == "r"
             affiliation = "republican"
           end

           puts affiliation
         everybody_array[index].instance_variable_set(:@affiliation, affiliation)
        # p everybody_array[index].affiliation
            
        end
        
     end


end
