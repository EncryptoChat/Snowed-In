user = User.new
user.email = 'test@example.com'
user.username = 'testUser'
user.password = 'testpassword'
user.password_confirmation = 'testpassword'
user.save!
