class UserSerializer
  include JSONAPI::Serializer
  attributes :email, :first_name, :last_name, :role, :national_id, :phone_number, :jti, :avatar_url
end
