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
end

