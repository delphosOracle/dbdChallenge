const express = require('express');
const router = express.Router();
const pool = require('../database');

router.get('/nuevos-empleados', (req, res) => {
    res.render('employed/create');
})

router.post('/newEmploy', async (req, res) => {
    console.log(req.body);
    const { idEmpl, nameEmpl, typeEmpl} = req.body;
    const data = {
        'idEmployee': idEmpl,
        'fullName': nameEmpl,
        'idFunction': typeEmpl
    };    
    await pool.query('INSERT INTO tbl_employee set ?', [data]);
    res.send('received'); 
});

router.get('/empleados', async (req, res) => {
    const empleados = await pool.query ('select idEmployee as id, fullName as fullname, (select functionValue from tbl_function as fun where emp.idFunction = fun.idFunction) as fun from tbl_employee as emp');
    console.log(empleados.RowDataPacket);
    
    res.render('employed/list', { empleados });
})

module.exports = router;