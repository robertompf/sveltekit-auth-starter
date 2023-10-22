-- DropForeignKey
ALTER TABLE "Ingrediente" DROP CONSTRAINT "Ingrediente_unidadeCompraId_fkey";

-- AlterTable
ALTER TABLE "Ingrediente" ALTER COLUMN "unidadeCompraId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Ingrediente" ADD CONSTRAINT "Ingrediente_unidadeCompraId_fkey" FOREIGN KEY ("unidadeCompraId") REFERENCES "UnidadeMedida"("id") ON DELETE SET NULL ON UPDATE CASCADE;
