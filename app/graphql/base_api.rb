class BaseApi < GraphQL::Function
  def call(obj, args, ctx)
    begin
      action(obj, args, ctx)
    rescue StandardError => e
      GraphQL::ExecutionError
      .new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end
  end
end

