describe User do
  context '#.find' do
    it'returns user id' do
      User.find('giacomo.n27@gmail.com', 123)
    end
  end
end
