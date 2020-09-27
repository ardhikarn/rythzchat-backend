const route = require("express").Router();

const routeUser = require("./routes/route_user");
const routeFriendlist = require("./routes/routes/route_friendlist");

// middleware
route.use("/user", routeUser);
route.use("/friendlist", routeFriendlist);

module.exports = route;
