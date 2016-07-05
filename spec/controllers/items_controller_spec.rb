require 'rails_helper'
include 'devise'

RSpec.describe ItemsController, type: :controller do

=begin
  describe "GET new" do
      it "returns http success" do
        get :new
        expect(response).to have_http_status(:success)
      end

      it "renders the #new view" do
        get :new
        expect(response).to render_template :new
      end

      it "instantiates @item" do
        get :new
        expect(assigns(:item)).not_to be_nil
      end
    end

    describe "POST create" do
      it "increases the number of Items by 1" do
        expect{post :create, item: {name: "please do this!"}}.to change(Item,:count).by(1)
      end

      it "assigns the new item to @item" do
        post :create, item: {name: "please do this!"}
        expect(assigns(:item)).to eq Item.last
      end

      it "redirects to the new item" do
        post :create, item: {name: "please do this!"}
        expect(response).to redirect_to Item.last
      end
    end

    #show. may not register since show is only stubbed.
    describe "GET show" do
    it "returns http success" do
      get :show, {id: my_item.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      get :show, {id: my_item.id}
      expect(response).to render_template :show
    end

    it "assigns my_post to @post" do
      get :show, {id: my_item.id}
      expect(assigns(:item)).to eq(my_item)
    end
  end

  describe "GET edit" do
    it "returns http success" do
      get :edit, {id: my_item.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the #edit view" do
      get :edit, {id: my_item.id}
      expect(response).to render_template :edit
    end

    it "assigns item to be updated to @item" do
      get :edit, {id: my_item.id}

      item_instance = assigns(:item)

      expect(item_instance.id).to eq my_item.id
      expect(item_instance.name).to eq my_item.name
    end
  end

describe "DELETE destroy" do
     it "deletes the post" do
       delete :destroy, {id: my_item.id}
       count = Item.where({id: my_item.id}).size
       expect(count).to eq 0
     end

     it "redirects to posts index" do
       delete :destroy, {id: my_item.id}
      expect(response).to redirect_to items_path
    end
  end
=end
end
