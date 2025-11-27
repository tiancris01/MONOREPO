# Git Hooks for Flutter Monorepo

This directory contains git hooks that enforce code quality and consistency across the monorepo.

## 🎯 Available Hooks

### `pre-push`

Runs before `git push` and validates:

- ✅ Branch naming convention (`type/scope/description`)
- ✅ Commit message format (`TYPE: Description`)
- ✅ Flutter analyze (no errors/warnings)
- ✅ Dart formatting (properly formatted)
- ✅ Dependencies are up to date

### `commit-msg`

Runs during `git commit` and validates:

- ✅ Commit message follows conventional format
- ✅ Message length (not too short/long)
- ✅ Valid commit types

## 🚀 Installation

Run the installation script:

```bash
chmod +x .githooks/install-hooks.sh
./.githooks/install-hooks.sh
```

Or manually:

```bash
cp .githooks/pre-push .git/hooks/pre-push
cp .githooks/commit-msg .git/hooks/commit-msg
chmod +x .git/hooks/pre-push
chmod +x .git/hooks/commit-msg
```

## 📋 Branch Naming Convention

**Format:** `type/scope/description`

**Valid types:**

- `feature` - New features
- `fix` - Bug fixes
- `chore` - Maintenance
- `docs` - Documentation
- `refactor` - Code restructuring
- `test` - Tests
- `perf` - Performance improvements

**Valid scopes:**

- `workspace` - Cross-cutting changes
- `ds-fake-store-api` - Design system package
- `epam-tech-interview` - EPAM app
- `fake-store-api-app` - Fake store app

**Examples:**

```bash
feature/workspace/add-melos-setup
fix/ds-fake-store-api/button-crash
chore/workspace/update-dependencies
docs/ds-fake-store-api/widget-examples
```

## ✍️ Commit Message Convention

**Format:** `TYPE: Description`

**Valid types:**

- `FEAT` - New features
- `FIX` - Bug fixes
- `DOCS` - Documentation
- `CHORE` - Maintenance
- `TEST` - Tests
- `REFACTOR` - Code restructuring
- `PERF` - Performance improvements
- `CI` - CI/CD changes

**Examples:**

```bash
FEAT: Add ProductCard widget
FIX: Resolve login crash
DOCS: Update README
CHORE: Update dependencies
```

## 🔧 Bypassing Hooks

**Not recommended, but possible:**

```bash
git push --no-verify
git commit --no-verify -m "message"
```

## 🛠️ Troubleshooting

### Hook not running?

- Check if hooks are executable: `ls -la .git/hooks/`
- Reinstall: `./.githooks/install-hooks.sh`

### Melos not found?

```bash
dart pub global activate melos
export PATH="$PATH":"$HOME/.pub-cache/bin"
```

### Analysis/format failures?

```bash
# Fix formatting
melos run format

# Check what analyze found
melos run analyze
```

## 🎯 Benefits

- ✅ **Consistent code quality** across all packages
- ✅ **Prevent bad commits** from reaching remote
- ✅ **Enforce naming conventions** automatically
- ✅ **Fast feedback** before CI runs
- ✅ **Team alignment** on standards
