# DAY 4

1. Core Architecture & Philosophy
Convention over Configuration (CoC): A fundamental Rails principle. By following standard naming and folder conventions, manual configuration is minimized.
Concerns: Used to handle repetitive logic. Moving shared code into concerns keeps the application DRY (Don't Repeat Yourself).
Thin vs. Fat Models:
    Fat Model: Contains the business logic (e.g., customer data, "inactive" status logic). This is preferred to keep controllers clean.
    Thin Model: A design goal to prevent models from becoming bloated, though core data logic remains here.

2. File & Directory Structure


-lib: Contains Rake files and extended modules that don't fit in the standard MVC folders.

-public: Where all assets (images, compiled CSS/JS) are resolved and served to the web. 

-test: Contains all unit testing framework code and test suites.

-tmp: Temporary folder automatically generated when running the Rails server.

-storage:  (Rails 7+) Handles server-related code for cloud and local file uploads.

-config/credentials.yml :Securely stores secrets and encrypted features. 

3. Database & Models
-Active Model: Provides a known set of interfaces for usage in model classes. It allows Ruby code to interact with the database without writing manual SQL.

-schema.rb: A snapshot of the current database structure. Warning: Never edit this file directly; always use migrations to modify the database.

-Action Components: Logic is segregated between the Controller, Model, and View to maintain a clean separation of concerns.

 5. Assets & Frontend
-Asset Pipeline: Responsible for processing, compressing, and managing CSS and JavaScript.

-Webpacker: Built-in for Rails 6 to manage and bundle modern JavaScript files.

-Layouts: Used for universal changes (e.g., global navigation or background colors) that apply across the entire application.

-Manifest Files: Directs the modification and inclusion of specific UI elements and libraries like Bootstrap.

 7. Gems & Dependencies
-Gemfile.lock: Tracks specific versions and dependencies between gems.

-Note: Do not manually modify this file; it is updated automatically via `bundle install`.

-CarrierWave: A gem used for file storage and management (standard for versions below Rails 6); connects to external storage APIs.


 9. Testing, Tooling & Communication

-Testing Frameworks:

    Minitest: Lightweight and the Rails default; however, it lacks native support for JavaScript testing.
    RSpec: A popular, robust alternative used for behavior-driven development and unit testing.
-Action Mailer: Handles email logic, such as sending "Welcome" emails or order confirmations in e-commerce apps.


-Docker: Enables running the Rails project in a containerized environment without needing a local Ruby/Rails installation.

-Log Files: Configurable for different environments (Development, Production) to track application behavior and errors.

-gitattributes: Used to define attributes for specific paths, such as preventing direct modification of certain files or handling line endings.



