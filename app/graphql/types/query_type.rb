Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  field :linkIndex, function: LinkApi::Index.new
  field :linkShow, function: LinkApi::Show.new
end
