import http from 'node:http'
import path from 'node:path'
import fs from 'node:fs/promises'
import { PORT } from './config.js'
import { getUsuarios } from './controller.js'

export const server = http.createServer(async (req, res) =>{
     const { method, url } = req

    if (method === 'GET') {
        switch (url) {
            case '/':
                  const index = path.resolve('./public/index.html')
    
                const fileContent = await fs.readFile(index, 'utf-8')
                res.end(fileContent)
                break;
            case '/api/usuarios':
               getUsuarios(req, res)
                break;
            case '/api/usuarios/export':
                const csv = path.resolve('./src/usuarios.csv')
                const archivoCsv = await fs.readFile(csv, 'utf-8')
                res.end(archivoCsv)
                break;
            case '/api/usuarios/import':
                try {
                    // Definir la consulta preparada
                    const sql = "SELECT * FROM usuarios WHERE nombre = @?";
                  
                    // Ejecutar la consulta preparada con el parámetro proporcionado
                    const nombre = "Juan";
                    const result = await pool.execute(sql, [nombre]);
                  
                    // Obtener las filas resultantes de la consulta
                    const rows = result[0];
                  
                    // Liberar la conexión
                    connection.release();
                  } catch (error) {
                    // Manejar cualquier error que pueda ocurrir durante la consulta
                    console.error("Error al consultar usuario:", error);
                    throw error;
                  }
                  
                break;

            default:
                res.writeHead(404, { 'Content-type': 'application/jason' })
                res.end(JSON.stringify({ message: 'Ruta no encontrada' }))
                break;
        }
    } 
 

})

server.listen(PORT, () => console.log(`server runing on http://localhost:${PORT}`))
