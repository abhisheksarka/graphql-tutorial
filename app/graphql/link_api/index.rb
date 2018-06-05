class LinkApi::Index < BaseApi
  type !types[Types::LinkType]

  def action(_obj, args, _ctx)
    ::Link.all
  end
end
