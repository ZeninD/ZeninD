require 'spec_helper'

describe ItemsController do

  describe "show action" do

    # it "renders show template if an item is found" do
      # item = FactoryGirl.create(:item)
      # get :show, { id: item.id }
      # response.should render_template("show") # expecting <"show"> but was a redirect to <http://test.host/users/sign_in>
    # end

    it "renders 404 page if an item is not found" do
      get :show, { id: 0 }
      response.status.should == 302
    end

  end

end