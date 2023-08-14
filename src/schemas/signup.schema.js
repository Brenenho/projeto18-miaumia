import joi from "joi"

export const signupSchema = joi.object({
    name: joi.string().required(),
    cpf: joi.string().length(11).pattern(/^[0-9]+$/).required(),
    telefone: joi.string().length(11).pattern(/^[0-9]+$/).required(),
    email: joi.string().email().required(), 
    password: joi.string().min(6).required(),
    confirmPassword: joi.ref("password")
})