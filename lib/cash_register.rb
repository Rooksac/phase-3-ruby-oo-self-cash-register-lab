class CashRegister
    attr_reader :discount
    attr_accessor :total, :items, :last_transaction

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        @last_transaction = nil
    end

    def add_item (title, price, quantity = 1)
        self.total += (price * quantity)
        for items in 1..quantity do
        @items.push(title)
        end
        self.last_transaction = price*quantity
    end

    def apply_discount
        if @discount != 0
            self.total -= (total*(discount/100.to_f))
            "After the discount, the total comes to $#{total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= @last_transaction
    end 

end
