const {
  getFriendById,
  postFriend,
  deleteFriend,
} = require("../models/model_friend");
const helper = require("../helper/helper");
const { request } = require("express");
const { response } = require("../helper/helper");

module.exports = {
  getFriendById: async (request, response) => {
    try {
      const { id } = request.params;
      let { search } = request.query;
      if (search === undefined) {
        search = "";
      }
      const result = await getFriendById(id, search);
      return helper.response(response, 200, "get Friend Success", result);
    } catch (error) {
      return helper.response(response, 400, "Bad Request", error);
    }
  },
  addFriend: async (request, response) => {
    try {
      const { user_id, friend_id } = request.body;
      const addData = {
        user_id,
        friend_id,
        friendlist_created_at: new Date(),
      };
      const result = await postFriend(addData);
      return helper.response(response, 200, "Add Friend Success", result);
    } catch (error) {
      return helper.response(response, 400, "Bad Request", error);
    }
  },
  deleteFriend: async (request, response) => {
    try {
      const { userId, friendId } = request.query;
      const result = await deleteFriend(userId, friendId);
      return helper.response(response, 200, "Delete Friend Success", result);
    } catch (error) {
      return helper.response(response, 400, "Bad Request", error);
    }
  },
};
