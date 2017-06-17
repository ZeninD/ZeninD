class Item < ActiveRecord::Base

  validates :price, numericality: { greater_than: 0, allow_nil: true }
  validates :name, length: { minimum: 2 }, presence: true
  validates :name, :description, :price, presence: true

  has_many :positions
  has_many :carts, through: :positions

  has_many :comments, as: :commentable
  has_and_belongs_to_many :items

  belongs_to :category

  after_initialize { puts "initialized" }  # Item.new; Item.first
  after_save       { puts "saved" }  # Item.save; Item.create; Item.update_attributes
  after_create     { puts "created" }
  after_update     { puts "updated" }
  after_destroy    { puts "destroyed" }  #Item.destroy
end
