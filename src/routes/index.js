const express = require('express');
const router = express.Router();
const pool = require('../database');

router.get('/', async (req, res) => {
    const empleados = await pool.query ('select idEmployee as id, fullName as fullname, (select functionValue from tbl_function as fun where emp.idFunction = fun.idFunction) as fun from tbl_employee as emp');
    console.log(empleados.RowDataPacket);
    
    res.render('employed/list', { empleados });
})

module.exports = router;