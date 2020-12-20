#### 1. how rails routing works internally?
Ans:  When client sent request to rails server, server will recevied the request and pass to rails router, Router will examines the URL of incoming requests and determines the controller action responsible for handling  request. After examines it will passed the request to the respected controller's action. controller will recevied the request perform some database operation on after that it will render any json or HTML webpage to the client screen

#### 2. how is it different from routing implementation in Grape API?
Ans:  Normal rails routing work on ActionDispatch::Routing routing module where Grape APi it's different engin and work on Rack.
      In Grape API we have to specify mount points in routes.rb file so when request come router will examime request prefix based on that request will pass to Grap API macthing mount points. Moutes point are beloging to some ruby modules. Routing is written in the module file so based on the request the webpage or json respone will be serve on client screen

#### 3. Rails Route vs Grape API route
Ans. Rails framework routing use routes.rb, and will process to controllers, and will processing the request
     where as grape API routing use mount at routes.rb, when request come, the request will go to routes rails app, and forwarded to grape api module, and after processing at module finish the request will have a some output.

#### Conclusion
 Grape API endpoints (classes inheriting from Grape::API) are basically equivalent to Rails controllers. Grape API can be suitable for microservices kind of architecture.
