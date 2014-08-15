class Contact
  attr_accessor :id, :first_name, :last_name, :email, :notes

  def initialize
    
  end

  def add_new_contact
    puts "Add a contact"
    puts "First name"
    @first_name=gets.chomp
    puts "Last name"
    @last_name=gets.chomp
    puts "Email"
    @email=gets.chomp
    puts "Notes"
    @notes=gets.chomp 
  end

  def modify
    
    
  end

  def show_details
    puts "Contact id: #{@id}"
    puts "First Name: #{@first_name}"
    puts "Last Name: #{@last_name}"
    puts "Email: #{@email}"
    puts "Notes: #{@notes}"
    puts ""
  end


end