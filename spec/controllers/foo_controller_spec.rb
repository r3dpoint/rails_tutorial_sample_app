# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FooController, type: :controller do
  describe 'GET #bar' do
    it 'returns http success' do
      get :bar
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #baz' do
    it 'returns http success' do
      get :baz
      expect(response).to have_http_status(:success)
    end
  end
end
