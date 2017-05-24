class Item < ActiveRecord::Base
  attr_accessible :price, :name, :real, :weight, :description

  validates :price, numericality: { greater_than: 0, allow_nil: true }
  validates :name, length: { minimum: 2 }, presence: true
  validates :name, :description, presence: true

  belongs_to :category

  after_initialize { puts "initialized" }  # Item.new; Item.first
  after_save       { puts "saved" }  # Item.save; Item.create; Item.update_attributes
  after_create     { puts "created" }
  after_update     { puts "updated" }
  after_destroy    { puts "destroyed" }  #Item.destroy
end
