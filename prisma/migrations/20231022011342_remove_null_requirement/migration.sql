-- AlterTable
ALTER TABLE "Ingrediente" ALTER COLUMN "custo" DROP NOT NULL,
ALTER COLUMN "aproveitamento" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Receita" ALTER COLUMN "metodoPreparo" DROP NOT NULL,
ALTER COLUMN "rendimento" DROP NOT NULL;
