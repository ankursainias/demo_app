require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  describe 'GET #index' do
    it 'renders the index template' do
      get :index, params: { page: 1, post_id: Post.last.id }
      expect(response).to render_template(:index)
    end
  end
end
