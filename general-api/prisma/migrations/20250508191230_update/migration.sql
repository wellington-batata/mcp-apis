-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_todo" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "description" TEXT,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "finishDate" DATETIME,
    "isCompleted" BOOLEAN NOT NULL DEFAULT false,
    "completedAt" DATETIME,
    "slug" TEXT
);
INSERT INTO "new_todo" ("completedAt", "createdAt", "description", "finishDate", "id", "isCompleted", "slug") SELECT "completedAt", "createdAt", "description", "finishDate", "id", "isCompleted", "slug" FROM "todo";
DROP TABLE "todo";
ALTER TABLE "new_todo" RENAME TO "todo";
CREATE UNIQUE INDEX "todo_slug_key" ON "todo"("slug");
CREATE INDEX "idx_todo_id" ON "todo"("id");
CREATE INDEX "idx_finish_date" ON "todo"("finishDate");
CREATE INDEX "idx_is_completed" ON "todo"("isCompleted");
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
