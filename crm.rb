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
      # add_new_contact
      puts "Add a contact"
      puts "First name"
      first_name=gets.chomp
      puts "Last name"
      last_name=gets.chomp
      puts "Email"
      email=gets.chomp
      puts "Notes"
      notes=gets.chomp 

      contact = Contact.new(first_name, last_name, email, notes)
      @rolodex.add_contact(contact)
      puts "Added #{contact.id} #{contact.first_name} to rolodex"
        

    elsif input ==2
      puts "Modify"

    elsif input ==3
      puts "Display all"
    elsif input ==4
      puts "Display one"
    elsif input ==5
      puts "Display an attribute"
    elsif input ==6
      puts "Delete"
    elsif input ==7
      puts "Exit"
    else
      puts "Sorry thats not an option"
    end
  end
end


CRM.run('my') 
