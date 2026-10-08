package javax.el;

public class ExpressionFactory {
    public ExpressionFactory() {}
    public static ExpressionFactory newInstance() { return new ExpressionFactory(); }
    public ValueExpression createValueExpression(Object instance, Class<?> expectedType) {
        return new ValueExpression();
    }
}
