var moment = require('moment');
const knex = require('knex')({
  client: 'mysql',
  connection: {
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'cab_service',
  
    typeCast: function (field, next) {
      if (field.type == 'DATE') {
        return moment(field.string()).format('YYYY-MM-DD');
      }
      return next();
    
    }
   
  },

});

module.exports = knex;