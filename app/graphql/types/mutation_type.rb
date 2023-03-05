module Types
  class MutationType < Types::BaseObject
    field :add_author, Types::AuthorType, mutation: Mutations::AddAuthor
    
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

    field :create_author, Types::AuthorType, null: true, description: "create a new author" do
      argument :name, String, required: false
      argument :age, Integer, required: false
    end

    def create_author(name:, age:)
      Author.create(name: name, age: age, is_active: true)
    end

  end
end
