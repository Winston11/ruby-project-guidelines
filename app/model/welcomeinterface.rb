class WelcomeInterface
    attr_accessor :owner
    attr_reader :prompt

    def initialize
        @prompt = TTY::Prompt.new
    end

    # def welcome_interface
    #     puts "Welcome to Streamline"
    #     puts "Login or Sign-up now to find the right streaming services for you."
    # end

    # def requesting_for_login_or_register
    #     prompt.select "Sign-up! or Login!" do |menu|
    #         menu.choice "Login", -> {login_helper}
    #         menu.choice "Sign-up", -> {sign_up_helper}
    #         menu.choice "Exit", -> {exit_helper}
    #     end
    # end

    # def login_helper
    #     puts "Welcome Back!"
    #     @owner = Owner.login_helper_method
    # end
    
#     def sign_up_helper
#         puts "How long 'til you share your password?"
#         @owner = Owner.sign_up_helper_method
#     end


#     def exit_helper
#         puts "Binge you later!"
#     end

    def run
        welcome_screen
        # requesting_for_login_or_register
        # directory
    end
# end

def welcome_screen
    system 'clear'
        puts Rainbow("W                                                                             .").red
        sleep 0.3
        system 'clear'
        puts Rainbow("W                                                                            .").blue 
        sleep 0.3
        system 'clear'
        puts Rainbow("W                                                                           .").white
        sleep 0.3
        system 'clear'
        puts Rainbow("We                                                                        e.").blue
        sleep 0.3
        system 'clear'
        puts Rainbow("Wel                                                                     l.").red
        sleep 0.3
        system 'clear'
        puts Rainbow("Welc                                                                 c.").white
        sleep 0.3
        system 'clear'
        puts Rainbow("Welco                                                             o.").red
        sleep 0.3
        system 'clear'
        puts Rainbow("Welcom                                                         m.").blue
        sleep 0.3
        system 'clear'
        puts Rainbow("Welcome                                                    e.").white
        sleep 0.3
        system 'clear'
        puts Rainbow("Welcome                                                .").blue
        sleep 0.3
        system 'clear'
        puts Rainbow("Welcome                                              .").red
        sleep 0.3
        system 'clear'
        puts Rainbow("Welcome                                           .").white
        sleep 0.3
        system 'clear'
        puts Rainbow("Welcome                                         .").red
        sleep 0.2
        system 'clear'
        puts Rainbow("Welcome                                      .").blue
        sleep 0.2
        system 'clear'
        puts Rainbow("Welcome                                    .").white 
        sleep 0.2
        system 'clear'
        puts Rainbow("Welcome                                  .").red
        sleep 0.2
        system 'clear'
        puts Rainbow("Welcome                                .").blue
        sleep 0.1
        system 'clear'
        puts Rainbow("Welcome                         .").white 
        sleep 0.1
        system 'clear'
        puts Rainbow("Welcome                     .").red
        sleep 0.1
        system 'clear'
        puts Rainbow("Welcome                .").blue
        sleep 0.1
        system 'clear'
        puts Rainbow("Welcome       .").yellow
        sleep 0.2
        system 'clear'
        puts Rainbow("Welcome   .").red 
        sleep 0.2
        system 'clear'
        puts Rainbow("Welcome  .").yellow
        sleep 0.3
        system 'clear'
        puts Rainbow("Welcome .").blue
        sleep 0.3
        system 'clear'
        puts Rainbow("Welcome.").yellow
        sleep 3
        system 'clear'
        
    prompt = TTY::Prompt.new
    puts ""                             
    puts "Welcome to Streamline
    _.._
    _________....-~    ~-.______
 ~~~                            ~~~~-----...___________..--------
                                            |   |     |
                                            | |   |  ||
                                            |  |  |   |
                                            |'. .' .`.|
 ___________________________________________|0oOO0oO0o|____________
  -          -         -       -      -    / '  '. ` ` \    -    -
       --                  --       --   /    '  . `   ` \    --
 ---            ---          ---       /  '                \ ---
      ----               ----        /       ' ' .    ` `    \  ----
 -----         -----         ----- /   '   '        `      `   \
      .-~~-.          ------     /          '    . `     `    `  \
     (_^..^_)-------           /  '    '      '      `
 Lester||||AMC       --------/     '     '   ' ".colorize(:blue) 
    puts "" 
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
    system 'clear'
    puts ""
    puts "Binge you later!
    o                   o
    \               __/
     \___          /
         \__    __/
            \  /
 ____________\/____________
