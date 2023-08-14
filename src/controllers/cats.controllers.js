import { db } from "../database/database.connection.js"

export async function createCat(req, res) {
    const { name, descricao, image } = req.body
    const { authorization } = req.headers

    const token = authorization?.replace("Bearer ", "")
    
    const userId = await db.query(`
    SELECT userid from sessions WHERE token = $1
    `, [token])

    try {
        await db.query(`
        INSERT INTO cats (name, descricao, image, tutorid) VALUES ($1, $2, $3, $4)
        `, [name, descricao, image, userId.rows[0].userid])
        return res.sendStatus(201)
    }
    catch (err) {
        console.log(err)
        return res.sendStatus(500)
    }
}

export async function listCatById(req, res) {

    const { id } = req.params

    try {
        const cats = await db.query(`
        SELECT cats.name, cats.image, cats.isdisponivel, cats.descricao,
    JSON_BUILD_OBJECT(
        'name', customers.fullname,
        'telefone', customers.telefone,
        'email', customers.email
    ) AS "dadosTutor"
        FROM cats
        JOIN customers ON customers.id = cats.tutorid
        WHERE cats.id = $1
        `, [id])
        
        if (cats.rowCount === 0) return res.sendStatus(404)
        return res.send(cats.rows[0])
        

    } catch (err) {
        console.log(err)
        return res.sendStatus(500)

    }
}

export async function listCats(req, res) {
    try {
        const cats = await db.query(`
        SELECT cats.id, cats.name, cats.image, cats.isdisponivel, cats.descricao
        FROM cats
        WHERE cats.isdisponivel = true
        ORDER BY cats.name ASC
        `)
        return res.send(cats.rows)
    } catch (err) {
        console.log(err)
        return res.sendStatus(500)
    }
}

export async function myCats(req, res) {
    const { authorization } = req.headers

    const token = authorization?.replace("Bearer ", "")

    const userId = await db.query(`
    SELECT userid from sessions WHERE token = $1
    `, [token])

    try {
        const cats = await db.query(`
        SELECT cats.id, cats.name, cats.image, cats.isdisponivel, cats.descricao
        FROM cats
        WHERE cats.tutorid = $1
        ORDER BY cats.isdisponivel DESC, cats.name ASC 
        `, [userId.rows[0].userid])
        return res.send(cats.rows)
    } catch (err) {
        console.log(err)
        return res.sendStatus(500)
    }
}

export async function updateDisableCat(req, res) {
    const { id } = req.params
    const { authorization } = req.headers

    const token = authorization?.replace("Bearer ", "")

    const userId = await db.query(`
    SELECT userid from sessions WHERE token = $1
    `, [token])

    try {
        const cats = await db.query(`
        SELECT * FROM cats WHERE id = $1
        `, [id])

        if (cats.rowCount === 0) return res.sendStatus(404)

        if (cats.rows[0].tutorid !== userId.rows[0].userid) return res.sendStatus(403)

        const isdisponivel = await db.query(`
        SELECT isdisponivel FROM cats WHERE id = $1
        `, [id])

        if (isdisponivel.rows[0].isdisponivel === false) { 
            await db.query(`
            UPDATE cats SET isdisponivel = true WHERE id = $1
            `, [id])
            return res.sendStatus(200)
        }

        if (isdisponivel.rows[0].isdisponivel === true) {
            await db.query(`
            UPDATE cats SET isdisponivel = false WHERE id = $1
            `, [id])
            return res.sendStatus(200)
        }

        return res.sendStatus(200)

    } catch (err) {
        console.log(err)
        return res.sendStatus(500)
    }
}





    
    
    



    
    
