#initalize the account
class Account
    #name and balance should be readable but not writeable
    attr_reader :name
    attr_reader :balance
    #balance optionnal value set to 100
    def initalize(name, balance=100)
        @name = name
        @balance = balance
    end
end