# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  render_views
  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }

  describe 'GET indezx' do
    it 'routes to static_pages#home' do
      # https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher
      # https://gist.github.com/rafaelfragosom/940adee11ccf39f4a069
      expect(get: root_url(subdomain: nil)).to route_to(controller: 'static_pages', action: 'home')
      # puts Rails.application.routes.url_helpers.inspect
      # get root_url
      # get root_path
      # expect(response).to have_http_status(:success)
      # assert_select 'title', "Home | #{base_title}"
    end
  end

  describe 'GET #home' do
    it 'returns http success and expected title' do
      get :home
      # get static_pages_home_url
      expect(response).to have_http_status(:success)
      assert_select 'title', "Home | #{base_title}"
    end
  end

  describe 'GET #help' do
    it 'returns http success and expected title' do
      get :help
      # static_pages_help_url
      expect(response).to have_http_status(:success)
      assert_select 'title', "Help | #{base_title}"
    end
  end

  describe 'GET #about' do
    it 'returns http success and expected title' do
      get :about
      # get static_pages_about_url
      expect(response).to have_http_status(:success)
      assert_select 'title', "About | #{base_title}"
    end
  end

  describe 'GET #contact' do
    it 'returns http success and expected title' do
      get :contact
      # get static_pages_contact_url
      expect(response).to have_http_status(:success)
      assert_select 'title', "Contact | #{base_title}"
    end
  end
end
