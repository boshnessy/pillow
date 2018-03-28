require 'unirest'

# index action
response = Unirest.get("localhost:3000/pillows")
p response.body