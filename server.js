const express = require("express");
const app = express();

app.listen(8082, () => {
  console.log("서버 실행중 http://localhost:8082");
});

app.get("/", (req, res) => {
  res.send("안녕");
});

//node server.js 명령어로 해당 자바스크립트 실행
