package expense

class LogoutController {

    def index() {
        session.invalidate()
        redirect(controller: "Login" , action: "index")
    }
}
