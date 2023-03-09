import { expressjwt } from "express-jwt";
import * as dotenv from "dotenv";
dotenv.config();
export const auth = expressjwt({
    secret: process.env["JWT_KEY"],
    algorithms: ["HS256"],
});
