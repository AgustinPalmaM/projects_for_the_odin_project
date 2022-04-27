def bubble_sort(arr)
  arr.each do |n|
    arr.each_with_index do |num, index|
      unless arr[index + 1] == nil
        if arr[index] > arr[index + 1]
          a = arr[index]
          b = arr[index + 1]
          arr[index] = b
          arr[index + 1] = a
        end
      end
    end
  end
  arr
end

puts bubble_sort([4, 3, 78, 2, 0, -1])
