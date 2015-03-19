# Changelog for Kalecto

## [0.2.0] - 2015-03-18
### Added

Kalecto.DateTime added. The use of this type requires a composite
Postgres type, which can be added with a migration.

## [0.1.2] - 2015-03-16
### Added

Kalecto.Model added with "use macro" that default timestamps to
Kalecto.DateTimeUTC.

## [0.1.1] - 2015-03-13
### Changed

DateTimeUTC loading made faster.

## [0.1.0] - 2015-03-08
### Changed

Supports Ecto 0.9.0. No longer supports Ecto 0.8.x.

### Added
Support for microseconds.