

2. RUBY SYNTAX & DYNAMIC INPUT
------------------------------------------------------------
* Comments:
    - Single-line: # This is a comment
    - Multi-line: =begin ... =end
* Dynamic User Input:
    - name = gets.chomp         # Takes string input
    - id = gets.chomp.to_i      # Takes input and converts to Integer
* Strings vs. Symbols:
    - Strings: Mutable (can be changed). Used for data.
    - Symbols: Immutable (fixed). Often used as keys (e.g., :name).

3. RAILS DATA TYPES
------------------------------------------------------------
- String: Short text (max 255 characters).
- Text: Large data (long descriptions).
- Decimal: High precision (best for Money/Price).
- Integer: Whole numbers (Stock/Quantity).
- Boolean: True or False (Active/Inactive status).



# Generate Product scaffold (Use singular 'Product')
rails generate scaffold Product name:string description:text price:decimal stock:integer is_active:boolean

# Apply changes to the database
rails db:migrate

# Start the Rails server
rails s





# using Faker gem we can insert the default data that already present in Faker gem
Commerce is provides the products related to e-commerce 

Example Seeds.rb Logic:

Product.create(
  name: Faker::Commerce.product_name,
  description: "Simple description",
  price: Faker::Commerce.price(range: 200..100000),
  stock: rand(10..20),
  is_active: [true, false].sample
)

5. GEM MANAGEMENT & FAKER
------------------------------------------------------------
* bundle install: Installs gems from the Gemfile.
* bundle update: Updates gems to latest versions.
* gem list: Shows all installed gems.
* Faker Gem: Used in 'db/seeds.rb' to generate fake data.


# check is that gem installed or not 
bundle info <gem_name>

# Run seeds command:
rails db:seed

rails db:migrate

# Insert Values directly into the database 

open : rails console

ModelName.create(attribute1: value, attribute2: value)
Product.create(name: "Laptop", description: "High-end gaming laptop", price: 75000, stock: 10, is_active: true);

