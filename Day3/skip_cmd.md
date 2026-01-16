# Rails New Command Reference

 Database and Storage Commands

rails new app_name --skip-active-record
Explanation: Removes the Active Record ORM. Use this for apps using NoSQL (like MongoDB) or apps that do not require a database.
Result: No database configuration, no migrations folder, and no schema file.

rails new app_name --skip-active-storage
Explanation: Skips Active Storage features. Use this if your app does not need to upload or store files (like images or PDFs) on a server or cloud service.
Result: No storage configuration or active storage migration files.

---

 Frontend and Asset Commands

rails new app_name --skip-asset-pipeline
Explanation: Skips the setup of Sprockets or Propshaft. Use this if you are using a completely external frontend framework.
Result: No default assets folder or pipeline configuration.

rails new app_name --skip-javascript
Explanation: Prevents Rails from setting up a JavaScript bundler.
Result: No package.json or JavaScript entry points are generated.

rails new app_name --skip-css
Explanation: Skips CSS processing setup.
Result: No CSS folders or styling frameworks are pre-configured.

---

 Communication and Real-time Commands

rails new app_name --skip-action-mailer
Explanation: Removes the framework used for sending emails.
Result: No mailers folder and no mailer settings in the environment files.

rails new app_name --skip-action-mailbox
Explanation: Skips the framework used for receiving and routing incoming emails to your app.
Result: No mailbox folders or incoming mail database tables.

rails new app_name --skip-action-cable
Explanation: Removes WebSockets support. Use this if your app does not need real-time features like live chat or notifications.
Result: No channels folder and no cable configuration.

rails new app_name --skip-action-text
Explanation: Skips rich text editing features (Trix editor).
Result: No action text migrations or database tables.

---

 Testing and Version Control Commands

rails new app_name --skip-test
Explanation: Skips the default Minitest framework. Most developers use this if they plan to install RSpec instead.
Result: No test folder is created.

rails new app_name --skip-git
Explanation: Prevents Rails from automatically initializing a Git repository.
Result: No .git folder and no .gitignore file.

rails new app_name --skip-keeps
Explanation: Prevents Rails from placing .keep files in empty folders.
Result: Empty directories will remain empty without hidden files.

---

 Deployment and Automation Commands

rails new app_name --skip-docker
Explanation: Skips the automatic generation of Docker configuration files.
Result: No Dockerfile or docker-compose.yml files in the root directory.

rails new app_name --skip-bundle
Explanation: Tells Rails to create the files but not run the bundle install command.
Result: Project structure is created quickly, but you must run bundle install manually later.
