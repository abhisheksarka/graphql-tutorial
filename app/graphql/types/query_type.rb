Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  field :linkIndex, function: LinkQl::Index.new
  field :linkShow, function: LinkQl::Show.new
end
