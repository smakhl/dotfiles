import { $ } from "zx";

const changedFiles = (await $`git status -s`)
  .toString()
  .split("\n")
  .map((l) => l.trim())
  .map((l) => l.substring(2))
  .filter(Boolean);

console.log("🚀 ~ changedFiles:", changedFiles);

await $`git update-index --skip-worktree ${changedFiles}`;
