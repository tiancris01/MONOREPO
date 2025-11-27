# GitHub Copilot Instructions

## Project Context

This is a Flutter design system package (`ds_fake_store_api`) using atomic design principles with a weather theme.

## Code Quality Standards

### SOLID Principles

- **Single Responsibility**: Each component should have one clear purpose
- **Open/Closed**: Design tokens and components should be extensible without modification
- **Liskov Substitution**: Widget variations must maintain expected behavior
- **Interface Segregation**: Expose minimal, focused APIs through context extensions
- **Dependency Inversion**: Depend on abstractions (tokens) not concrete values

### Clean Code Practices

- **Meaningful Names**: Use descriptive, weather-themed identifiers
- **Small Functions**: Keep widget build methods focused and composable
- **DRY Principle**: Extract reusable logic into tokens and utilities
- **Formatting**: Follow official Dart style guide (dart format)
- **Comments**: Document WHY, not WHAT; use dartdoc for public APIs

### Design Patterns

- **Factory Pattern**: Use for theme variants (light/dark)
- **Extension Pattern**: For clean context-based API access
- **Composite Pattern**: For atomic design composition
- **Strategy Pattern**: For theme-switching behavior
- **Builder Pattern**: For complex widget configuration

## Branching and Commit Strategy

- Use this file BRANCHING_AND_COMMIT_GUIDE.md for branch naming conventions.
- Follow semantic versioning for releases.
- Ensure branches are named according to the defined conventions for clarity and consistency.
- Write commit messages that clearly describe the changes made, following the conventional commits format.
- Regularly review and refactor code to maintain quality and adherence to standards.
