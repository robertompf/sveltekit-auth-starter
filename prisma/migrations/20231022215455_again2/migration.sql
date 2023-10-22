/*
  Warnings:

  - Made the column `unidadeCompraId` on table `Ingrediente` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "Ingrediente" DROP CONSTRAINT "Ingrediente_unidadeCompraId_fkey";

-- AlterTable
ALTER TABLE "Ingrediente" ALTER COLUMN "unidadeCompraId" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "Ingrediente" ADD CONSTRAINT "Ingrediente_unidadeCompraId_fkey" FOREIGN KEY ("unidadeCompraId") REFERENCES "UnidadeMedida"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
