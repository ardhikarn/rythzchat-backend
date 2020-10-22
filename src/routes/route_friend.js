const router = require("express").Router();
const {
  getFriendById,
  postFriend,
  deleteFriend,
} = require("../controllers/control_friend");

router.get("/id/:id", getFriendById);
router.post("/add", postFriend);
router.delete("/delete", deleteFriend);

module.exports = router;
