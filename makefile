fmt:
	stylua -f ./stylua.toml .
test:
	vusted ./tests
