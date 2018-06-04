class VoteApi::Create < GraphQL::Function
  argument :link_id, types.ID

  type Types::VoteType

  def call(_obj, args, ctx)
    Vote.create!(
      link: Link.find_by(id: args[:link_id]),
      user: ctx[:current_user]
    )
  end
end