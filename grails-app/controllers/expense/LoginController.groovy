package expense

class LoginController {
    def index() {
        [myUser:new Users()]
    }
    def save() {
        println(params);
        Users results = Users.createCriteria().get {
            eq("email", "${params.Email}")
            eq("password", "${params.password}")
        }


        if(results) {
            session.loggedInUserID = results.id
            println(session.loggedInUserID)
            redirect(controller: "Profile" , action:"index")
        }
        else{
            redirect(action: "index")
        }
    }
}
