class LinkApi::Show < BaseApi
  type Types::LinkType
  argument :id, !types.Int

  def action(_obj, args, _ctx)
    ::Link.find(args['id'])
  end
end
