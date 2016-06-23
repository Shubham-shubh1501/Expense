package expense
class ProfileController {

    def index() {
        if(!session.loggedInUserID) {
            redirect(controller: "Login" , action: "index")
        }
        Users details=Users.findById(session.loggedInUserID);
        [sendDetails: details]
    }
    def edit() {
        if(!session.loggedInUserID) {
            redirect(controller: "Login" , action: "index")
        }
        Users details=Users.findById(session.loggedInUserID);
        [sendDetails: details]
    }
    def save() {
        Users myUser=new Users([firstName:params.firstName,lastName:params.lastName ,email:params.Email,
                                password:params.password])
        if(hasErrors()){
            render(action: "edit",[myUser1: myUser])
        }
        println(params)
        Users register = Users.get(params.id)
        register.firstName = params.firstName;
        register.lastName = params.lastName;
        register.email = params.Email;
        println(register.firstName+" "+register.lastName+" "+register.email)
        register.save(flush: true);
        println("updated")
        redirect(action: "index")
    }
}
