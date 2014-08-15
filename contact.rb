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
    
    puts "What do you want to modify?"
    attribute = gets.chomp
    puts "Are you sure you want to modify #{attribute}?"
    answer = gets.chomp
    if answer=='yes'
      puts "Do you want to modify [1] ID, [2] First Name, [3] Last Name or [4] Email?"
      variable = gets.chomp
      until variable == 1 || variable == 2 ||variable == 3 || variable == 4
        puts "Do you want to modify [1] ID, [2] First Name, [3] Last Name or [4] Email?"
        variable = gets.chomp
      end
        case variable
        when 1
          puts "Current id: #{id}"
          puts "Enter new value for id"
          new_value=gets.chomp.to_i
          @id=new_value
          puts "Current id: #{id}"
        when 2
          puts "Current First Name: #{first_name}"
          puts "Enter new value for First Name"
          new_value=gets.chomp.to_i
          @first_name=new_value
          puts "Current First Name: #{first_name}"
        when 3
          puts "Current Last Name: #{last_name}"
          puts "Enter new value for Last Name"
          new_value=gets.chomp.to_i
          @last_name=new_value
          puts "Current Last Name: #{last_name}"
        when 4
          puts "Current Email: #{email}"
          puts "Enter new value for Email"
          new_value=gets.chomp.to_i
          @email=new_value
          puts "Current Email: #{email}"
        end
    else
      crm.main_menu
    end
  end

  def display
    
  end

end