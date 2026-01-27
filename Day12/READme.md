Component              Feature/Description                                Version
---------------------------------------------------------------------------------
Active Model           Represent models without tables                    Rails 3
Active Record          ORM: model ↔ table, db.yml config                  Rails 1
Action View            Handles templates (html.erb, xml.erb, etc.)        -
Action Controller      Manages request/response, links model+view         -
Action Pack            Action Controller + Action View                    Rails 1
Action Text            Rich text editing (Trix integration)               Rails 6+
Action Mailer          Email sending, classes in mailers folder           -
Action Cable           WebSockets (not in Rails <5)                       Rails 5+
Active Storage         Built-in file storage, no 3rd party needed         Rails 5+

Notes:
- Not every model needs a table; Active Model helps represent.
- ORM: each record = object; MongoDB via mongoid gem.
- Thin controller, fat model principle.
- Routing: route → controller → action (Action Pack).
- Action Dispatch: routes dispatched to controller actions.
- TinyMCE gem: rich text styling.

Generate Commands:
- rails g model User name:string
- rails g migration Products rating:integer
- rails g controller ControllerName
- rails install storage
- rails install component_name

Migration Flow:
- rails g migration → db:migrate
- Add/modify/delete columns via migration
- Safe migrate: define `up` (apply) and `down` (rollback)

Errors:
- "Migrations are pending" → run `bin/rails db:migrate`
- No route matches [GET] "/users" → add route
- Removing methods/views → path exists but error if method missing
- Deleting index view → missing template error

Run Server:
- rails s