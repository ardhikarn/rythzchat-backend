const connection = require("../config/mysql");

module.exports = {
  getRoomByUserId: (id) => {
    return new Promise((resolve, reject) => {
      connection.query(
        "SELECT * FROM room WHERE user_id = ?",
        id,
        (error, response) => {
          !error ? resolve(response) : reject(new Error(error));
        }
      );
    });
  },
  getRoomByRoomId: (id) => {
    return new Promise((resolve, reject) => {
      connection.query(
        "SELECT room.room_id, room.user_id, room.room_updated_at, user.user_name, user.user_image FROM room JOIN user ON room.user_id = user.user_id WHERE room.room_id = ? ORDER BY user.user_name ASC",
        id,
        (error, response) => {
          !error ? resolve(response) : reject(new Error(error));
        }
      );
    });
  },
  postRoom: (addData) => {
    return new Promise((resolve, reject) => {
      connection.query("INSERT INTO room SET ?", addData, (error, response) => {
        !error ? resolve(response) : reject(new Error(error));
      });
    });
  },
};
