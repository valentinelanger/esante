class WorkerSerializer < ActiveModel::Serializer
  attributes :id, :status, :name, :nb_shifts, :nb_shifts_this_month


end
