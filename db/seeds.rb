FactoryGirl.create_list(:user, 20)

User.all.each do |user|
  r = Random.new
  t = r.rand(6..17)
  10.times do
    user.messages.create(body: FFaker::HipsterIpsum.phrase)
  end
end
