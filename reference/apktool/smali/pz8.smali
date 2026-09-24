.class public abstract Lpz8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:J

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/32 v0, 0x210000

    .line 2
    .line 3
    .line 4
    invoke-static {v0, v1}, Lpz8;->b(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    sput-wide v0, Lpz8;->a:J

    .line 9
    .line 10
    return-void
.end method

.method public static a([B)[B
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method

.method public static b(J)J
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x19

    .line 6
    .line 7
    shr-long v1, p0, v1

    .line 8
    .line 9
    const-wide/16 v3, 0x7f

    .line 10
    .line 11
    and-long/2addr v1, v3

    .line 12
    long-to-int v1, v1

    .line 13
    add-int/lit16 v1, v1, 0x7bc

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x15

    .line 20
    .line 21
    shr-long v3, p0, v1

    .line 22
    .line 23
    const-wide/16 v5, 0xf

    .line 24
    .line 25
    and-long/2addr v3, v5

    .line 26
    long-to-int v1, v3

    .line 27
    sub-int/2addr v1, v2

    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 30
    .line 31
    .line 32
    const/16 v1, 0x10

    .line 33
    .line 34
    shr-long v3, p0, v1

    .line 35
    .line 36
    long-to-int v1, v3

    .line 37
    and-int/lit8 v1, v1, 0x1f

    .line 38
    .line 39
    const/4 v3, 0x5

    .line 40
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 41
    .line 42
    .line 43
    const/16 v1, 0xb

    .line 44
    .line 45
    shr-long v4, p0, v1

    .line 46
    .line 47
    long-to-int v4, v4

    .line 48
    and-int/lit8 v4, v4, 0x1f

    .line 49
    .line 50
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 51
    .line 52
    .line 53
    shr-long v3, p0, v3

    .line 54
    .line 55
    long-to-int v1, v3

    .line 56
    and-int/lit8 v1, v1, 0x3f

    .line 57
    .line 58
    const/16 v3, 0xc

    .line 59
    .line 60
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 61
    .line 62
    .line 63
    shl-long/2addr p0, v2

    .line 64
    long-to-int p0, p0

    .line 65
    and-int/lit8 p0, p0, 0x3e

    .line 66
    .line 67
    const/16 p1, 0xd

    .line 68
    .line 69
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 70
    .line 71
    .line 72
    const/16 p0, 0xe

    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 83
    .line 84
    .line 85
    move-result-wide p0

    .line 86
    return-wide p0
.end method

.method public static c(Lm5;[B)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    new-instance v1, Ljava/util/zip/CRC32;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-wide v3, p0, Lm5;->a:J

    .line 17
    .line 18
    cmp-long p1, v1, v3

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    :try_start_0
    sget-object p1, Lwy8;->a:Lxm5;

    .line 23
    .line 24
    iget-object p0, p0, Lm5;->b:[B

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    array-length v1, p0

    .line 29
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object p0, v0

    .line 35
    :goto_0
    invoke-virtual {p1, p0}, Lxm5;->a([B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object p0

    .line 40
    :catch_0
    :cond_1
    return-object v0
.end method

.method public static d([B)V
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v0, v0, -0x1

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    div-int/lit8 v2, v2, 0x2

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    aget-byte v2, p0, v1

    .line 11
    .line 12
    sub-int v3, v0, v1

    .line 13
    .line 14
    aget-byte v4, p0, v3

    .line 15
    .line 16
    aput-byte v4, p0, v1

    .line 17
    .line 18
    aput-byte v2, p0, v3

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public static e(I)B
    .locals 2

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    if-gt p0, v0, :cond_1

    .line 4
    .line 5
    if-ltz p0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x80

    .line 8
    .line 9
    if-ge p0, v0, :cond_0

    .line 10
    .line 11
    int-to-byte p0, p0

    .line 12
    return p0

    .line 13
    :cond_0
    add-int/lit16 p0, p0, -0x100

    .line 14
    .line 15
    int-to-byte p0, p0

    .line 16
    return p0

    .line 17
    :cond_1
    const-string v0, "Can only convert non-negative integers between [0,255] to byte: ["

    .line 18
    .line 19
    const-string v1, "]"

    .line 20
    .line 21
    invoke-static {p0, v0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return p0
.end method
