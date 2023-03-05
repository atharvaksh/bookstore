module Mutations
  class AddAuthor < GraphQL::Schema::Mutation
    null true

    # argument :name, String, required: false
    # argument :age, Integer, required: false

    argument :author, Types::AuthorInputType, required: true

    # def resolve(name:, age:)
    #   Author.create(name: name, age: age, is_active: true)
    # end

    def resolve(author:)
      Author.create(author.to_h)
    end

  end
end
