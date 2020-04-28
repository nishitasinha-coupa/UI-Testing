module DemoTour
  class SelectFlight < SitePrism::Page
    set_url '/mercuryreservation2.php'

    element :departure,			'input[value="Unified Airlines$363$281$11:24"]'
    element :returnFlight,			'input[value="Unified Airlines$633$303$18:44"]'
    element :reserveFlights,	'input[name="reserveFlights"]'

    def selectFlights
      departure.click
      returnFlight.click
      reserveFlights.click
    end

  end
end

