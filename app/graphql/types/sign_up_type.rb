Types::SignUpType = GraphQL::InputObjectType.define do
  name 'SignUp'
  argument :name, !types.String
  argument :email, !types.String
  argument :password, !types.String
end