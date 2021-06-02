def stock_picker(array)
    sorted = array.map.with_index.sort 
    check = {}
   
    sorted.each do |i|
        (i.last..sorted.length-1).each do |o|
         check[[i.last, array.index(array[o])]] = i.first - array[o]
        end
    end

return check.min_by(&:last)[0]
end



p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([22,19,6,8,11,11,2,5,6])

