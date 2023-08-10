import { Router } from "express"


const router = Router()
router.use(urlsRouter)
router.use(loginRouter)

export default router