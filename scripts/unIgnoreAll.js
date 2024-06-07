import { $ } from "zx";

const ignoredFiles = (await $`git ls-files -v . | grep ^S`)
  .toString()
  .split("\n")
  .map((l) => l.trim())
  .map((l) => l.substring(2))
  .filter(Boolean);

await $`git update-index --no-skip-worktree ${ignoredFiles}`;
