module DemoTour
  class BookFlight < SitePrism::Page
    set_url 'mercurypurchase.php'

    element :firstname, 	"input[name='passFirst0']"
    element :lastname, 	"input[name='passLast0']"
    element :meal,		'select[name="pass.0.meal"]'
    element :cardType,		'select[name="creditCard"]'
    element :cardNumber,		'input[name="creditnumber"]'
    element :expmonth,		'select[name="cc_exp_dt_mn"]'
    element :expyear, 	"select[name='cc_exp_dt_yr']"
    element :cardfirstname, 	"input[name='cc_frst_name']"
    element :cardlastname, 	"input[name='cc_last_name']"
    element :ticketless, :xpath, "(//input[@name='ticketLess'])[1]"
    element :billAddress1, 	"input[name='billAddress1']"
    element :billCity, 	"input[name='billCity']"
    element :billState, 	"input[name='billState']"
    element :billZip, 	"input[name='billZip']"
    element :billCountry, 	"select[name='billCountry']"
    element :sameasabove, :xpath, "(//input[@name='ticketLess'])[2]"

    element :delAddress1, 	"input[name='delAddress1']"
    element :delCity, 	"input[name='delCity']"
    element :delState, 	"input[name='delState']"
    element :delZip, 	"input[name='delZip']"
    element :delCountry, 	"select[name='delCountry']"
    element :buyFlights, 	"input[name='buyFlights']"


    def bookFlight firstname, lastname, meal, cardType, cardNumber, expmonth, expyear, cardfirstname, cardlastname,
                   billAddress1, billCity, billState, billZip, billCountry, delAddress1, delCity, delState, delZip, delCountry

      self.firstname.set firstname
      self.lastname.set lastname
      self.meal.select meal
      self.cardType.select cardType
      self.cardNumber.set cardNumber
      self.expmonth.select expmonth
      self.expyear.select expyear
      self.cardfirstname.set cardfirstname
      self.cardlastname.set cardlastname
      self.billAddress1.set billAddress1
      self.billCity.set billCity
      self.billState.set billState
      self.billZip.set billZip
      self.billCountry.select billCountry
      self.delAddress1.set delAddress1
      self.delCity.set delCity
      self.delState.set delState
      self.delZip.set delZip
      self.delCountry.select delCountry

      buyFlights.click


    end



  end
end

