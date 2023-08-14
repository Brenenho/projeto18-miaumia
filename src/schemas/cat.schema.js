import joi from "joi"

export const catSchema = joi.object({
    name: joi.string().required(),
    descricao: joi.string().required(),
    image: joi.string().uri().required()
})