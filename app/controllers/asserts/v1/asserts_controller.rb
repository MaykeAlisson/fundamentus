module Asserts::V1
    class AssertsController < ApplicationController
        before_action :authorize_request

        # POST /asserts
        def create
            render json: { status: 'success' }    
        end

        private 

        def assert_params
          params.permit(
           :name, :user_id, :type, :category
          )
        end
    end
end