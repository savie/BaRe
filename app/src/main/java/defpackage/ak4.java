package defpackage;

import java.lang.reflect.Member;
import java.lang.reflect.Modifier;

public enum ak4 {
    BINARY,
    BOOLEAN,
    NUMBER,
    NUMBER_FLOAT,
    NUMBER_INT,
    STRING,
    SCALAR,
    ARRAY,
    OBJECT,
    ANY,
    NATURAL,
    POJO;

    public static final ak4 a = BINARY;
    public static final ak4 b = NUMBER;
    public static final ak4 c = NUMBER_FLOAT;
    public static final ak4 d = NUMBER_INT;
    public static final ak4 e = STRING;
    public static final ak4 f = SCALAR;
    public static final ak4 k = ARRAY;
    public static final ak4 n = OBJECT;
    public static final ak4 p = ANY;
    public static final ak4 q = NATURAL;

    public final boolean a() { return this == NUMBER || this == NUMBER_INT || this == NUMBER_FLOAT; }
}
