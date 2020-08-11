module LoginMacros
  def login_as(user)
    visit login_path
    fill_in 'user[name]', with: user.email
    fill_in 'user[password]', with: 'password'
    click_on 'ログイン'
  end
end