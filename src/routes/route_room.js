const router = require("express").Router();
const {
  getRoomByUserId,
  searchRoom,
  createRoom,
} = require("../controllers/control_room");

router.get("/:id", getRoomByUserId);
router.get("/search", searchRoom);
router.post("/create", createRoom);

module.exports = router;
