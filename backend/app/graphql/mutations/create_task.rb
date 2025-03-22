# frozen_string_literal: true

module Mutations
  class CreateTask < BaseMutation
    # Return fields
    field :task, Types::TaskType, null: false

    # Arguments
    argument :title, String, required: true
    argument :emoji, String, required: true

    # Resolve method
    def resolve(title:, emoji:)
      task = Task.create!(title: title, emoji: emoji)
      { task: task }
    end
  end
end
