# frozen_string_literal: true

module Mutations
  class UpdateTask < BaseMutation
    # Return fields
    field :task, Types::TaskType, null: false

    # Arguments
    argument :id, ID, required: true
    argument :title, String, required: false
    argument :emoji, String, required: false

    # Resolve method
    def resolve(id:)
      task = Task.find(id)
      task.update!(title: title, emoji: emoji)
      { task: task }
    end
  end
end
