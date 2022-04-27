def bubble_sort(arr)
  arr.each do |n|
    arr.each_with_index do |num, index|
      unless arr[index + 1].nil?
        if arr[index] > arr[index + 1]
          arr[index], arr[index + 1] = arr[index + 1], arr[index]
        end
      end
    end
  end
end

puts bubble_sort([4, 3, 78, 2, 0, -1])
