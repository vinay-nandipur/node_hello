const app =  require( "./app");
const port = process.env.PORT || 8081;

app.listen(port, () =>
  console.log('Sample app listening on port 8081!')
);
