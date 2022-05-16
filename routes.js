const router = require("express").Router();
const { routeInterstate } = require("fontawesome");
var db = require('./db_connection.js');
//document html require

router.get('/', (req, res) => {
    db.query('SELECT * FROM clientes', function (error, clientes) {
        res.render("index.ejs",{clientes: clientes})
    })
})

router.get('/incluir', (req, res) => {
     res.render("incluir.ejs",{cliente:{}})
})

router.post('/incluir', (req, res) => {
    const query = `CALL insere_cliente("${req.body.codigo}","${req.body.nome}","${req.body.cargo}","${req.body.contato}") `
    db.query(query, (error,result) => {
        if(error){
            return console.error(error.message)
        }
        res.redirect('/')
    }
    )
})

router.get('/editar/:id', function (req, res){
    const query = `SELECT CodCli,Nome,Contato,Cargo FROM clientes WHERE CodCli = "${req.params.id}"`
    db.query(query, (error,result) => {
        res.render("incluir.ejs",{
            cliente:result[0],
            
        })
    })
})

router.post('/editar/:id', function (req, res){
    const query = `CALL altera_cliente("${req.params.id}","${req.body.nome}","${req.body.cargo}","${req.body.contato}")`
    db.query(query, (error,result) => {
        if(error){
            return console.error(error.message)
        }
        res.redirect('/')
    }
    )
})

router.get('/excluir/:id', (req, res) => {
    const query = `SELECT CodCli,Nome,Contato,Cargo FROM clientes WHERE CodCli = "${req.params.id}"`
    db.query(query, (error,result) => {
        res.render("excluir.ejs",{cliente:result[0]})
    })
})

router.post('/excluir/:id', (req, res) => {
    const query = `DELETE FROM clientes WHERE CodCli = "${req.params.id}"`
    db.query(query, (error,result) => {
        if(error){
            return console.error(error.message)
        }
        res.redirect('/')
    })
})



module.exports = router;