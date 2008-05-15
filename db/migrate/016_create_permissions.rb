class CreatePermissions < ActiveRecord::Migration
  def self.up
    create_table :permissions do |t|
      t.integer :role_id, :user_id, :null => false
      t.timestamps
    end

    Role.create(:rolename => 'administrator')
    user = User.new
    user.login = "admin"
    user.email = "admin@cartool.afoolishmanifesto.com"
    user.password = "admin"
    user.password_confirmation = "admin"
    user.save(false)
    user.send(:activate!)
    role = Role.find_by_rolename('administrator')
    user = User.find_by_login('admin')
    permission = Permission.new
    permission.role = role
    permission.user = user
    permission.save(false)
  end

  def self.down
    drop_table :permissions
  end
end
