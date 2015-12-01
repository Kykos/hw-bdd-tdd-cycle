require 'spec_helper'
require 'rails_helper'

RSpec.describe MoviesController do

    describe 'find similar movies'  do
        describe 'for valid input' do       
          it 'should call the model method that finds similar movies' do
             expect(Movie).to receive(:find_by_director).with('George Lucas') {@fake_results}
             get :similar, {:director => "George Lucas" }
             ###expect(response).to render_template('index')
          end
        end
        
        describe 'for invalid input' do
           it 'should redirect to index' do
               get :similar, {:director => ''}
               expect(response).to redirect_to :action => :index
           end
        end
    end
 
 end   