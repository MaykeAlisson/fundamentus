class ApplicationController < ActionController::API
    
    def not_found
        render json: { error: 'not_found' }
      end
    
      def authorize_request
        request_secret = request.headers['SECRET-KEY']
        secret = ENV["SECRET_KEY"]

        if request_secret != secret
          render json: { errors: 'Unauthorized' }, status: :unauthorized

        end
      end
end
