class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate #, :author

# Associações
  belongs_to :kind
  has_many :phones
  has_one :address

  link(:self) { contact_url(object.id) } 
  link(:kind) { kind_url(object.kind.id) } 

  # def author
  #   "Thiago"
  # end
  meta do
    { author: "Thiago Gomes"}
  end
  def attributes(*args)
    h = super(*args)
    # pt-br
    # h[:birthdate] = (I18n.l(object.birthdate) unless object.birthdate.blank?)

    #Data ISO 8601
    h[:birthdate] = object.birthdate.to_time.iso8601 unless object.birthdate.blank?
    h
  end
end


# h[:birthdate] = object.birthdate.to_time.iso8601 unless object.birthdate.blank?
# h[:birthdate] = (I18n.l(object.birthdate) unless object.birthdate.blank?)