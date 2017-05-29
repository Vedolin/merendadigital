QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end
end
