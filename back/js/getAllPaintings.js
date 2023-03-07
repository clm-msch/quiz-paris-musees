import express from "express";
import { PrismaClient } from "@prisma/client";

const router = express.Router();
const prisma = new PrismaClient();

export async function AllPaintings() {
    const paintings = await prisma.paintings.findMany();
    return paintings;
}
