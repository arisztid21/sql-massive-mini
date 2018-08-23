module.exports = {
  getHeroes: (req, res) => {
    const db = req.app.get('db')
    db.get_heroes().then(heroes => {
      res.json(heroes);
    }).catch(error => {
      console.log('Error with get_heroes', error);
    });
  }
}