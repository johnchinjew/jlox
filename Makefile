SOURCES := $(shell find src -name '*.java')

.PHONY: build run clean

build: clean
	javac --release 25 -d build/classes $(SOURCES)
	jar --create --file build/jlox.jar --main-class lox.Lox -C build/classes .

run: build
	java -jar build/jlox.jar $(ARGS)

clean:
	rm -rf build
