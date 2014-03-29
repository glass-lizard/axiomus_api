require_relative 'base_order'
require_relative '../address/ems_address'
require_relative '../services/post_services'

class AxiomusApi::EmsOrder < AxiomusApi::BaseOrder
  #уточнить
  xml_attribute :d_date
  xml_attribute :incl_delivery_sum, optional: true
  xml_field :address, type: AxiomusApi::EmsAddress
  xml_field :services, type: AxiomusApi::PostServices

end