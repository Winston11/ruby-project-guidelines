class Owner < ActiveRecord::Base
    has_many :reviews
    has_many :video_games, through: :reviews

    def self.login_helper_method
        system 'clear'
        puts "USERNAME?"
        owner = STDIN.gets.chomp
        puts "PASSWORD?"
        #binding.pry
        password = STDIN.gets.chomp
        owner_inst = Owner.find_by(name: owner, password: password)
        #binding.pry
        if owner_inst == nil
            puts "Please Try Again"
            return [false, owner_inst]
        else 
            puts "Login Successful, Let's find your stream!"
            return [true, owner_inst]
        end 
    end

    def self.sign_up_helper_method
        system 'clear'
        puts "Pick an Username?"
        owner = STDIN.gets.chomp
        puts "Choose your Password?"
        password = STDIN.gets.chomp
        owner_inst = Owner.create(name: owner, password: password)
        puts "Welcome to the Streamline Community"
    end

end
