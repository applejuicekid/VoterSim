require_relative 'voter'
require_relative 'politician'
require_relative 'person'
require_relative 'menu'
require_relative 'person_to_delete'
require_relative 'person_to_change'

everybody_array = []

continue = true
while continue 

    puts "What would you like to do?"
    puts "(C)reate, (L)ist, (U)pdate, or (D)elete"
    crud = gets.chomp.downcase

#create
if crud == "c" 
  puts  "What would you like to create?"
  puts  "(P)olitician or (V)oter"
  person = gets.chomp.downcase
end

#voter
if person == "v"
   puts "What is your name?"
   name = gets.chomp.capitalize
   puts "Politics?"
   puts "(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral"
   # puts Voter.affilitaions
    politics = gets.chomp.downcase
     if politics == "l"
      affiliation = "liberal"
     end
     if politics == "c"
       affiliation = "conservative"
     end
     if politics == "t"
       affiliation = "tea party"
     end
     if politics == "s"
       affiliation = "socialist"
     end
     if politics == "n"
       affiliation = "nuetral"
     end

   person = Voter.new(name, affiliation)
   everybody_array.push(person)

   Menu.list_all(everybody_array)
end

#politican
if person == "p"
   puts "What is your name?"
   name = gets.chomp.capitalize
   puts "Party?"
   puts "(D)emocrat or (R)epublican?"
    party = gets.chomp.downcase
    if party == "d"
      affiliation = "democrat"
    end
    if party == "r"
       affiliation = "republican"
    end
   

   person = Politician.new(name, affiliation)
   everybody_array.push(person)

   Menu.list_all(everybody_array)

end

#list
 if crud == "l"
  Menu.list_all(everybody_array)
 end

# update
  if crud == "u"
    Menu.list_all(everybody_array)
    puts "What name do you want to update"
    name_to_update = gets.chomp
  end
  if name_to_update != nil
    puts "What is the new name?"
    new_name = gets.chomp
  end
  if name_to_update != nil
    puts "Are you sure you want to update #{name_to_update} to #{new_name}? (y)"
    confirm = gets.chomp
  end
  if confirm == "y"
      Menu.update_name(everybody_array, name_to_update, new_name)
     puts "Do you want to change your affiliation? y or n"
     confirm = gets.chomp 
     if confirm == "y"
      Menu.update_affiliation(everybody_array, new_name)
     end
  end
  
 





# def delete
  if crud == "d"
    Menu.list_all(everybody_array)
    puts "Who do you want to delete?"
    person_to_delete = gets.chomp
    
    
     if person_to_delete != nil
      puts "Are you sure you want to delete #{person_to_delete}? (y)"
      confirm = gets.chomp
     if confirm == "y"
      Menu.delete_person(everybody_array, person_to_delete)

      
     else
        puts "#{person_to_delete} was not deleted from directory."
      end
     else
      puts "Not a registered person on the directory."
     end
     else
     Menu
     end




#ending
puts "Do you want to go back to the menu?"
puts "type y or n"
ending = gets.chomp.downcase
  if ending == "n"
    continue = false
  end

  
end
 





