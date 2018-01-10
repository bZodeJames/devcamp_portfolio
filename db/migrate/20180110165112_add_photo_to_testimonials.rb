class AddPhotoToTestimonials < ActiveRecord::Migration[5.1]
  def change
    add_column :testimonials, :img, :string
  end
end
