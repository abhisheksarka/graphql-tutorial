class LinkApi::Index < GraphQL::Function
  type !types[Types::LinkType]

  def call(_obj, args, _ctx)
    ::Link.all
  end
end