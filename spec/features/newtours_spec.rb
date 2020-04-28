require 'site_prism'
require 'pages/login_page.rb'
require 'pages/find_flight_page.rb'
require 'pages/select_flight_page.rb'
require 'pages/book_flight_page.rb'

feature 'Travel', type: :feature do
  include DemoTour
  scenario 'Visit LoginPage' do
    @login_page = DemoTour::Login.new
    @login_page.load
    @login_page.login_to_application "mercury", "mercury"

    @find_flight_page = DemoTour::FindFlightPage.new
    #@find_flight_page.load
    @find_flight_page.findFlights "New York","April","20","Paris","May","1","Unified Airlines"

    @select_flight_page = DemoTour::SelectFlight.new
    #@select_flight_page.load
    @select_flight_page.selectFlights

    @book_flight_page = DemoTour::BookFlight.new
    #@book_flight_page.load
    @book_flight_page.bookFlight "Nishita", "Sinha", "Vegetarian", "American Express", "918273812739182", "03", "2010",
                                 "Nishita", "Sinha", "15, Palm Street", "Manhattan", "NY", "918273", "UNITED STATES",
                                 "15, Palm Street", "Manhattan", "NY", "918273", "UNITED STATES"
  end
end
















