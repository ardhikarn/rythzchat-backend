const router = require("express").Router();
const {
  registerUser,
  getUserById,
  loginUser,
  sendEmailActivation,
  activationAccount,
} = require("../controllers/control_user");

router.get("/id/:id", getUserById);
router.post("/register", registerUser);
router.post("/login", loginUser);
router.post("/send-email-activation", sendEmailActivation);
router.patch("/activation-account", activationAccount);

module.exports = router;
