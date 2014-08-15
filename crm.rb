require_relative 'contact.rb'
require_relative 'rolodex.rb'

class CRM
  attr_accessor :name


  def self.run(name)  #class method
    crm = CRM.new(name)
    crm.main_menu 
  end

  def initialize(name)
    @name=name
    @rolodex=Rolodex.new
  end

  def print_new_menu
    puts "[1] Add a contact"
    puts "[2] Modify"
    puts "[3] Display all"
    puts "[4] Display one"
    puts "[5] Display an attribute"
    puts "[6] Delete"
    puts "[7] Exit"
    puts "Choose an option by entering a number:"
  end

  def main_menu
    while true
      print_new_menu
      input=gets.chomp.to_i
      return if input ==7
      call_option(input)
    end
  end

  def call_option(input)
    if input == 1
      contact = Contact.new
      contact.add_new_contact

      @rolodex.add_contact(contact)
      puts "Added #{contact.id} #{contact.first_name} to rolodex"

    elsif input ==2
      puts "Whose data do you want to modify?"
      puts "Enter First / Last Name, ID or Email"
      variable = gets.chomp

      found_contact= @rolodex.find_contact(variable)
      found_contact.show_details
        # puts "Are you sure you want to modify #{last_name}?"
      
      # answer = gets.chomp.downcase
        # if answer=='yes'
        puts "Do you want to modify [1] ID, [2] First Name, [3] Last Name or [4] Email?"
        variable = gets.chomp.to_i
          until variable == 1 || variable == 2 ||variable == 3 || variable == 4
            puts "Invalid choice"
            puts "Do you want to modify [1] ID, [2] First Name, [3] Last Name or [4] Email?"
            variable = gets.chomp.to_i
          end

            case variable

            when 1
              puts "Enter new ID"
              new_id = gets.chomp.to_i
              found_contact.id = new_id
              puts "ID set to #{found_contact.id}"

            when 2
              puts "Enter new first name"
              new_first_name = gets.chomp
              found_contact.first_name = new_first_name
              puts "First name set to #{found_contact.first_name}"
              
            when 3
              puts "Enter new Last Name"
              new_last_name = gets.chomp
              found_contact.last_name = new_last_name
              puts "Last name set to #{found_contact.last_name}"
              
            when 4
              puts "Enter new email"
              new_email = gets.chomp
              found_contact.email = new_email
              puts "Email set to #{found_contact.email}"
              
            end
        
        


    elsif input ==3
      @rolodex.show_all_contacts


    elsif input ==4
      puts "Whose data do you want to view?"
      puts "Enter First / Last Name, ID or Email"
      variable = gets.chomp

      found_contact= @rolodex.find_contact(variable)
      found_contact.show_details

    elsif input ==5
      puts "What attribute do you want to find?"
      puts "[1] ID, [2] First Name, [3] Last Name or [4] Email?"
      variable = gets.chomp.to_i
        until variable == 1 || variable == 2 ||variable == 3 || variable == 4
          puts "Invalid choice"
          puts "Do you want to modify [1] ID, [2] First Name, [3] Last Name or [4] Email?"
          variable = gets.chomp.to_i
        end

        case variable

        when 1
          @rolodex.find_attribute('id')

        when 2
          @rolodex.find_attribute("first_name")

        when 3
          @rolodex.find_attribute("last_name")

        when 4
          @rolodex.find_attribute("email")
        end

    elsif input ==6
      puts "Which contact do you want to delete?"
      puts "Enter First / Last Name, ID or Email"
      variable = gets.chomp

      found_contact= @rolodex.find_contact(variable)
      found_contact.show_details
      
      puts "Are you sure?"
      answer=gets.chomp.downcase
      @rolodex.delete_contact(found_contact) if answer=='yes'



    elsif input ==7
      puts "Exit"
    else
      puts "Sorry thats not an option"
    end
  end
end


CRM.run('my') 
