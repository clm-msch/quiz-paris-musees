import { z } from "zod";

const adminValidator = z.object({
    email: z.string().email(),
    password: z.string(),
});

export { adminValidator };
