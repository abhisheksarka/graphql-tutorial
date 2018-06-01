class LinkQl::Show < GraphQL::Function
  type Types::LinkType

  def call(_obj, args, _ctx)
    ::Link.find(1)
  end
end