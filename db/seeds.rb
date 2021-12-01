user = User.new
user.email = 'test@example.com'
user.username = 'testUser'
user.password = 'testpassword'
user.password_confirmation = 'testpassword'
user.save!

n = 1
until n == 21 do
  Room.create(name: 'Example Room ' + n.to_s)
  n += 1
end

room = Room.new
room.name = 'Rick Roll Support Group'
room.save!
