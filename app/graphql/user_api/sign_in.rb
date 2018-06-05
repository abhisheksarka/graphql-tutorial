class UserApi::SignIn < BaseApi
  argument :user, !Types::SignInType

  type do
    name 'SignInPayload'
    field :token, types.String
    field :user, Types::UserType
  end

  def action(_obj, args, ctx)
    email = args[:user][:email]
    password = args[:user][:password]
    return unless email
    user = User.find_by email: email
    return unless user
    return unless user.authenticate(password)
    crypt = ActiveSupport::MessageEncryptor.new(
      Rails.application.secrets.secret_key_base.byteslice(0..31)
    )
    token = crypt.encrypt_and_sign("user-id:#{ user.id }")
    ctx[:session][:token] = token
    OpenStruct.new(user: user, token: token)
  end
end

