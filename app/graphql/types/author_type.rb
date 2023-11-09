class Types::AuthorType < Types::BaseObject
  description "Author Details"
  field :id, ID, null: false
  field :first_name, String, null: true
  field :full_name, String, null: true
  field :last_name, String, null: true
  field :yob, Int, null: false
  field :is_active, Boolean, null: true
  field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  field :coordenate, Types::CoordinateType, null: false
  field :publication_years, [Int], null: false

  field :errors, [Types::ErrorType], null: true

  def errors
    object.errors.map{ |er| { field_name: er.attribute, errors: object.errors[er.attribute]} }
  end

  def self.authorized?(object, context)
    !!object.is_active
  end
end

class Types::AuthorInputType < Types::BaseInputObject
  graphql_name "AuthorInputType"  
  description "All the attributes related to author"

  argument :id, ID, required: false
  argument :first_name, String, required: false
  argument :last_name, String, required: false
  argument :yob, Int, required: true
  argument :is_active, Boolean, required: false

end