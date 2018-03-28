require 'unirest'

# index action
# response = Unirest.get("localhost:3000/pillows")
# p response.body


# show action
# p "Enter the id of the product you wish to see"
# id = gets.chomp

# response = Unirest.get("localhost:3000/pillows/#{id}")
# p response.body


# create action
# response = Unirest.post("localhost:3000/pillows", parameters: {
#   name: "Foam Pillow",
#   price: 45.54,
#   description: "pillow made of foam"
#   }
# )

# p response.body


# update action
# p "Enter the id of the product you wish to update"
# id = gets.chomp

# response = Unirest.patch("localhost:3000/pillows/#{id}", parameters: {
#   name: "Foamified Pillow",
#   price: 54.45,
#   description: "still a pillow made of foam"
#   }
# )
# p response.body


# destroy action
p "Enter the id of the product you wish to delete"
id = gets.chomp

response = Unirest.delete("localhost:3000/pillows/#{id}")
p response.body