fmt:
	stylua -f ./stylua.toml .
test: fmt
	vusted ./tests
