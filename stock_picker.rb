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
        j = i + 1
        
        until j >= array.length
            sell = array[j]
            p "sell: " + sell.to_s
            
            gain = sell - buy
            p "gain: " + gain.to_s
            
            if gain > best
                best = gain 
                best_buy = i
                best_sell = j
            end
            
            break if j == array.length - 1
            j += 1
        end
        
        break if i == array.length - 1
        i += 1
    end

    p [best_buy, best_sell]
end
     
stock_picker(stock_prices)