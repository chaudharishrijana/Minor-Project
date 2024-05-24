 const cors = require('cors');
 const express = require('express');
  
 const https = require('https');
 const fs = require('fs');
  
  

 const userRouter = require('./src/routers/userRouter')
 const artworkRouter = require('./src/routers/ArtworkRouter')
 const imageRouter = require('./src/routers/imageRouter')
 const categoriesRouter = require('./src/routers/CategoryRouter')
 const orderRouter = require('./src/routers/orderRouter')
 const orderItemRouter = require('./src/routers/orderItemsRouter')
 const reviewRouter = require('./src/routers/reviewRouter')
 
 const app = express();
 app.use(cors());

 
 // Read SSL certificate and private key
 const options = {
   key: fs.readFileSync('C:/Users/DELL/Desktop/SRIJANA_FULLSTACK_MINOR_PROJECT/srijanaFGH/artistryhubackend/server.key'),
   cert: fs.readFileSync('C:/Users/DELL/Desktop/SRIJANA_FULLSTACK_MINOR_PROJECT/srijanaFGH/artistryhubackend/server.cert')
 };
 
 // Set up middleware
 app.use(express.json());
 app.use(express.urlencoded({ extended: true }));
 

 

 //routes
 app.use('/users', userRouter)
 app.use('/image', imageRouter)
 app.use('/artworks', artworkRouter)
 app.use('/categories', categoriesRouter)
 app.use('/orders', orderRouter)
 app.use('/orderitems', orderItemRouter)
 app.use('/reviews', reviewRouter)
 
 // Create HTTPS server instance
 const server = https.createServer(options, app);
 
 // Start HTTPS server
 server.listen(3000, () => {
     console.log("Server is running on https://localhost:3000");
 });
 



 