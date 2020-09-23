const jwt = require("jsonwebtoken");
const helper = require("../helper/helper");

module.exports = {
  authUser: (request, response, next) => {
    let token = request.headers.authorization;
    if (token) {
      token = token.split(" ")[1];
      jwt.verify(token, "RYTHZCHAT", (error, result) => {
        if (
          (error && error.name === "JsonWebTokenError") ||
          (error && error.name === "TokenExpiredError")
        ) {
          return helper.response(response, 400, error.message);
        } else {
          next();
        }
      });
    } else {
      return helper.response(response, 400, "Login First");
    }
  },
};
