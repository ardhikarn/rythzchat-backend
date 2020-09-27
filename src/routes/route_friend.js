const router = require("express").Router();
const {
  getFriendById,
  addFriend,
  deleteFriend,
} = require("../controllers/control_friend");

router.get("/id/:id", getFriendById);
router.post("/add", addFriend);
router.delete("/delete", deleteFriend);

module.exports = router;
