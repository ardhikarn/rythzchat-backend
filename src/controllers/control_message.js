const { getMessageByRoomId, postMessage } = require("../models/model_message");
const helper = require("../helper/helper");

module.exports = {
  getMessageByRoomId: async (request, response) => {
    try {
      const { room_id, user_id } = request.query;
      const result = await getMessageByRoomId(room_id);
      for (let i = 0; i < result.length; i++) {
        if (parseInt(result[i].user_id) === parseInt(user_id)) {
          result[i].class = "receiver";
        } else {
          result[i].class = "sender";
        }
      }
      return helper.response(response, 200, "Get Room Success", result);
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },
  sendMessage: async (request, response) => {
    try {
      const { room_id, user_id, message } = request.body;
      const setData = {
        room_id,
        user_id,
        message,
        message_created_at: new Date(),
      };
      const result = await postMessage(setData);
      return helper.response(response, 200, "Success Send Message", result);
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },
};
