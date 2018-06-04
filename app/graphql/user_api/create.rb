class UserApi::Create < GraphQL::Function
  argument :user, !Types::SignUpType

  type !Types::UserType

  def call(_obj, args, _ctx)
    User.create!(
      name: args[:user][:name],
      email: args[:user][:email],
      password: args[:user][:password]
    )
  end
end