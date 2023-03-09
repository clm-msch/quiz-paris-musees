/*
  Warnings:

  - You are about to drop the column `date_of_birth` on the `painters` table. All the data in the column will be lost.
  - You are about to drop the column `date_of_death` on the `painters` table. All the data in the column will be lost.
  - You are about to drop the column `image` on the `painters` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `painters` DROP COLUMN `date_of_birth`,
    DROP COLUMN `date_of_death`,
    DROP COLUMN `image`;
