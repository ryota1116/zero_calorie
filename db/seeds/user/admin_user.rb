User.create!([
  {
    name: "管理ユーザー",
    email: Rails.application.credentials.dig(:admin_user, :email),
    password: Rails.application.credentials.dig(:admin_user, :password),
    password_confirmation: Rails.application.credentials.dig(:admin_user, :password),
    role: :admin
  },
])
