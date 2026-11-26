-- CreateEnum
CREATE TYPE "ChildStatus" AS ENUM ('ACTIVE', 'DISCHARGED');

-- CreateEnum
CREATE TYPE "FamilySituation" AS ENUM ('ORPHAN', 'WITHOUT_PARENTAL_CARE', 'OTHER');

-- CreateTable
CREATE TABLE "Child" (
    "id" SERIAL NOT NULL,
    "firstName" TEXT NOT NULL,
    "lastName" TEXT NOT NULL,
    "birthDate" TIMESTAMP(3) NOT NULL,
    "familySituation" "FamilySituation" NOT NULL,
    "status" "ChildStatus" NOT NULL DEFAULT 'ACTIVE',
    "admissionDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Child_pkey" PRIMARY KEY ("id")
);
