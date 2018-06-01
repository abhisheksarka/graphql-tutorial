Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :linkCreate, function: LinkQl::Create.new
end
