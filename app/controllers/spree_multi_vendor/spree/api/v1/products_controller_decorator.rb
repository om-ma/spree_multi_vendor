module SpreeMultiVendor
  module Spree
    module Api
      module V1
        module ProductsControllerDecorator
          def self.prepended(base)
            base.before_action only: [:create, :update] do
              set_vendor_id(:product)
            end
          end
        end
      end
    end
  end
end
Spree::Api::V1::ProductsController.prepend SpreeMultiVendor::Spree::Api::V1::ProductsControllerDecorator
