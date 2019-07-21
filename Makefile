.PHONY: show-releases check-tags create-release sync-origin push-branches push-tags 

show-releases:
	@echo "List of all release numbers...."

check-tags:
	@read -p "Enter Environemtn to provision: " ENVIRONMENT; \
	$$ENVIRONMENT provision

create-release:
	@echo "Latest release is: v0.2.4 from git tag v0.2.4"
	@read -p "Enter new release number: " TAG; \
	$$TAG 

sync-origin:
	push-all-branches push-all-tags

push-branches:
	git push origin --all

push-tags:
	git push origin --tag
