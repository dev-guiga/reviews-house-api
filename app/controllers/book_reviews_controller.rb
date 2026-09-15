class BookReviewsController < ApplicationController
  before_action :set_book_review, only: %i[ show update destroy ]

  # GET /book_reviews
  def index
    @book_reviews = BookReview.all

    render json: @book_reviews
  end

  # GET /book_reviews/1
  def show
    render json: @book_review
  end

  # POST /book_reviews
  def create
    @book_review = BookReview.new(book_review_params)

    if @book_review.save
      render json: @book_review, status: :created, location: @book_review
    else
      render json: @book_review.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /book_reviews/1
  def update
    if @book_review.update(book_review_params)
      render json: @book_review
    else
      render json: @book_review.errors, status: :unprocessable_content
    end
  end

  # DELETE /book_reviews/1
  def destroy
    @book_review.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_review
      @book_review = BookReview.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def book_review_params
      params.fetch(:book_review, {})
    end
end
