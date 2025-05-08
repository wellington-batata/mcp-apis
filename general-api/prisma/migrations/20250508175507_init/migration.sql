-- CreateTable
CREATE TABLE "todo" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "description" TEXT,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "finishDate" DATETIME NOT NULL,
    "isCompleted" BOOLEAN NOT NULL DEFAULT false,
    "completedAt" DATETIME,
    "slug" TEXT
);

-- CreateIndex
CREATE UNIQUE INDEX "todo_slug_key" ON "todo"("slug");

-- CreateIndex
CREATE INDEX "idx_todo_id" ON "todo"("id");

-- CreateIndex
CREATE INDEX "idx_finish_date" ON "todo"("finishDate");

-- CreateIndex
CREATE INDEX "idx_is_completed" ON "todo"("isCompleted");
