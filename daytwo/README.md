# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

 # day2
Rails Day 2: Database & Scaffolding Cheat Sheet

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
