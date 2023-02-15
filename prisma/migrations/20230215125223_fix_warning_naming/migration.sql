/*
  Warnings:

  - You are about to drop the `Warnings` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Warnings" DROP CONSTRAINT "Warnings_modId_fkey";

-- DropForeignKey
ALTER TABLE "Warnings" DROP CONSTRAINT "Warnings_userId_fkey";

-- RenameTable
ALTER TABLE "Warnings" RENAME TO "Warning";

-- AddForeignKey
ALTER TABLE "Warning" ADD CONSTRAINT "Warning_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Warning" ADD CONSTRAINT "Warning_modId_fkey" FOREIGN KEY ("modId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
