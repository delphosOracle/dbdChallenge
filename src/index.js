const express = require('express');
const morgan  = require('morgan');
const exphbs  = require('express-handlebars');
const path    = require('path');

const app = express();

app.set('port', process.env.PORT || 4000);
app.set('views', path.join(__dirname, 'views'));
app.engine('.hbs', exphbs({
    defaultLayout: 'main',
    layoutsDir: path.join(app.get('views'), 'layouts'),
    partialsDir: path.join(app.get('views'), 'partials'),
    extname: '.hbs',
    helpers: require('./lib/handlebars')
}));
app.set('view engine', '.hbs');

app.use(morgan('dev'));
app.use(express.urlencoded({extended: false }));
app.use(express.json());

app.use((req, res, next) => {
    next();
});

app.use(require('./routes'));
app.use('', require('./routes/empleados.js'));


app.use(express.static(path.join(__dirname, 'public')));


app.listen(app.get('port'), () => {
    console.log('server on port ', app.get('port'));
})