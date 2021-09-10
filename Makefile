.PHONY: rbs

rbs/prototype: rbs/prototype/models rbs/prototype/lib

rbs/prototype/models:
	for file in $$(find app/models -name "*.rb" -type f | sort); do \
		echo $${file}; \
		mkdir -p sig/$$(dirname $${file}); \
		rbs prototype rb $${file} > sig/$${file}s; \
	done

rbs/prototype/lib:
	for file in $$(find lib -name "*.rb" -type f | sort); do \
		echo $${file}; \
		mkdir -p sig/$$(dirname $${file}); \
		rbs prototype rb $${file} > sig/$${file}s; \
	done
