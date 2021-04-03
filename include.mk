foo-default:
	@echo  'foo-default'

bar-default: ##OINGK	
	@echo  'bar-default'

help-default: ## Displays this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-40s\033[0m %s\n", $$1, $$2}'


%:  %-default
	@  true