import express from "express";
import { PrismaClient } from "@prisma/client";


const router = express.Router();
const prisma = new PrismaClient();

export async function getPainterId(painterData) {
    const painter = await prisma.painters.update({
        where: {
            name: paintingData.painterName,
        },
        data: {
            date_of_birth: paintingData.painterDateOfBirth,
            date_of_death: paintingData.painterDateOfDeath,
            image: paintingData.painterPicture,
        },
    });
    return painter;
}