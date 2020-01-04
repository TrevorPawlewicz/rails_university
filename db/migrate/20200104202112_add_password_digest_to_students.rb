class AddPasswordDigestToStudents < ActiveRecord::Migration[5.1]
  def change
    #           table,      name,            type
    add_column :students, :password_digest, :string
  end
end
