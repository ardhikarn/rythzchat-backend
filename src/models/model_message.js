const connection = require("../config/mysql");

module.exports = {
  getMessageByRoomId: (id) => {
    return new Promise((resolve, reject) => {
      connection.query(
        "SELECT * FROM message WHERE room_id = ?",
        id,
        (error, result) => {
          !error ? resolve(result) : reject(new Error(error));
        }
      );
    });
  },
  postMessage: (addData) => {
    return new Promise((resolve, reject) => {
      connection.query(
        "INSERT INTO message SET ?",
        addData,
        (error, result) => {
          !error ? resolve(result) : reject(new Error(error));
        }
      );
    });
  },
};
