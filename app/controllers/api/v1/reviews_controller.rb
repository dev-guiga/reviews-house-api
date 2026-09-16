# frozen_string_literal: true

module Api
  module V1
    class ReviewsController < ApplicationController
      before_action :set_review, only: %i[ show update destroy ]

      # GET /reviews
      def index
        @reviews = Review.all
      end

      # GET /reviews/1
      def show
      end

      # POST /reviews
      def create
        @review = Review.new(review_params)

        if @review.save
          render :show, status: :created, location: @review
        else
          render json: @review.errors, status: :unprocessable_content
        end
      end

      # PATCH/PUT /reviews/1
      def update
        if @review.update(review_params)
          render :show, status: :ok, location: @review
        else
          render json: @review.errors, status: :unprocessable_content
        end
      end

      # DELETE /reviews/1
      def destroy
        @review.destroy!
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_review
          @review = Review.find(params.expect(:id))
        end

        # Only allow a list of trusted parameters through.
        def review_params
          params.fetch(:review, {})
        end
    end
  end
end
