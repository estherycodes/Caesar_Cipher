stock_prices = [17,3,6,9,15,8,6,1,10]
day = 0
buy = 0
sell = 0

def stock_picker(array)
    i = 0
    j = 1
    best = 0
        until i >= array.length
            buy = array[i]
            p "buy: " + buy.to_s

        until j >= array.length
            sell = array[i + j]
            p "sell: " + sell.to_s

            gain = sell - buy
            p "gain: " + gain.to_s

            if gain > best
                best = gain 
            end
    
            break if gain < 1
            i += 1
        end
                p "best: " + best.to_s

        p "j at end: " + (j += 1).to_s
    end
    p "i at end: " + (i).to_s
    end
end

=begin
def stock_picker(array)
    loop do
        i = 0
        p buy = array[i]
        p sell = array[i + 1]
        p gain = sell - buy
        
        if gain < 1 
            i += 1
            next
        end
        
        p sell = array[i + 2]
        
        loop do
        if sell - buy > gain
            p gain = sell - buy
            sell = array[i + 3]
        end

        if sell - buy < gain
            gain = best
        end
        i += 1
    end
=end

stock_picker(stock_prices)