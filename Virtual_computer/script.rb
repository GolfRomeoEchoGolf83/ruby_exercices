class Computer
    @@users = {}
    # Initialize class
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
        @@users[username] = password
    end

    # Create method for creating file with its time of creation and name
     def create(filename)
        @time = Time.now
        @files[filename] = time
        puts "#{username} has created a file named : #{filename} at #{time}"
    end

    # Getting class variable @@users with class method to get user name 
    def Computer.get_users 
        return @@users
    end
end

my_computer = Computer.new("Hal", "xv36")

