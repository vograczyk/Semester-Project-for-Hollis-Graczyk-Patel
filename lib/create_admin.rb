User.transaction do

User.delete_all
User.create( :email => 'admin@depot.com', :password => 'changeme', :password_confirmation => 'changeme')
user_id = (User.find_by(email: 'admin@depot.com')).id
  Message.create!(title: 'Admin Test Post',
                  content: 
                  %{<p>
                  Sample Text
                  </p>},
                  category: 'Urgent',
                  user_id: user_id)
end