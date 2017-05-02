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

    # private methods
    private 
    def pin
        @pin = 1234
    end

    def pin_error
        return "Access denied: incorrect PIN."
    end

    # public method
    # if pin_number == pin then show account's balance istead show pin_error message
    def display_balance(pin_number)
        pin_number == pin ? "Balance : $#{@balance}" : pin_error
end