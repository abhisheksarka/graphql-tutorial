Types::SignUpType = GraphQL::InputObjectType.define do
  name 'Sign Up'
  argument :name, !types.String
  argument :credentials, Types::SignInType
end