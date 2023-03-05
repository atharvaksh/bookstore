module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :test_field, String, null: false, description: "An example field added by the generator" do
      argument :name, String, required: true
    end
    def test_field(name: )
      Rails.logger.info context[:time]
      "Hello #{name} !"
    end

    field :author, Types::AuthorType, null: true, description: "one author field" do
      argument :id, ID, required: true
    end

    def author(id:)
      Author.where(id: id).first
    end

    field :authors, [Types::AuthorType], null: true, description: "all authors"

    def authors
      Author.all
    end

  end
end
