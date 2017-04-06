

class PositionSerializer < ActiveModel::Serializer
    attributes :id, :port_name, :type, :name, :сapacity, :date

    def port_name
      object.ports.last.title
    end
      


    def type
      if object.type_cargo?
        return 'Cargo'
      else
        return 'Ship'
      end
    end

    def date
      object.inports.last.date
    end

    def сapacity
        object.hold_capacity
    end
end