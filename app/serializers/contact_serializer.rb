class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :birthdate

  # def attributes(*args)
  #   h = super(*args)
  #   h[:birthdate] = (I18n.l(object.birthdate) unless object.birthdate.blank?)
  #   h
  # end
end
