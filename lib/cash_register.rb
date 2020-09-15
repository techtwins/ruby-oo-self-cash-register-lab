class CashRegister
    attr_accessor :discount, :total, :quantity, :items, :transaction
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total += (price * quantity)
        quantity.times do 
            @items << title
        end
        @transaction = price * quantity
    end

    def apply_discount
        if self.discount > 0
            self.total = (self.total - self.discount / 100.0 * self.total.to_f)
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= @transaction
    end
end

