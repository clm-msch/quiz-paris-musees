/*
  Warnings:

  - You are about to drop the `painter` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `painting` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `painting` DROP FOREIGN KEY `Painting_painterId_fkey`;

-- AlterTable
ALTER TABLE `user` MODIFY `password` VARCHAR(255) NOT NULL;

-- DropTable
DROP TABLE `painter`;

-- DropTable
DROP TABLE `painting`;

-- CreateTable
CREATE TABLE `Paintings` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `painting_uuid` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `url` VARCHAR(255) NOT NULL,
    `painter_id` INTEGER NOT NULL,

    UNIQUE INDEX `Paintings_painting_uuid_key`(`painting_uuid`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Painters` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `image` VARCHAR(191) NOT NULL,
    `date_of_birth` VARCHAR(191) NOT NULL,
    `date_of_death` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Paintings` ADD CONSTRAINT `Paintings_painter_id_fkey` FOREIGN KEY (`painter_id`) REFERENCES `Painters`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
