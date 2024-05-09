.PHONY: all run_dev_web run_dev_mobile run_unit clean upgrade lint format build_dev_mobile help watch gen run_stg_mobile run_prd_mobile build_apk_dev build_apk_stg build_apk_prd purge fetch deploy-android deploy-ios default_notification ios

all: lint format run_dev_mobile


# Define variables
IOS_PATH = ios/
ANDROID_PATH = android/
FLUTTER := flutter
FLUTTER_COMMAND := pub get

run_unit: ## Runs unit tests
	@echo "╠ Running the tests"
	@flutter test || (echo "Error while running tests"; exit 1)

clean: ## Cleans the environment
	@echo "╠ Cleaning the project..."
	@rm -rf pubspec.lock
	@flutter clean
	@flutter pub get

clean_ios:
	@echo "Cleaning iOS folder..."
	@cd ios && rm -rf Podfile Podfile.lock Pods .symlinks .flutter-plugins .flutter-plugins-dependencies
	@echo "iOS folder cleaned."

# Run flutter pub get
get_dependencies:
	@echo "Running '$(FLUTTER) $(FLUTTER_COMMAND)' command..."
	$(FLUTTER) $(FLUTTER_COMMAND)


watch: ## Watches the files for changes
	@echo "╠ Watching the project..."
	@dart run build_runner watch --delete-conflicting-outputs

splash: ## Generates the splash screen
	@echo "╠ Generating the splash screen..."
	@dart run flutter_native_splash:create --path=./flutter_native_splash.yaml

app_icon: ## Generates the app icon
	@echo "╠ Generating the app icon..."
	@dart run flutter_launcher_icons

gen: ## Generates the assets
	@echo "╠ Generating the assets..."
	@dart run build_runner build

get: ## Gets the dependencies
	@echo "╠ Getting the dependencies..."
	@flutter pub get

format: ## Formats the code
	@echo "╠ Formatting the code"
	@dart fix --apply
	@dart format lib .
	@flutter pub run import_sorter:main
	@dart format lib

lint: ## Lints the code
	@echo "╠ Verifying code..."
	@dart analyze . || (echo "Error in project"; exit 1)

upgrade: clean ## Upgrades dependencies
	@echo "╠ Upgrading dependencies..."
	@flutter pub upgrade

commit: format lint run_unit
	@echo "╠ Committing..."
	git add .
	git commit

build_apk_prod: ## Runs the mobile application in prod
	@flutter clean
	@flutter pub get
	@flutter build apk --release

fetch: ## Runs and fetches all the freezed package
	@dart run build_runner build --delete-conflicting-outputs

default_notification: ## Runs notification on Emulator for testing
	@xcrun simctl push booted com.synergyng.synergy pushes/push1.json

purge: ## Purges the Flutter 
	@pod deintegrate
	@flutter clean
	@flutter pub get

tabby: ## Runs the application in Tabby
	@echo "╠ Running the application in Tabby..."
	@tabby serve --device metal --model TabbyML/StarCoder-1B
	 

ios: ## Purges the IOS Folder and Fetches the Pod Files
	cd ios &&  arch -x86_64 pod install --repo-update
	cd ..
	@rm -rf pubspec.lock
	@flutter clean
	@flutter pub get


