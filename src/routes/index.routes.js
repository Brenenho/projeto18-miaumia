import { Router } from "express"
import loginRouter from "./login.routes.js"
import catsRouter from "./cats.routes.js"


const router = Router()
router.use(catsRouter)
router.use(loginRouter)

export default router