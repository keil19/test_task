require 'pry'

def frequency(arr)
  arr.uniq.sort { |a,b| arr.count(b) <=> arr.count(a) }
end

# if i can't use the uniq method
# def frequency(arr)
#   hash_with_frequency = arr.reduce(Hash.new(0)) do |memo, el|
#     memo[el] += 1
#     memo
#   end
#   hash_with_frequency.sort_by { |_, v| -v }.map(&:first)
# end

def flatten(arr)
  arr.each_with_object([]) do |el, acc|
    acc.push *(el.is_a?(Array) ? flatten(el) : el)
  end
end
