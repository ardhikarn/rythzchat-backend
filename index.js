require("dotenv").config();
const express = require("express");
const bodyParser = require("body-parser");
const morgan = require("morgan");
const cors = require("cors");
const routerNavigation = require("./src");
const socket = require("socket.io");

const app = express();
app.use(cors());
// middleware
app.use(bodyParser.json()); // untuk row
app.use(bodyParser.urlencoded({ extended: false })); // untuk urlencoded
app.use(morgan("dev"));
app.use((request, response, next) => {
  response.header("Access-Control-Allow-Origin", "*");
  response.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Request-With, Content-Type, Accept, Authorization"
  );
  next();
});

app.use("/", routerNavigation);

// untuk socket.io
// const http = require("http");
// const { response } = require("express");
// const server = http.createServer(app); //menyimpan data dari http
// const io = socket(server);

// io.on("connection", (socket) => {
//   console.log("Socket.io is Connected");
//   socket.on("globalMessage", (data) => {
//     io.emit("chatMsg", data); //Global Message memakai io.emit
//   });

//   socket.on("privateMessage", (data) => {
//     socket.emit("chatMsg", data); //Private Message memakai socket.emit
//   });

//   socket.on("BroadcastMessage", (data) => {
//     socket.broadcast.emit("chatMsg", data); //Broadcast Message memakai socket.broadcast.emit
//   });

//   socket.on("welcomeMsg", (data) => {
//     socket.emit("chatMsg", {
//       username: "BOT",
//       message: `Welcome ${data.username}`,
//     });
//     // UNTUK GLOBAL
//     // socket.broadcast.emit("chatMsg", {
//     //   username: "BOT",
//     //   message: `${data.username} Joined Groupchat`,
//     // });
//     // UNTUK SPESIFIK
//     socket.broadcast.to(data.room).emit("chatMsg", {
//       username: "BOT",
//       message: `${data.username} Joined Groupchat`,
//     });
//     socket.join(data.room);
//   });

//   socket.on("typing", (data) => {
//     socket.broadcast.emit("typingMsg", data);
//   });

//   socket.on("roomMsg", (data) => {
//     io.to(data.room).emit("chatMsg", data);
//   });
// });

// server.listen(3000, () => {
//   console.log("Listening on Port 3000");
// });

app.get("*", (request, response) => {
  response.status(404).send("Path Not Found");
});

app.listen(process.env.PORT, process.env.IP, () => {
  console.log(
    `App is Running on IP: ${process.env.IP} and PORT: ${process.env.PORT}`
  );
});
