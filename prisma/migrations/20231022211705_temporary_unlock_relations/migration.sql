-- DropForeignKey
ALTER TABLE "CategoriaReceita" DROP CONSTRAINT "CategoriaReceita_empresaId_fkey";

-- DropForeignKey
ALTER TABLE "Ingrediente" DROP CONSTRAINT "Ingrediente_categoriaId_fkey";

-- DropForeignKey
ALTER TABLE "Ingrediente" DROP CONSTRAINT "Ingrediente_empresaId_fkey";

-- DropForeignKey
ALTER TABLE "Receita" DROP CONSTRAINT "Receita_categoriaId_fkey";

-- DropForeignKey
ALTER TABLE "Receita" DROP CONSTRAINT "Receita_empresaId_fkey";

-- DropForeignKey
ALTER TABLE "Receita" DROP CONSTRAINT "Receita_unidadeId_fkey";

-- DropForeignKey
ALTER TABLE "UnidadeMedida" DROP CONSTRAINT "UnidadeMedida_empresaId_fkey";

-- AlterTable
ALTER TABLE "CategoriaReceita" ALTER COLUMN "empresaId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Empresa" ALTER COLUMN "moedaPadrao" DROP NOT NULL,
ALTER COLUMN "idiomaPadrao" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Ingrediente" ALTER COLUMN "categoriaId" DROP NOT NULL,
ALTER COLUMN "empresaId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Receita" ALTER COLUMN "categoriaId" DROP NOT NULL,
ALTER COLUMN "unidadeId" DROP NOT NULL,
ALTER COLUMN "empresaId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "UnidadeMedida" ALTER COLUMN "isFluido" SET DEFAULT false,
ALTER COLUMN "empresaId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "UnidadeMedida" ADD CONSTRAINT "UnidadeMedida_empresaId_fkey" FOREIGN KEY ("empresaId") REFERENCES "Empresa"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Ingrediente" ADD CONSTRAINT "Ingrediente_categoriaId_fkey" FOREIGN KEY ("categoriaId") REFERENCES "CategoriaIngrediente"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Ingrediente" ADD CONSTRAINT "Ingrediente_empresaId_fkey" FOREIGN KEY ("empresaId") REFERENCES "Empresa"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CategoriaReceita" ADD CONSTRAINT "CategoriaReceita_empresaId_fkey" FOREIGN KEY ("empresaId") REFERENCES "Empresa"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Receita" ADD CONSTRAINT "Receita_unidadeId_fkey" FOREIGN KEY ("unidadeId") REFERENCES "UnidadeMedida"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Receita" ADD CONSTRAINT "Receita_categoriaId_fkey" FOREIGN KEY ("categoriaId") REFERENCES "CategoriaReceita"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Receita" ADD CONSTRAINT "Receita_empresaId_fkey" FOREIGN KEY ("empresaId") REFERENCES "Empresa"("id") ON DELETE SET NULL ON UPDATE CASCADE;
