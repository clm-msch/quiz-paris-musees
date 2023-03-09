/*
  Warnings:

  - Added the required column `paintingsId` to the `Painter` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `painter` ADD COLUMN `paintingsId` INTEGER NOT NULL;
