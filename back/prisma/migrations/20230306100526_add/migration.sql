/*
  Warnings:

  - You are about to drop the column `paintingsId` on the `painter` table. All the data in the column will be lost.
  - You are about to drop the column `price` on the `painting` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `painter` DROP COLUMN `paintingsId`;

-- AlterTable
ALTER TABLE `painting` DROP COLUMN `price`;
