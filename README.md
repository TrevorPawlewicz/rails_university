# Ruby on Rails University

| Dependency      | Version   | Links  |
| --------------- |:---------:| ------:|
| Ruby            | 2.5.1p57  | https://www.ruby-lang.org/en/ |
| Rails           | 5.1.7     | https://rubyonrails.org/ |
| jQuery          | ???       | https://jquery.com/ |
| Materialize CSS | 1.0.0     | https://materializecss.com/ |
| Materialize-Sass| 1.0.0     | https://github.com/mkhairi/materialize-sass |

  * require material_icons in `application.css`

---
**To communicate with the Database, there needs to be a corresponding Model.**

model ex: _**app/models/course.rb**_

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

`reload!` rails console to reflect changes made to the models

---
### Remove Rails field_with_errors wrapper!!!
add this block to your __`config/environment.rb`__:

```ruby
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  html_tag.html_safe
end
```
