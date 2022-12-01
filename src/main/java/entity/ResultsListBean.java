package entity;

import java.io.Serializable;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.stream.Collectors;



public class ResultsListBean implements Serializable {
    public ResultsListBean(){}
    private final List<Result> results = new CopyOnWriteArrayList<>();

    @Override
    public String toString() {
        return results.stream()
                .map(Result::toString)
                .collect(Collectors.joining());
    }

    public List<Result> getResults(){
        return results;
    }
}
