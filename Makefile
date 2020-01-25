CLASSPATH = /volumes/data/lib/antlr-4.8-complete.jar:./target

compile:
	mkdir -p target
	java -cp $(CLASSPATH) org.antlr.v4.Tool src/JavaLexer.g4
	javac -cp $(CLASSPATH) -d target -sourcepath src src/*.java

run: run1 run2 run3 run4 run5 run6 run7

clean:
	rm -f ./target/* ./src/JavaLexer.java ./src/*.interp ./src/*.tokens

run1:
	java -cp $(CLASSPATH) Check test/Test1.java 2>&1

run2:
	java -cp $(CLASSPATH) Check test/Test2.java 2>&1

run3:
	java -cp $(CLASSPATH) Check test/Test3.java 2>&1

run4:
	java -cp $(CLASSPATH) Check test/Test4.java 2>&1

run5:
	java -cp $(CLASSPATH) Check test/Test5.java 2>&1

run6:
	java -cp $(CLASSPATH) Check test/Test6.java 2>&1

run7:
	java -cp $(CLASSPATH) Check test/Test7.java 2>&1

