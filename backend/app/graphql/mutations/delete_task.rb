# frozen_string_literal: true

module Mutations
  class DeleteTask < BaseMutation
    # Return fields
    field :id, Types::TaskType, null: false

    # Arguments
    argument :id, ID, required: true

    # Resolve method
    def resolve(id:)
      task = Task.find(id)
      task.destroy
      { id: id }
    end
  end
end
