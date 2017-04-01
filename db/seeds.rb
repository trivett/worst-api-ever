FactoryGirl.create_list(:user, )

User.all.each do |user|
  10.times do
    user.messages.create(body: FFaker::HipsterIpsum.phrase)
  end
end
