package expense

class RegisterController {

    def index() {
        [myUser: new Users()]
    }

    def save() {
        Map p = [firstName: params.firstName, lastName: params.lastName, email: params.Email, password: params.password]
        Users register= new Users(p)
        register.save()
        if (register.hasErrors()) {
            render(view: "index", model: [myUser: register])
            return
        }
    }
}
