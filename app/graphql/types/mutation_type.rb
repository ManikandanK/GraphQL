# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor
    field :update_author, Boolean, null: false, description:"Update an author" do
      argument :author, Types::AuthorInputType, required: true
    end

    field :delete_author, Boolean, null: false, description:"Delete an author" do
      argument :id, ID, required: true
    end

    def update_author(author:)
      existing = Author.find author[:id]
      existing.update author.to_h
    end

    def delete_author(id:)
      existing = Author.find id
      existing.delete
    end
  end
end
