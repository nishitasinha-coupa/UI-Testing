module DemoTour
  class FindFlightPage < SitePrism::Page
    set_url '/mercuryreservation.php'

    element :roundTrip,	'input[value="roundtrip"]'

    element :fromPort,		'select[name="fromPort"]'
    element :fromMonth,		'select[name="fromMonth"]'
    element :fromDay,		'select[name="fromDay"]'

    element :toPort,		'select[name="toPort"]'
    element :toMonth,		'select[name="toMonth"]'
    element :toDay,			'select[name="toDay"]'

    element :firstClass,	'input[value="First"]'
    element :airline,		'select[name="airline"]'
    element :findFlight,	'input[name="findFlights"]'


    def findFlights fromPort, fromMonth, fromDay, toPort, toMonth, toDay, airline
      roundTrip.click
      select(fromPort,from: "fromPort")
      select(fromMonth,from: "fromMonth")
      select(fromDay,from: "fromDay")
      select(toPort,from: "toPort")
      select(toMonth,from: "toMonth")
      select(toDay,from: "toDay")
      select(airline,from: "airline")
      firstClass.click
      findFlight.click
    end



  end
end