class LinkApi::Create < BaseApi
  argument :description, !types.String
  argument :url, !types.String

  type Types::LinkType

  def action(_obj, args, ctx)
    Link.create!(
      description: args[:description],
      url: args[:url],
      user: ctx[:current_user]
    )
  end
end
