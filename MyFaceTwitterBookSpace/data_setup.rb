User.destroy_all
joe = User.create(:name => "Joe")
joe.add_friend Friend.find_by_last_name("Troy")

fred = User.create(:name => "Fred")
fred.add_friend Friend.find_by_last_name("Jones")
