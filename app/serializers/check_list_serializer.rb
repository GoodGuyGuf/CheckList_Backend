class CheckListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :name
end
