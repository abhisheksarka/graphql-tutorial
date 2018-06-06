Types::SignInType = GraphQL::InputObjectType.define do
  name 'SignIn'

  argument :email, !types.String
  argument :password, !types.String
end