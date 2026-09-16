module Api
  module V1
    module Public
      class DashboardsController < ApplicationController
      before_action :set_api_public_dashboard, only: %i[ show update destroy ]

      # GET /api/public/dashboards
      def index
        @dashboards = Dashboard.all
      end

      # GET /api/public/dashboards/1
      def show
      end

      # POST /api/public/dashboards
      def create
        @dashboard = Dashboard.new(dashboard_params)

        if @dashboard.save
          render :show, status: :created, location: @dashboard
        else
          render json: @dashboard.errors, status: :unprocessable_content
        end
      end

      # PATCH/PUT /api/public/dashboards/1
      def update
        if @dashboard.update(dashboard_params)
          render :show, status: :ok, location: @dashboard
        else
          render json: @dashboard.errors, status: :unprocessable_content
        end
      end

      # DELETE /api/public/dashboards/1
      def destroy
        @dashboard.destroy!
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_dashboard
          @dashboard = Dashboard.find(params.expect(:id))
        end

        # Only allow a list of trusted parameters through.
        def dashboard_params
          params.fetch(:dashboard, {})
        end
      end
    end
  end
end
