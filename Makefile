CLASSPATH = /volumes/data/lib/antlr-4.8-complete.jar:./target
g4:
	java -cp $(CLASSPATH) org.antlr.v4.Tool src/JavaLexer.g4

java:
	mkdir -p target
	javac -cp $(CLASSPATH) -d target -sourcepath src src/*.java

run:
	java -cp $(CLASSPATH) Check test/Main.java 2>&1

clean:
	rm -f ./target/* ./src/JavaLexer.java ./src/*.interp ./src/*.tokens

