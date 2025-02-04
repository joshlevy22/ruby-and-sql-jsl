# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Josh"
new_salesperson["last_name"] = "Levy"
new_salesperson["email"] = "josh.levy@kellogg.northwestern.edu"
new_salesperson["phone"] = "404-291-4757"
new_salesperson.save

new_salesperson2 = Salesperson.new
new_salesperson2["first_name"] = "John"
new_salesperson2["last_name"] = "Doe"
new_salesperson2["email"] = "john.doe@kellogg.northwestern.edu"
new_salesperson2["phone"] = "123-456-7890"
new_salesperson2.save

# 3. write code to display how many salespeople rows are in the database

# ---------------------------------
# Salespeople: 2

puts "Salespeople: #{Salesperson.all.count}"

# 4. modify/update column data for a row in the salespeople table.

josh = Salesperson.find_by({"first_name" => "Josh"})
josh["first_name"] = "Joshua"

# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng

salespeople = Salesperson.all

for current in salespeople
    first_name = current["first_name"]
    last_name = current["last_name"]
    name = "#{first_name} #{last_name}"
    puts name
end
