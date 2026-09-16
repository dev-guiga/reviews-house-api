module Api
  module V1
    class InteractionsReviewsController < ApplicationController
      before_action :set_interactions_review, only: %i[ show update destroy ]

      # GET /interactions_reviews
      def index
        @interactions_reviews = InteractionsReview.all
      end

      # GET /interactions_reviews/1
      def show
      end

      # POST /interactions_reviews
      def create
        @interactions_review = InteractionsReview.new(interactions_review_params)

        if @interactions_review.save
          render :show, status: :created, location: @interactions_review
        else
          render json: @interactions_review.errors, status: :unprocessable_content
        end
      end

      # PATCH/PUT /interactions_reviews/1
      def update
        if @interactions_review.update(interactions_review_params)
          render :show, status: :ok, location: @interactions_review
        else
          render json: @interactions_review.errors, status: :unprocessable_content
        end
      end

      # DELETE /interactions_reviews/1
      def destroy
        @interactions_review.destroy!
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_interactions_review
          @interactions_review = InteractionsReview.find(params.expect(:id))
        end

        # Only allow a list of trusted parameters through.
        def interactions_review_params
          params.fetch(:interactions_review, {})
        end
    end
  end
end
