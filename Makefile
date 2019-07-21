PHONY: test

show-releases:
	@echo "List of all release numbers...."

check-tags:
	@read -p "Enter Environemtn to provision: " ENVIRONMENT; \
	$$ENVIRONMENT provision

release:
	@echo "Latest release is: v0.2.4 from git tag v0.2.4"
	@read -p "Enter new release number: " TAG; \
	$$TAG 
