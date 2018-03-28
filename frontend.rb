require 'unirest'

while true
  p "What do you want to do?"
  p "[1] View all pillows"
  p "[2] View one pillow"
  p "[3] Create a pillow"
  p "[4] Update a pillow"
  p "[5] Delete a pillow"
  p "[q] Quit"
  
  user_input = gets.chomp

  if user_input == "1"
    response = Unirest.get("localhost:3000/pillows")
    p response.body
  elsif user_input == "2"
    p "Enter the id of the product you wish to see"
    id = gets.chomp

    response = Unirest.get("localhost:3000/pillows/#{id}")
    p response.body
  elsif user_input == "3"
    p "Enter the name of your pillow"
    name = gets.chomp
    p "Enter the price"
    price = gets.chomp
    p "Enter the description"
    description = gets.chomp

    response = Unirest.post("localhost:3000/pillows", parameters: {
      name: name,
      price: price,
      description: description
      }
    )
    p response.body
  elsif user_input == "4"
    p "Enter the id of the product you wish to update"
    id = gets.chomp
    p "Enter the name of your pillow"
    name = gets.chomp
    p "Enter the price"
    price = gets.chomp
    p "Enter the description"
    description = gets.chomp

    response = Unirest.patch("localhost:3000/pillows/#{id}", parameters: {
      name: name,
      price: price,
      description: description
      }
    )
    p response.body
  elsif user_input == "5"
    p "Enter the id of the product you wish to delete"
    id = gets.chomp

    response = Unirest.delete("localhost:3000/pillows/#{id}")
    p response.body
  elsif user_input == "q"
    break
  end
end