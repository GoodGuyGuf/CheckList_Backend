class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :checklist_id, :checked, :procedure
end
