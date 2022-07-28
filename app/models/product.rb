# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  visible     :boolean          default(TRUE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#  image       :string
#
class Product < ApplicationRecord

    extend FriendlyId
    friendly_id :name, use: :slugged

    validates :name, presence: { message: 'El nombre es requirido.' } 
    validates :description, presence: {message: 'La descripción es requerida.'}
    validates :name, length: { maximum:200, minimun: 2 }

    has_one_attached :image, :dependent => :destroy
    #uniqueness, length, presence, format con regex
end
