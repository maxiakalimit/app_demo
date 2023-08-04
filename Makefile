intl:
	@fvm flutter gen-l10n
run-prod:
	@fvm flutter run -t lib/main_prod.dart
run-dev:
	@fvm flutter run -t lib/main.dart
pods-fix:
	@cd ios && rm -rf Pods && rm -rf Podfile.lock && pod install --repo-update && cd -
codegen:
	@fvm flutter pub run build_runner watch --delete-conflicting-outputs
codegen-fix:
	@fvm flutter clean && fvm flutter packages pub get && fvm flutter pub run build_runner watch --delete-conflicting-outputs
docgen:
	@dart doc .
dcm-analyze:
	@fvm flutter pub run dart_code_metrics:metrics analyze lib
check-unused-files:
	@fvm flutter pub run dart_code_metrics:metrics check-unused-files lib
check-unused-code:
	@fvm flutter pub run dart_code_metrics:metrics check-unused-code lib
check-unused-l10n:
	@fvm flutter pub run dart_code_metrics:metrics check-unused-l10n lib
check-unnecessary-nullable:
	@fvm flutter pub run dart_code_metrics:metrics check-unnecessary-nullable lib
