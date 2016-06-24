package expense
class ProfileController {
    def beforeInterceptor={
        if(!session.loggedInUserID) {
            redirect(controller: "Login" , action: "index")
            return false
        }
    }

    private getUserModel() {
        Users details=Users.findById(session.loggedInUserID);
        return [sendDetails: details]
    }

    def index() {
       return getUserModel()
    }
    def edit() {
        getUserModel()
    }
    def save() {
        println(params)
        Users register = Users.get(params.id)
        register.firstName = params.firstName;
        register.lastName = params.lastName;
        register.email = params.Email;
        println(register.firstName+" "+register.lastName+" "+register.email)
        register.save(flush: true);

        if(register.hasErrors()) {
            render(action:"edit",[myUser:register])
        }
        println("updated")
        redirect(action: "index")
    }
}
