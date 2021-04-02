require_relative '../config/environment'
require 'pry'
# create: create 
# read : find_by, where, find,
# update: update
# delete: destroy
#global area



#this area
def welcome_screen
    prompt = TTY::Prompt.new
    puts""                             
    puts "Welcome to Streamline"  
    prompt.select "Sign-up! or Login!" do |menu|
        menu.choice "Login", -> {login_helper}
        menu.choice "Sign-up", -> {sign_up_helper}
        menu.choice "Exit", -> {exit_helper}
    end
end

def login_helper
    puts "Welcome Back!"
    owner_confirmation = Owner.login_helper_method
   
    if owner_confirmation[0]
        the_directory(owner_confirmation[1])
    else
        welcome_screen()
    end
end


def sign_up_helper
    puts "How long 'til you share your password?"
    owner = Owner.sign_up_helper_method
    welcome_screen()
end

def exit_helper
    puts "Binge you later!"
    puts ""
end

def delete_method
   puts "delete"
end

def the_directory(user)
    system 'clear'
    #local area - state
    prompt = TTY::Prompt.new
    prompt.select "Directory" do |menu|
        menu.choice "Streaming Services", -> {streaming_channel(user)}
        menu.choice "Profiles", -> {profiles(user)}
        menu.choice "Exit to Main Menu", -> {welcome_screen}
    end
end


 def profiles(user)
    prompt = TTY::Prompt.new
     puts "inside profiles"
     prompt.select "What would you like to do?" do |menu|
        menu.choice "Delete User Info", -> {delete_helper_method(user)}
        menu.choice "Display User", -> {display_owner_method(user)}
        # menu.choice "Favorites", -> {favorite_helper_method}
        menu.choice "Exit to Directory", -> {the_directory(user)}
     end
 end

 def display_owner_method(user)
#print out owner name : user.name
#print out owner name : user.password
    puts ""
    puts "username: #{user.name}"
    puts "password: #{user.password}"
    puts ""
# again "" adds space similar to \n \n
    prompt = TTY::Prompt.new
    prompt.select "What would you like to do?" do |menu|
        menu.choice "change username", -> {update_helper(user, "username")}
        menu.choice "change password", -> {update_helper(user, "password")}
        menu.choice "Exit to Directory", -> {the_directory(user)}
     end
 end
 

 def update_helper(user, options)
    #how to update the active record
    if(options == "username")
        puts "What's your new username?"
        username = STDIN.gets.chomp
        user.update(name: username)
    else
        puts "What's your new password ?"
        password = STDIN.gets.chomp
        user.update(password: password)
    end
    puts ""
    prompt = TTY::Prompt.new
    prompt.select "What would you like to do?" do |menu|
        # menu.choice "Delete", -> {delete_helper_method(user)}
        # menu.choice "", -> {display_dispaly_method(user)}
        menu.choice "Display User", -> {display_owner_method(user)}
        menu.choice "Exit to Directory", -> {the_directory(user)}
     end
 end


 def delete_helper_method(user)
    puts "Rather stream alone?"
    
    prompt = TTY::Prompt.new
    prompt.select "WOW!... So, you really hate us?" do |menu|
        menu.choice "yes", -> {delete_user(user)}
        menu.choice "no", -> {display_owner_method(user)}
        menu.choice "Exit to Directory", -> {the_directory(user)}
    end
end

def delete_user(user)
    #how to delete from active record
    user.destroy
    welcome_screen()
 end

welcome_screen()





# create: create 
# read : find_by, where, find,
# update: update
# delete: destroy