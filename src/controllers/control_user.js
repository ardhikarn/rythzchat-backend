const {
  getUserById,
  checkUser,
  postUser,
  checkKey,
  changeData,
} = require("../models/model_user");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const helper = require("../helper/helper");
const nodemailer = require("nodemailer");

module.exports = {
  getUserById: async (request, response) => {
    try {
      const { id } = request.params;
      const result = await getUserById(id);
      return helper.response(response, 200, "Success Get User By Id", result);
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },
  registerUser: async (request, response) => {
    const { user_name, user_email, user_password } = request.body;
    // merubah password agar terenkripsi
    const salt = bcrypt.genSaltSync(10);
    const encryptPass = bcrypt.hashSync(user_password, salt);
    const addUser = {
      user_name,
      user_email,
      user_password: encryptPass,
      user_status: 0,
      user_created_at: new Date(),
    };
    try {
      console.log(user_email);
      const checkEmail = await checkUser(user_email);
      if (checkEmail.length >= 1) {
        return helper.response(response, 400, "Email has been Registered");
      } else if (user_name === "" || user_name === undefined) {
        return helper.response(response, 400, "Name is Required !");
      } else if (user_email === "" || user_email === undefined) {
        return helper.response(response, 400, "Email is required !");
      } else if (user_email.search("@") < 1) {
        return helper.response(response, 400, "Email not Valid");
      } else if (user_password === "" || user_password === undefined) {
        return helper.response(response, 400, "Password is required !");
      } else if (user_password.length < 8) {
        return helper.response(response, 400, "Minimum password 8 character");
      } else {
        const result = await postUser(addUser);
        return helper.response(response, 200, "Register is Success", result);
      }
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },
  loginUser: async (request, response) => {
    const { user_email, user_password } = request.body;
    if (user_email === undefined || user_email === "") {
      return helper.response(response, 400, "Email is Required");
    } else if (user_password === undefined || user_password === "") {
      return helper.response(response, 400, "Password is Required");
    }
    try {
      const checkData = await checkUser(user_email);
      if (checkData.length >= 1) {
        const checkPass = bcrypt.compareSync(
          user_password,
          checkData[0].user_password
        );
        if (checkPass) {
          const {
            user_id,
            user_name,
            user_email,
            user_password,
            user_status,
            user_phone,
            user_image,
            user_about,
          } = checkData[0];
          let payload = {
            user_id,
            user_name,
            user_email,
            user_password,
            user_status,
            user_phone,
            user_image,
            user_about,
          };
          if (payload.user_status === 0) {
            return helper.response(
              response,
              400,
              "Please Activate Your Account !"
            );
          } else {
            const token = jwt.sign(payload, "RYTHZCHAT", { expiresIn: "6h" });
            payload = { ...payload, token };
            return helper.response(response, 200, "Success Login", payload);
          }
        } else {
          return helper.response(response, 400, "Wrong Password !");
        }
      } else {
        return helper.response(response, 400, "Email is not Registered !");
      }
    } catch (error) {
      return helper.response(response, 400, "Bad Request");
    }
  },
  sendEmailActivation: async (request, response) => {
    const { user_email } = request.body;
    const keys = Math.round(Math.random() * 1000000);
    try {
      const checkData = await checkUser(user_email);
      if (checkData.length >= 1) {
        const data = {
          user_key: keys,
          user_updated_at: new Date(),
        };
        await changeData(data, user_email);
        const transporter = nodemailer.createTransport({
          host: "smtp.gmail.com",
          port: 465,
          secure: true,
          auth: {
            user: process.env.USER_EMAIL,
            pass: process.env.USER_PASS,
          },
        });
        await transporter.sendMail({
          from: '"Rythz-Chat"',
          to: user_email,
          subject: "Rythz-Chat - Activation Email",
          text: "Lets, Activation Your Account, and lets chatting",
          html: `<a href="http://localhost:8080/activation-account?keys=${keys}">Click Here To Activation Your Account</a>`,
        }),
          function (error) {
            if (error) {
              return helper.response(response, 400, "Email is not Sent !");
            }
          };
        return helper.response(response, 200, "Email has been Sent !");
      } else {
        return helper.response(response, 400, "Email is not Registered !");
      }
    } catch (error) {
      return helper.response(response, 400, "Bad Request", error);
    }
  },
  activationAccount: async (request, response) => {
    const { keys } = request.query;
    try {
      const checkData = await checkKey(keys);
      if (
        request.query.keys === undefined ||
        request.query.keys === null ||
        request.query.keys === ""
      ) {
        return helper.response(response, 400, "Invalid Key");
      }
      if (checkData.length > 0) {
        const email = checkData[0].user_email;
        let setData = {
          user_key: "",
          user_status: 1,
          user_updated_at: new Date(),
        };
        const result = await changeData(setData, email);
        return helper.response(
          response,
          200,
          "Your Account is Activated",
          result
        );
      } else {
        return helper.response(response, 400, "Invalid key");
      }
    } catch (error) {
      return helper.response(response, 404, "Bad Request", error);
    }
  },
};
