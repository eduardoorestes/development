# iterador each - 
v = [10,20,30,40,50]
v.each { |element| puts element }

# ------------- #
puts '--------------'

v.each do |element|
    puts element
    puts '---'
    puts element * 2
    puts '==='
    puts element * 3
    puts 'recomeçando...'
end
