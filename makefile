html:
	flutter build web --web-renderer canvaskit --dart-define=FLUTTER_WEB_CANVASKIT_URL=/canvaskit/ --no-tree-shake-icons --no-tree-shake-icons --release

code:
	dart run build_runner build --delete-conflicting-outputs

l10n:
	rm -rf ./lib/l10n/*.arb && dart scripts/generate_l10n.dart && flutter gen-l10n

icon:
	dart scripts/generate_icon.dart