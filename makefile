html:
	flutter build web --web-renderer canvaskit --dart-define=FLUTTER_WEB_CANVASKIT_URL=/canvaskit/ --no-tree-shake-icons --no-tree-shake-icons --release && make nginx

code:
	dart run build_runner build --delete-conflicting-outputs

l10n:
	rm -rf ./lib/common/l10n/*.arb && dart scripts/generate_l10n.dart && flutter gen-l10n

icon:
	dart scripts/generate_icon.dart

nginx:
	dart ./scripts/generate_vhosts.dart

start:
	flutter run -d chrome --web-renderer canvaskit --web-port=1988

init:
	git submodule add https://github.com/sj-distributor/flutter_oxygen.git packages/flutter_oxygen

module:
	rm -rf packages && rm -rf .git/modules/packages/flutter_oxygen && git submodule update --init --recursive

remove:
	rm -rf packages && rm -rf .git/modules/packages/flutter_oxygen && git config --remove-section submodule.packages/flutter_oxygen && git rm -rf --cached packages/flutter_oxygen