module.exports = {
    getHeroes: (req, res)=>{
        const db = req.app.get('db')
        db.get_heroes().then(heroes=>{
            res.send(heroes)
        }).catch(err => ()=>console.log('error on get heroes', err))
    }
}