COLOR_NO=\x1b[0m
COLOR_OK=\x1b[32;01m
COLOR_WARN=\x1b[33;01m
COLOR_ERROR=\x1b[31;01m

define ensure_no_output_by_default
	if [ -z "`sass --load-path bower_components tests/no-output.scss`" ]; \
	then \
		echo "$(COLOR_OK)✔$(COLOR_NO) '@import \"index\";' don't output anything."; \
		exit 0; \
	else \
		echo "$(COLOR_ERROR)✗$(COLOR_NO) '@import \"index\";' should output anything by default."; \
		exit 1; \
	fi
endef

all: clean install css css-tests prefix

clean:
	-@rm *.css 2>/dev/null || true
	@echo "$(COLOR_OK)✔$(COLOR_NO) Previous CSS deleted"

install:
	@bower install

css: tests/output.scss
	@sass --load-path bower_components tests/output.scss index.css
	@echo "$(COLOR_OK)✔$(COLOR_NO) Default CSS created"

prefix:
	@autoprefixer *.css tests/*.css
	@echo "$(COLOR_OK)✔$(COLOR_NO) CSS Prefix added"

test: test-no-output test-default test-tests

test-no-output: tests/no-output.scss
	@$(call ensure_no_output_by_default)

test-default: index.css
	@diff tests/output.expected.css index.css
	@echo "$(COLOR_OK)✔$(COLOR_NO) Defaut CSS is equal to expectations"

css-tests: tests/tests.scss
	@sass --load-path bower_components tests/tests.scss tests/tests.css
	@echo "$(COLOR_OK)✔$(COLOR_NO) CSS for tests created"
	
test-tests: tests/tests.scss
	@diff tests/tests.expected.css tests/tests.css
	@echo "$(COLOR_OK)✔$(COLOR_NO) Defaut CSS is equal to expectations"