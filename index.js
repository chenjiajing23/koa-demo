const Koa = require('koa');

const app = new Koa();

app.use(async ctx => {
  ctx.body = "It's success, congratulation! ";
});

app.listen(3000, function() {
  console.log('app is listening port on 3000.');
});
