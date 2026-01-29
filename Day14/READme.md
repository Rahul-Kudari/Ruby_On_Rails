ACTIVE STORAGES

rails active_storage:install

Installed at the time of Action Text

3 tables generated in the migrate folder

Active Storage is used to store media files such as images, videos, PDFs, and documents

storage.yml provides configuration for Ruby to connect to AWS, disk storage, and other storage devices

storage.yml supports multiple environments

For AWS storage, a separate gem is required in Ruby

In the development environment, local storage is commonly used

Local file storage is configured using storage.yml

config.active_storage.service = :local

Install → Migration → storage.yml → write related configuration → call it in environment → mention in production.rb → extend environment if required

Active Storage validations can be applied

Helpers are used to avoid repetitive code

Check attachment before displaying image  
If attachment exists, display image  
If not, display no photo

Content may vary for images and files

Image processing is handled using an image processing gem

has_one_attached / has_many_attached

The same field name is used in model, controller params, and views

WORK

Invoice attachment as PDF in product

Form helpers documentation

Customer migration for date of birth with date type

rails g migration AddColumnDobToCustomer dob:date

rails db:migrate

Explore form helpers
