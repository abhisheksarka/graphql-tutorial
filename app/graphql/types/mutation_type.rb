Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :linkCreate, function: LinkApi::Create.new
  field :userCreate, function: UserApi::Create.new
  field :userSignIn, function: UserApi::SignIn.new
  field :voteCreate, function: VoteApi::Create.new
end
