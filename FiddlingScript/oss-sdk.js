const oss = require("ali-oss");
const fileName = process.argv[2];
const cwd = process.cwd();
const aliWd = cwd.match(/\w{4,}-\w{3,}$/g);

const src = oss({
  accessKeyId: "🎊",
  accessKeySecret: "🎊",
  bucket: "🎊",
  region: "🎊",
});

const beets = oss({
  accessKeyId: "🎊",
  accessKeySecret: "🎊",
  bucket: "🎊",
  region: "🎊",
});

async function put(e) {
  if (process.argv[3] === "blog") {
    try {
      const putStatus = await beets.put(fileName, cwd + "/dist/" + fileName);
      console.log("Upload: %s, Status: %s", fileName, putStatus.res.status);
    } catch (e) {
      console.log(e);
    }
  } else {
    if (e)
      return console.log(
        "Please specify which file Object to upload(with arguments[3])"
      );
    const local = cwd + "/" + fileName;
    try {
      const putStatus = await src.put(e + "/" + fileName, local);
      console.log("status: %s", putStatus.res.status);
    } catch (e) {
      console.log(e);
    }
  }
}

put(aliWd ? aliWd[0] : null);
