package entity;

import java.io.Serializable;


public class Point implements Serializable {
    private final double x, y, r;
    private final boolean clicked;

    public Point(double x, double y, double r, boolean clicked) {
        this.x = x;
        this.y = y;
        this.r = r;
        this.clicked = clicked;
    }

    public boolean isClicked() {
        return clicked;
    }

    public double getX() {
        return x;
    }

    public double getY() {
        return y;
    }

    public double getR() {
        return r;
    }
}
