.class public abstract Lha3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/math/MathContext;

.field public static final b:Ljava/math/BigDecimal;

.field public static final c:Ljava/math/BigDecimal;

.field public static final d:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 4
    .line 5
    .line 6
    const-wide v0, 0x7fffffffffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/math/MathContext;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lha3;->a:Ljava/math/MathContext;

    .line 23
    .line 24
    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    .line 25
    .line 26
    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    .line 27
    .line 28
    .line 29
    const-wide v0, -0x19db1ded53e8000L

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lha3;->b:Ljava/math/BigDecimal;

    .line 39
    .line 40
    const-wide/32 v0, 0x989680

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lha3;->c:Ljava/math/BigDecimal;

    .line 48
    .line 49
    const-wide/16 v0, 0x2710

    .line 50
    .line 51
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 52
    .line 53
    .line 54
    const-wide/16 v0, 0x64

    .line 55
    .line 56
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, Lha3;->d:Ljava/math/BigDecimal;

    .line 61
    .line 62
    return-void
.end method

.method public static a(J)Ljava/nio/file/attribute/FileTime;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object p1, Lha3;->b:Ljava/math/BigDecimal;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object p1, Lha3;->c:Ljava/math/BigDecimal;

    .line 12
    .line 13
    sget-object v0, Lha3;->a:Ljava/math/MathContext;

    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 p1, 0x0

    .line 20
    aget-object p1, p0, p1

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValueExact()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const/4 p1, 0x1

    .line 27
    aget-object p0, p0, p1

    .line 28
    .line 29
    sget-object p1, Lha3;->d:Ljava/math/BigDecimal;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    .line 36
    .line 37
    .line 38
    move-result-wide p0

    .line 39
    invoke-static {v0, v1, p0, p1}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public static b(Ljava/nio/file/attribute/FileTime;)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lha3;->c:Ljava/math/BigDecimal;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    div-int/lit8 p0, p0, 0x64

    .line 24
    .line 25
    int-to-long v1, p0

    .line 26
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget-object v0, Lha3;->b:Ljava/math/BigDecimal;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    return-wide v0
.end method
