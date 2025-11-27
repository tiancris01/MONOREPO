# Branching and Commit Guide

## 🌳 Branching

**Pattern:** `type/scope/description`

```bash
feature/ds-fake-store-api/add-product-card
fix/epam-tech-interview/login-crash
chore/workspace/update-dependencies
docs/ds-fake-store-api/widget-examples
```

**Types:** `feature`, `fix`, `chore`, `docs`, `refactor`, `test`, `perf`, `ci`

**Scopes:** `ds-fake-store-api`, `epam-tech-interview`, `fake-store-api-app`, `workspace`

**Rules:**

- Branch from `main`
- Short-lived (1-3 days max)
- One change per branch
- Delete after merge

---

## ✍️ Commits

**Format:** `TYPE: Description`

```bash
# You write
git commit -m "FEAT: Add scaling gesture for components"

# Melos generates in changelog
FEAT: Add scaling gesture for components (#3770). (f413eddb)
```

### Types

| Type       | Use For           |
| ---------- | ----------------- |
| `FEAT`     | New features      |
| `FIX`      | Bug fixes         |
| `DOCS`     | Documentation     |
| `CHORE`    | Maintenance, deps |
| `TEST`     | Tests             |
| `REFACTOR` | Code restructure  |
| `PERF`     | Performance       |
| `CI`       | CI/CD changes     |

### With Scope (Optional)

```bash
FEAT(ds-fake-store-api): Add ProductCard widget
FIX(epam-tech-interview): Resolve login crash
CHORE(workspace): Update dependencies
```

### Breaking Changes

```bash
FEAT!: Redesign ProductCard API

BREAKING CHANGE: Constructor signature changed
```

### Link Issues

```bash
git commit -m "FIX: Resolve login crash

Fixes #123"
```

---

## 📋 Changelog (Auto-generated)

```markdown
## 1.0.0

### Features

- Add ProductCard widget (#123). (abc1234)
- Add scaling gesture for components (#3770). (f413eddb)

### Bug Fixes

- Resolve login crash (#126). (jkl3456)

### Documentation

- Update README (#128). (pqr1234)
```

---

## 🔄 Workflow

```bash
# 1. Create branch
git checkout -b feature/ds-fake-store-api/product-card

# 2. Commit
git commit -m "FEAT: Add ProductCard widget"
git commit -m "TEST: Add ProductCard tests"

# 3. Push & PR
git push origin feature/ds-fake-store-api/product-card

# 4. After merge
git checkout main && git pull
git branch -d feature/ds-fake-store-api/product-card

# 5. Release
melos version
git push --follow-tags
```

---

## ✅ Quick Reference

```bash
# Branch
git checkout -b type/scope/description

# Commit
git commit -m "TYPE: Description"
git commit -m "TYPE(scope): Description"

# Release
melos version
```

---

## ❌ Avoid

- ❌ Lowercase types: `feat` (use `FEAT`)
- ❌ Missing colon: `FEAT add feature`
- ❌ Vague messages: "update stuff"
- ❌ Long-lived branches
- ❌ Committing to `main` directly
