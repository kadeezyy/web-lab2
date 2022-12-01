package entity;


import java.io.Serializable;
import java.time.LocalDateTime;


public class Result implements Serializable {
    private final int number;
    private final Point point;
    private final boolean successful;
    private final LocalDateTime time;
    private final int executionTimeInMicros;

    public Result(int number, Point point, boolean successful, LocalDateTime time, int executionTimeInMicros) {
        this.number = number;
        this.point = point;
        this.successful = successful;
        this.time = time;
        this.executionTimeInMicros = executionTimeInMicros;
    }

    public String getPointString() {
        return String.format("""
                        <circle fill="%s"
                                cx="%s" cy="%s" r="2.25"></circle>
                        """, successful ? "green" : "red",
                String.valueOf(point.getX() / point.getR() * 140 + 200).replace(",", "."),
                String.valueOf(200 - point.getY() / point.getR() * 140).replace(",", ".")
        );
    }

    @Override
    public String toString() {
        return String.format("""
                        <tr>
                            <td>%s</td>
                            <td>%.2f</td>
                            <td>%.2f</td>
                            <td>%.2f</td>
                            <td>%s</td>
                            <td>%s</td>
                            <td>%s</td>
                            <td>%s</td>
                        <tr>
                        """,
                number, point.getX(), point.getY(),
                point.getR(), successful ? "Да" : "Нет",
                point.isClicked() ? "Нажатие" : "Форма",
                time.format(Constant.DATE_FORMATTER),
                executionTimeInMicros
        );
    }
}
