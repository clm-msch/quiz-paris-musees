import { expressjwt } from "express-jwt";


export const auth = expressjwt({
    secret: process.env["JWT_KEY"],
    algorithms: ["HS256"],
});
