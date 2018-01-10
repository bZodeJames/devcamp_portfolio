class TestimonialsController < ApplicationController
    before_action :set_testimonial, only: [:edit, :show, :update, :destroy]
    access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all

    def index
        @testimonial = Testimonial.all
    end

    def new
        @testimonial = Testimonial.new
    end

    def create
        @testimonial = Testimonial.new(testimonial_params)

       respond_to do |format|
            if @testimonial.save
                format.html { redirect_to @testimonial, notice: "Your article has been published" }
            else
                format.html { render :new }
            end
        end
    end

    def show
    end

private

    def testimonial_params
        params.require(:testimonial).permit(:name, :title, :body, :img)
    end

    def set_testimonial
        @testimonial = Testimonial.find(params[:id])
    end

end
