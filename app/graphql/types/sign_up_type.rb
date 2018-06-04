Types::SignUpType = GraphQL::InputObjectType.define do
  name 'Sign Up'
  argument :name, !types.String
  argument :email, !types.String
  argument :password, !types.String
end