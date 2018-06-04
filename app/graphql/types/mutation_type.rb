Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :linkCreate, function: LinkApi::Create.new
end
