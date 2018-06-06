class BaseApi < GraphQL::Function
  def call(obj, args, ctx)
    begin
      action(obj, args, ctx)
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    rescue StandardError => e
      GraphQL::ExecutionError.new("Internal server error: #{e.message}")
    end
  end
end

