const helper = require("../helper/helper");
const {
  getRoomByUserId,
  getRoomByRoomId,
  postRoom,
} = require("../models/model_room");

module.exports = {
  createRoom: async (request, response) => {
    try {
      const { user_id, friend_id } = request.body;
      const roomId = Math.round(Math.random() * 1000000);
      const addData = {
        room_id: roomId,
        user_id,
        room_created_at: new Date(),
      };
      await postRoom(addData);
      const addData2 = {
        room_id: roomId,
        friend_id,
        room_created_at: new Date(),
      };
      await postRoom(addData2);
      return helper.response(response, 200, "Room Created", roomId);
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },
  getRoomByUserId: async (request, response) => {
    try {
      const { id } = request.params;
      const result = await getRoomByUserId(id);
      const roomIds = result.map((value) => {
        return value.room_id;
      });
      let newResult = [];
      for (let i = 0; i < roomIds.length; i++) {
        result2 = await getRoomByRoomId(roomIds[i]);
        const result3 = result2.filter(
          (value) => value.user_id !== parseInt(id)
        );
        newResult = newResult.concat(result3);
      }
      return helper.response(response, 200, "Get Room Success", newResult);
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },
};
