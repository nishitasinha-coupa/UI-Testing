module DemoTour
  class Login < SitePrism::Page
    set_url "/"
    element :username, 	"input[name='userName']"
    element :password,	"input[name='password']"
    element :loginbutton,     "input[name='login']"

    def login_to_application loginName, loginPassword
      username.set loginName
      password.set loginPassword
      loginbutton.click
    end
  end
end