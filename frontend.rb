require 'unirest'

# index action
# response = Unirest.get("localhost:3000/pillows")
# p response.body

# show action
p "Enter the id of the product you wish to see"
id = gets.chomp

response = Unirest.get("localhost:3000/pillows/#{id}")
p response.body