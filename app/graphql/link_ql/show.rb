class LinkQl::Show < GraphQL::Function
  type Types::LinkType
  argument :id, !types.Int

  def call(_obj, args, _ctx)
    ::Link.find(args['id'])
  end
end