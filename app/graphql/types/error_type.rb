class Types::ErrorType < Types::BaseObject
  description "Error Details"
  field :field_name, String, null: false
  field :errors, [String], null: true
end