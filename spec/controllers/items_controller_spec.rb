require 'spec_helper'

describe ItemsController do

  describe "show action" do

    # it "renders show template if an item is found" do
      # item = FactoryGirl.create(:item)
      # get :show, { id: item.id }
      # response.should render_template("show") # expecting <"show"> but was a redirect to <http://test.host/users/sign_in>
    # end

    # it "renders 404 page if an item is not found" do
      # get :show, { id: 0 }
      # response.status.should == 404
    # end

  end

  describe "create action" do

    # it "redirects to item path if validation pass" do
      # post :create, item: { name: 'Item 1', price: '10' }
      # response.should redirect_to(item_path(assigns(:item)))
    # end

    # it "renders new page again if validations fail" do
      # post :create, item: { name: 'Item 1', price: 0 }
      # response.should render_template("new") # expecting <"new"> but was a redirect to <http://test.host/users/sign_in>
    # end

  end

end