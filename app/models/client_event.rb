class ClientEvent < ApplicationRecord
  belongs_to :event
  belongs_to :client
  belongs_to :payment_method
  belongs_to :ticket
end
