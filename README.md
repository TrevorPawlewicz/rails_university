# Ruby on Rails University

* Ruby version: 2.5.1p57
*  Rails version: 5.1.7
*  JQuery:
*  Materialize-Sass: 1.0.0
  * require material_icons in application.css

---
**To communicate with the Database, there needs to be a corresponding Model.**

model ex: _app/models/course.rb_

create migration file for the Courses and Students tables in the CLI:
- `rails generate migration create_courses`
- `rails generate migration create_students`

_migration example_: db/migrate/20200103154421_create_courses.rb

```ruby
class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :short_name
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
```

after files are populated with the proper fields, migrate:
- `rails db:migrate`
- creates a __schema.rb__ file
