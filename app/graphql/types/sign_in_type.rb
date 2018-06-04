Types::SignInType = GraphQL::InputObjectType.define do
  name 'Sign In'

  argument :email, !types.String
  argument :password, !types.String
end