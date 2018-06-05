class VoteApi::Create < BaseApi
  argument :link_id, types.ID

  type Types::VoteType

  def action(_obj, args, ctx)
    Vote.create!(
      link: Link.find_by(id: args[:link_id]),
      user: ctx[:current_user]
    )
  end
end