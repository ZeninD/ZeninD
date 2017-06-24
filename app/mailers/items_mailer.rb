class ItemsMailer < ApplicationMailer

  default from: "info@mystore.localhost",
          template_path: "mailers/items"

  def item_destroyed(item)
    @item = item
    mail to: "zenin@onliker.by",
         subject: "Item destroyed"
  end

end
