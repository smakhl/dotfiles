import { $ } from "zx";

const stashes = (await $`git stash list`).toString().split("\n");

const overrideStashEntry = stashes.find((l) => l.includes("OVERRIDES"));
if (!overrideStashEntry) process.exit();

const [, stashIndex] = overrideStashEntry.match(/\{(\d+)\}/);
if (!stashIndex) process.exit();

await $`git stash pop ${stashIndex}`;

const changedFiles = (await $`git status -s`)
  .toString()
  .split("\n")
  .map((l) => l.trim())
  .map((l) => l.substring(2))
  .filter(Boolean);

await $`git update-index --skip-worktree ${changedFiles}`;
