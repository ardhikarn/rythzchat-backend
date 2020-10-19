const route = require("express").Router();

const routeUser = require("./routes/route_user");
const routeFriend = require("./routes/route_friend");
const routeRoom = require("./routes/route_room");
const routeMessage = require("./routes/route_message");

// middleware
route.use("/user", routeUser);
route.use("/friend", routeFriend);
route.use("/room", routeRoom);
route.use("/message", routeMessage);

module.exports = route;
