var express = require("express"); 
var cors = require("cors"); 

var app = express(); 
app.use(cors()); 

app.get("/" , function(request, response){
     console.log("received request"); 
     response.send("Helloworld !!!!!!");

});
console.log("Starting application on 8181");
app.listen(8181);

