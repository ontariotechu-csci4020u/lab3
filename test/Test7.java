/* The solution implementation */

import java.util.regex.*;
import java.awt.geom.*;
import java.util.Vector;

public class Main {
    public String name;
    public Main(String name) {
        System.out.printf("Constructor for %s\n", name);
        this.name = name;
    }

    public String f(String a, String b) throws Exception {
        if(a == null || a.length() == 0)
            throw new Exception(this.name + ":" + " a is null");
        if(b == null || b.length() == 0)
            throw new Exception(this.name + ":" + " b is null");

        return a + " " + b;
    }

    public String g(String a, int b) {
        StringBuilder s = new StringBuilder(a);
        s.append(" ");
        s.append(b);
        s.reverse();
        return s.toString();
    }

    public void delay(int ms) throws Exception {
        System.out.printf("[%s] sleep for %d ms\n", this.name, ms);
        Thread.sleep(ms);
        System.out.printf("[%s] done\n", this.name);
    }

    public Pattern compile(String re) throws Exception {
        return Pattern.compile(re);
    }

    public Point2D point() {
        return new Point2D.Double(1, 2);
    }
}
