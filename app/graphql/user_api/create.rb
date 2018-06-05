class UserApi::Create < BaseApi
  argument :user, !Types::SignUpType

  type !Types::UserType

  def action(_obj, args, _ctx)
    User.create!(
      name: args[:user][:name],
      email: args[:user][:email],
      password: args[:user][:password]
    )
  end
end
