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
    public
    # if pin_number == pin then show account's balance istead show pin_error message
    def display_balance(pin_number)
        pin_number == pin ? "Balance : $#{@balance}" : pin_error
    end

    # withdrawal managing
    def withdraw(pin_number, amount)
        if pin_number == pin
            @balance -= amount
            puts "Withdrew #{amount}. New balance: $#{@balance}."
        else
            pin_error
        end
    end
  
end

checking_account = Account.new('Greg')
checking_account.withdraw(1234, 50)
checking_account.display_balance(1234)