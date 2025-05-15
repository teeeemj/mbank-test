.PHONY: all clean upgrade lint format help gen build

all: lint format

# Adding a help file: https://gist.github.com/prwhite/8168133#gistcomment-1313022
help: ## This help dialog.
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info ; \
	done

clean: ## Cleans the environment
	@echo "╠ Cleaning the project..."
	@rm -rf pubspec.lock
	@flutter clean
	@flutter pub get

build: ## Build the files for changes
	@echo "╠ Building the project..."
	@dart run build_runner build --delete-conflicting-outputs


gen: ## Generates the assets
	@dart run build_runner build

format: ## Formats the code
	@echo "╠ Formatting the code"
	@dart format lib .
	@flutter pub run import_sorter:main
	@flutter format lib

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

	