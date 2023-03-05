module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :age, Integer, null: true
    field :is_active, Boolean, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: true
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: true
    field :full_name, String, null: true

    def full_name
      "#{object.name} -> #{object.age}"
    end
  end

  class AuthorInputType < Types::BaseInputObject

    graphql_name "AuthorInputType"
    description "All in One"

    argument :name, String, required: false
    argument :age, Integer, required: false
  end
end
