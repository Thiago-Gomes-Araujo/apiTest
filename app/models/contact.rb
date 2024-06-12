class Contact < ApplicationRecord
    belongs_to :kind
    has_many :phones
    has_one :address
    accepts_nested_attributes_for :phones, allow_destroy: true
    accepts_nested_attributes_for :address, allow_destroy: true

    
    def hello
        I18n.t('hello')
    end
end
