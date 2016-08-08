import Kitura
import HeliumLogger

HeliumLogger.use()

let router = Router()

router.get("/") {
   request, response, next in
   response.send("Hello Team, Let's rule the World!")
   next()
}

Kitura.addHTTPServer(onPort: 8090, with: router)
Kitura.run()
