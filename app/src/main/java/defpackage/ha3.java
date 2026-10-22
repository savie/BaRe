package defpackage;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.nio.file.attribute.FileTime;
import java.time.Instant;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ha3 {
    public static final MathContext a;
    public static final BigDecimal b;
    public static final BigDecimal c;
    public static final BigDecimal d;

    static {
        BigDecimal.valueOf(Long.MIN_VALUE);
        BigDecimal.valueOf(Long.MAX_VALUE);
        a = new MathContext(0, RoundingMode.FLOOR);
        FileTime.from(Instant.EPOCH);
        b = BigDecimal.valueOf(-116444736000000000L);
        c = BigDecimal.valueOf(10000000L);
        BigDecimal.valueOf(10000L);
        d = BigDecimal.valueOf(100L);
    }

    public static FileTime a(long j) {
        BigDecimal[] bigDecimalArrDivideAndRemainder = BigDecimal.valueOf(j).add(b).divideAndRemainder(c, a);
        return FileTime.from(Instant.ofEpochSecond(bigDecimalArrDivideAndRemainder[0].longValueExact(), bigDecimalArrDivideAndRemainder[1].multiply(d).longValueExact()));
    }

    public static long b(FileTime fileTime) {
        Instant instant = fileTime.toInstant();
        return BigDecimal.valueOf(instant.getEpochSecond()).multiply(c).add(BigDecimal.valueOf(instant.getNano() / 100)).subtract(b).longValueExact();
    }
}
