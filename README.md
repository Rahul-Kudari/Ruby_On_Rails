# Day 1
# Ruby on Rails Setup (Windows)

Step 1: Install Ruby
- Download RubyInstaller from https://rubyinstaller.org
- Run the installer and complete setup
- Verify installation:
  ruby -v

Step 2: Install Rails
- Open Command Prompt as Administrator
- Install Rails gem:
  gem install rails
- Verify installation:
  rails -v

Step 3: Create New Rails Project
- Navigate to your projects folder:
  cd C:\Users\rahul
  mkdir my_app
  cd my_app
- Create a new Rails app:
  rails new my_app
  cd my_app

Step 4: Run Rails Server
- Start the server:
  rails server
- Open browser and visit:
  http://localhost:3000
- Run on a different port (optional):
  rails server -p 4000
- Stop the server:
  Press Ctrl + C in the terminal

  
 # day2
# Rails Day 2: Database & Scaffolding Cheat Sheet

Database Clients
DBeaver (GUI Tool)
- Supports: PostgreSQL, MySQL, Oracle, SQL Server, NoSQL
- Pros: Visual ER diagrams, Query Builder, beginner-friendly
- Cons: Heavy, consumes more RAM
- Note: DBeaver is only a client; DB server must be running

psql (Command Line)
- Supports: PostgreSQL only
- Pros: Fast, lightweight, ideal for scripts & terminal work
 Rails Project Setup
- Create Project:
  rails new my_application -d postgresql
  (-d postgresql → tells Rails to use PostgreSQL instead of SQLite)

- Gemfile Check:
  gem 'pg'   # Bridge between Rails & PostgreSQL

Database Initialization
- rails db:create → Creates the database
- rails db:migrate → Runs migrations to build tables

Scaffolding (CRUD Generation)
- Command:
  rails generate scaffold Customer name:string email:string age:integer
- Generates Model, View, Controller automatically
- Enables immediate CRUD (Create, Read, Update, Delete)

Rails Console
- rails c → Opens Rails Console
- Test data & run Ruby code directly against DB

 Migrations & Versioning
- Migrations: Files tracking DB structure changes
- Versioning: Each migration has a unique ID
- Collaboration: Team members migrate to stay synced
- Exceptions: Errors occur if app runs without latest migrations

Key Commands Summary
- rails c → Open Rails Console
- rails db:create → Create DB
- rails db:migrate → Run migrations
- rails g scaffold → Generate full resource structure

# day 3



Rails Project Configuration Guide

The Core Structure
* bin/: The "Executable Tools." Contains scripts like bin/rails that automate code generation, database management, and server startup.
* config/: The "Application Brain." The central hub for environment settings, database credentials, and routing rules.
* application.rb: The "Global Hub." Boots the app, loads gems, and sets universal rules (like Time Zones). Errors here prevent the app from starting.
* puma.rb: The "Engine Room." Configures the web server's "muscle" by defining threads and workers to handle multiple user requests simultaneously.

Environments (config/environments/)
* development.rb: The "Builder's Bench." Enables instant code reloading and detailed error reports for fast debugging.
* test.rb: The "Sandbox." An isolated area to run tests and simulate errors without risking real data.
* production.rb: The "Vault." Optimizes speed and locks down security by hiding errors and forcing HTTPS (config.force_ssl = true).

Initializers (config/initializers/)
Small Ruby files that run once during startup to set specific rules:
* assets.rb: The "Stylist." Instructions for mashing CSS/JS into fast, compressed files for production.
* content_security_policy.rb: The "Security Guard." Prevents script injection (XSS) by whitelisting trusted content sources.
* filter_parameter_logging.rb: The "Privacy Mask." Blurs sensitive data (passwords/CC numbers) in logs.
* inflections.rb: The "Grammar Coach." Teaches Rails how to pluralize irregular words (e.g., Person -> People).
* ci.rb: The "Test Detector." Adjusts settings for automated environments (like GitHub Actions) to speed up testing.

Configuration Files (.yml)
* database.yml: The "Bridge." Connects your app code to your physical data storage.
* cable.yml: The "Live Wire." Configures WebSockets for real-time features like chat or live alerts.
* cache.yml: The "Short-term Memory." Stores "pre-calculated" results in high-speed memory for instant retrieval.
* queue.yml: The "Shift Schedule." Manages background workers (Sidekiq) to handle heavy tasks like emails.
* storage.yml: The "Shipping Manifest." Defines where to upload files (Local Disk vs. Cloud like Amazon S3).
* deploy.yml: The "Launch Checklist." Steps to build, test, and ship your code to a live server.

The Boot Sequence
1. boot.rb: Grabs the keys (Loads Bundler and Gems).
2. application.rb: Sets the rules (Universal configurations).
3. environment.rb: Flips the switch (Initializes the entire engine).



