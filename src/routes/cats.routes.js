import { Router } from "express"
import { createCat, listCatById, listCats, myCats, updateDisableCat } from "../controllers/cats.controllers.js"
import { validateToken } from "../middlewares/validadeAuth.js"
import  { validateSchema }  from "../middlewares/validateSchema.middleware.js"
import { catSchema } from "../schemas/cat.schema.js"

const catsRouter = Router()

catsRouter.post("/cats", validateToken, validateSchema(catSchema), createCat)
catsRouter.get("/cats/:id", listCatById)
catsRouter.get("/cats", listCats)
catsRouter.get("/mycats", validateToken, myCats)
catsRouter.put("/cats/:id", validateToken, updateDisableCat)

export default catsRouter


