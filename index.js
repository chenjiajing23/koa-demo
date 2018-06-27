const Koa = require('koa');
const views = require('koa-views');
const path = require('path');

const app = new Koa();

app.use(views(path.resolve(__dirname, './views'), { extension: 'html' }));

app.use(async ctx => {
  await ctx.render('index');
});

app.listen(3000, function() {
  console.log('app is listening port on 3000.');
});
