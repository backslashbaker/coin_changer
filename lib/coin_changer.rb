class Changer

  def change(amount)

    coins = [200, 100, 50, 20, 10, 5, 2, 1]
    store = []

      coins.each do |coin|
      while amount >= coin
        store << coin
        amount = amount - coin
      end
    end
      return store
  end 
end
