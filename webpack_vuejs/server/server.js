const fs = require('fs');
const path = require('path');
const express = require('express');
const bodyParser = require('body-parser');
const ejs = require('ejs');
const log4js = require('log4js');

const logger = log4js.getLogger('APP');
log4js.loadAppender('file');
log4js.addAppender(log4js.appenders.file('./server/logs/application.log'), 'APP');

const app = express();

app.set('port', (process.env.PORT || 5000));

app.set('views', path.resolve(__dirname, '../client/views'));
app.set('view engine', 'html');
app.engine('html', ejs.renderFile);

app.use('/static', express.static(path.resolve(__dirname, '../client/public')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get('*', (req, res) => {
  var content = fs.readFileSync(
    path.join(__dirname, '../client/public/manifest.json')
  );

  content = JSON.parse(content);

  res.render('index', {
    title: 'My Vue App',
    bundle_js: "/static/js/" + content.app[0],
    bundle_css: "/static/js/" + content.app[1]
  });
});

const server = app.listen(port = app.get('port'), () => {
  // let port = server.address().port;
  logger.info(`Server listening on PORT: ${port}.`);
  // console.log(`Server listening on PORT: ${port}.`);
});
