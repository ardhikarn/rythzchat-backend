const route = require("express").Router();

const routeUser = require("./routes/route_user");

// middleware
route.use("/user", routeUser);

module.exports = route;
