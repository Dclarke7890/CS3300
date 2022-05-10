require 'rails_helper'
require 'factory_bot_rails'

RSpec.feature "Projects", type: :feature do
    context "Create new project" do
        before(:each) do
            click_button "Loggin"
            within("form") do 
                user = FactoryBot.create(:user, email: "test@google.com", password: "password")
                fill_in "Email", with: user.email
                fill_in "Password", with: user.password
                click_button "Log in"
            end 
        end
    end
end

