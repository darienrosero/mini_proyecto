import { DB_DATABASE, DB_HOST, DB_PASSWORD, DB_USER, DB_PORT} from './config.js'
import { createPool } from 'mysql2/promise'

export const pool = createPool( {
    database: DB_DATABASE,
    user: DB_USER,
    password: DB_PASSWORD,
    host: DB_HOST,
    port: DB_PORT
})
