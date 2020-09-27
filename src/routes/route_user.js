const router = require("express").Router();
const {
  registerUser,
  getUserById,
  loginUser,
  sendEmailActivation,
  activationAccount,
  sendEmailForgotPassword,
  changePassword,
  patchImageUser,
  patchUser,
  patchMaps,
} = require("../controllers/control_user");
const uploadFilter = require("../middleware/multer");

router.get("/id/:id", getUserById);
router.post("/register", registerUser);
router.post("/login", loginUser);
router.post("/send-email-activation", sendEmailActivation);
router.post("/forgot-password", sendEmailForgotPassword);
router.patch("/activation-account", activationAccount);
router.patch("/change-password", changePassword);
router.patch("/image/:id", uploadFilter, patchImageUser);
router.patch("/:id", patchUser);
router.patch("/maps/:id", patchMaps);

module.exports = router;
