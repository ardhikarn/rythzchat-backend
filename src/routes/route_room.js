const router = require("express").Router();
const { getRoomByUserId, createRoom } = require("../controllers/control_room");

router.get("/:id", getRoomByUserId);
router.post("/create", createRoom);

module.exports = router;
