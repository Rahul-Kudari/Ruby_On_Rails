# Day13

# 1. DATABASE & MIGRATIONS

- Add Column: rails generate migration AddColumnPhoneToCustomer phone_number:integer

- Remove Column: rails generate migration RemoveColumnPhoneToCustomer phone_number:integer
- Execute: rails db:migrate

- Primary Keys: The 'id' column is auto-generated as the Primary Key; aliasing can be used.


# 3. ACTION TEXT (Rich Text Editing)
- Setup: rails action_text:install -> rails db:migrate

- Model: Add "has_rich_text :field_name" (e.g., :about_me) to the model
- add field_name in controller (customer_param method -> params.expect(customer: [ :name, :email,:about_me ])) 
- declare field_name in View (index.html, edit.html etc)


# 4. RUBY LOGIC
- Array Intersection: Use the "&" operator (e.g., array1 & array2) to find common elements.
- Duplicates: Use "|" to merge arrays and remove duplicates.

---

WORK TO-DO LIST:

1. Add "raise params.inspect" to all methods and routes to verify data flow.
2. Research how array intersection happens in Ruby.
3. Implement Action Text for the "Product" model.
4. Compare schema.rb before and after Action Text installation to see the difference.
5. explore the - Other Media Gems: CarrierWave, Paperclip (for file handling).

inspect in index def -> #<ActionController::Parameters {"controller" => "customers", "action" => "index"} permitted: false>

