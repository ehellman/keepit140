require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_selector('h1', text: 'keepit140') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| home') }
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: full_title('help')) }
  end

  describe "About page" do
    before { visit about_path }
    it { should have_selector('h1', text: 'About Us') }
    it { should have_selector('title', text: full_title('about us')) }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: full_title('contact')) }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "Sign in"
    page.should have_selector 'title', text: full_title('Sign in')
    click_link "keepit140"
    page.should have_selector 'h1',    text: 'Welcome to keepit140'
    click_link "Home"
    click_link "Sign up now!"
    page.should have_selector 'title', text: full_title('Sign up')
    click_link "Help"
    page.should have_selector 'title', text: full_title('help')
    click_link "About"
    page.should have_selector 'title', text: full_title('about us')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('contact')
  end

end
