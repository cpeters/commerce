module Api::V1
  class BaseController < ActionController::API

    before_action do
      self.namespace_for_serializer = Api::V1
    end

    rescue_from ActionController::ParameterMissing do
      api_error(status: 400, errors: 'Invalid parameters')
    end

    rescue_from ActiveRecord::RecordNotFound do
      api_error(status: 404, errors: 'Resource not found!')
    end

    private

    def api_error(status: 500, errors: [])
      render json: errors, status: status
    end

  end
end