/   ____________________   \
|  /__/  \__   \__/  \__\  |
| |    __   \__    __   \| |
| |\__/  \__   \__/  \__ | |
| |    __   \__    __   \| |
| |\__/  \__   \__/  \__ | |
| |    __   \__    __   \| |
| |\__/  \__   \__/  \__ | |
| |    __   \__    __   \| |
| |\__/  \__   \__/  \__ | |
|  \________\___________/  |
|                 _   _    |
|  prs           (|) (/)   |
\_________________________/
    ""           """.colorize(:red) 
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
end 

def profiles(user)
    prompt = TTY::Prompt.new
     puts "inside profiles"
     prompt.select "What would you like to do?" do |menu|
        menu.choice "Delete User Info", -> {delete_helper_method(user)}
        menu.choice "Display User", -> {display_owner_method(user)}
        menu.choice "Exit to Directory", -> {the_directory(user)}
        # menu.choice "Favorites", -> {favorite_method}
        # stretch goal
     end
 end

 def display_owner_method(user)
    system 'clear'
    #print out owner name : user.name &  : user.password
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
            puts "New Alter Ego?"
            username = STDIN.gets.chomp
            user.update(name: username)
        else
            puts "New Password?"
            password = STDIN.gets.chomp
            user.update(password: password)
        end
        puts ""
        prompt = TTY::Prompt.new
        prompt.select "What would you like to do next?" do |menu|
            menu.choice "Display User", -> {display_owner_method(user)}
            menu.choice "Exit to Directory", -> {the_directory(user)}
         end
     end

     def delete_helper_method(user)
        puts ""
        puts "Rather stream alone?"
        puts ""
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
    
    # welcome_screen()
    
    def streaming_channel(user)
        system 'clear'
        prompt = TTY::Prompt.new
        puts ""
        puts "BINGE BINGE BINGE BINGE"
        puts ""
         prompt.select "Pick a Streaming Service" do |menu|
            menu.choice "HBO Max", -> {hbo_max(user)}
            menu.choice "Disney Plus", -> {disney_plus(user)}
            menu.choice "Starz", -> {starz(user)}
            menu.choice "Exit to Directory", -> {the_directory(user)}
        end
     end
    
     def hbo_max(user)
        system 'clear'
        prompt = TTY::Prompt.new
        puts "ENJOY ENDLESS ENTERTAINMENT !!!"
        puts ""
        prompt.select "HBO MAX" do |menu|
            hbo_list = StreamingService.where(title: "HBO Max")
            hbo_list.each do |hbo_max|
                menu.choice hbo_max.title, -> {picked_service(hbo_max, user)}
            end
         menu.choice "Exit to Streaming Services", -> {streaming_channel(user)}
        end
     end

     def picked_service(channel, user)
        #this is for a single streaming platform
        #only accepts streaming service instances
        prompt = TTY::Prompt.new
        prompt.select "#{channel.title}" do |menu|
            menu.choice "Add a Review", -> {add_review(channel, user)}
            menu.choice "See Reviews", -> {see_reviews(channel, user)}
            menu.choice "Exit to Streaming Services", -> {streaming_channel(user)}
        end
     end

     def add_review(channel, user)
        #how to create in active record
        # username = STDIN.gets.chomp
        # owner_inst = Owner.find_by(name: username)
        puts "FREE SPEECH"
        comment = STDIN.gets.chomp
        puts "How would you rate the service?"
        score = STDIN.gets.chomp
        #all above fills into a review
        Review.create(owner_id: user.id, streaming_id: channel.id, overall_score: score, comment: comment)
        #made global variable to use current_user.id 
        # see_reviews(channel, user)
        streaming_channel(user)
        #confirms that it was made
     end
     #add_reviews also dynamic ..the beauty of passing through
    
     def see_reviews(channel, user)
        #how to read from active record
        # multiple reviews 
        puts ""
        puts "LET'S SEE WHAT'S THE FUSS ABOUT?"
        puts ""
        
        picked_channel = []
        Review.all.each do |review|
            #set stream = to id to review id
            #set user = to id of review's user id 
        stream = StreamingService.find_by(id: review.streaming_id)
        owner = Owner.find_by(id: review.owner_id)

        picked_channel << "#{stream.title}"
        
        review = Review.where(streaming_id: channel)
        # streaming_id: picked_channel.id

        review.each do |r|
            owner = Owner.find_by(id: r.owner_id)
            puts "\n#{owner.name}'s review:"
            puts "Overall Score: #{r.overall_score}/5"
            puts "Comments: #{r.comment}"
            puts ""
        end
        
        # review_list = Review.where(streaming_id: channel.id)
    #     #channel.reviews works as well because of ActiveRecord
        # channel.reviews.each do |review|
        #     binding.pry
        #     puts "#{review.owner.name} says: #{review.comment}"
        #     puts "score: #{review.score}"
        #     puts ""
            #puts cursor on new line similar to \n
        end
        prompt = TTY::Prompt.new
        prompt.select "#{channel.title}" do |menu|
            menu.choice "Exit to Streaming Services", -> {streaming_channel(user)}
        end
        # binding.pry
     end
    #  #dynamic ..the art of passing through

    def disney_plus(user)
        system 'clear'
        prompt = TTY::Prompt.new
        puts ""
        puts "The Most Magical Place on Earth !"
        puts ""
        prompt.select "Disney Plus" do |menu|
            disney_list = StreamingService.where(title: "Disney Plus")
            disney_list.each do |disney_plus|
                menu.choice disney_plus.title, -> {picked_service(disney_plus, user)}
            end
         menu.choice "Exit to Streaming Services", -> {streaming_channel(user)}
        end
     end

     def starz(user)
        system 'clear'
        prompt = TTY::Prompt.new
        puts ""
        puts "O B S E S S A B L E !"
        puts ""
        prompt.select "Starz" do |menu|
            starz_list = StreamingService.where(title: "Starz")
            starz_list.each do |starz|
                menu.choice starz.title, -> {picked_service(starz, user)}
            end
         menu.choice "Exit to Streaming Services", -> {streaming_channel(user)}
        end
     end

# create: create 
# read : find_by, where, find,
# update: update
# delete: destroy