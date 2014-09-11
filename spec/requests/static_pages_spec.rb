require 'spec_helper'

describe "Static pages" do
  let(:rortitle) {'Ruby on Rails Tutorial Sample App | '}

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{rortitle}Home")
    end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{rortitle}Help")
    end
  end

  describe "About page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{rortitle}About")
    end
  end

    describe "Contacts page" do
    it "should have the content 'Contacts'" do
      visit '/static_pages/contacts'
      expect(page).to have_content('Contacts')
    end

    it "should have the title 'Contacts'" do
      visit '/static_pages/contacts'
      expect(page).to have_title("#{rortitle}Contacts")
    end
  end
end