import { db } from "../database/database.connection.js"

export function findSessionDB(token) {
    return db.query(`SELECT userid FROM sessions WHERE token=$1;`, [token])
}