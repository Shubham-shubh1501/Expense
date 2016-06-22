package expense

class LoginController {

    def index() {
    [myUser:new Users()]
    }
    def save() {
    println(params);
    Map p=[email:params.Email ,password: params.password]
    def c = Users.createCriteria()
    def results = c {
    eq("email", "${params.Email}")
    eq("password", "${params.password}")
    }

    if(results) {
        session.recent = session.recent ?: []
        session.recent.add(results)
        println(session.recent)
        redirect(controller: "Profile" , action:"index",send: session.recent)
    }
    else{
        redirect(action: "index")
    }


    }
}
