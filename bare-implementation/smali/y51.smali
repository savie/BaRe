.class public Ly51;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly51$e;,
        Ly51$g;,
        Ly51$f;,
        Ly51$d;,
        Ly51$c;,
        Ly51$b;,
        Ly51$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget-byte v3, p0, v2

    .line 11
    .line 12
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "%02x"

    .line 21
    .line 22
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static c(Ljava/util/Map;ZZ)Lv64$c;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lv64$c;

    .line 6
    .line 7
    invoke-direct {v0}, Lv64$c;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lz51;

    .line 35
    .line 36
    invoke-interface {v2}, Lz51;->sum()[B

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    sget-object v4, Ly51$a;->e:Ly51$a;

    .line 45
    .line 46
    if-ne v3, v4, :cond_2

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    const-string v3, "X-Amz-Content-Sha256"

    .line 51
    .line 52
    invoke-static {v2}, Ly51;->b([B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v0, v3, v4}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    if-nez p2, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Ly51$a;

    .line 67
    .line 68
    invoke-virtual {v3}, Ly51$a;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const-string v4, "x-amz-sdk-checksum-algorithm"

    .line 73
    .line 74
    invoke-virtual {v0, v4, v3}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ly51$a;

    .line 82
    .line 83
    invoke-virtual {v1}, Ly51$a;->b()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v2}, Ly51;->a([B)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    return-object v0
.end method

.method public static d([Ly51$a;)Ljava/util/HashMap;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    const/4 v2, 0x0

    .line 6
    move-object v3, v0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_3

    .line 8
    .line 9
    aget-object v4, p0, v2

    .line 10
    .line 11
    if-eqz v4, :cond_1

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    new-instance v3, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-nez v5, :cond_1

    .line 25
    .line 26
    invoke-virtual {v4}, Ly51$a;->a()Lz51;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move-object v3, v0

    .line 37
    :cond_3
    if-eqz v3, :cond_5

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_4

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    return-object v3

    .line 47
    :cond_5
    :goto_1
    return-object v0
.end method

.method public static e(Ljava/util/HashMap;Lox0;Ljava/io/RandomAccessFile;Ljava/lang/Long;)V
    .locals 8

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lox0;->q0()Ljava/io/InputStream;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iget-wide v0, p1, Lox0;->d:J

    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    move-object v7, p3

    .line 23
    move-object p3, p1

    .line 24
    move-object p1, v7

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    :goto_0
    const/16 v0, 0x4000

    .line 28
    .line 29
    new-array v0, v0, [B

    .line 30
    .line 31
    const-wide/16 v1, 0x0

    .line 32
    .line 33
    :cond_2
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    cmp-long v3, v1, v3

    .line 38
    .line 39
    if-eqz v3, :cond_5

    .line 40
    .line 41
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    sub-long/2addr v3, v1

    .line 46
    const-wide/16 v5, 0x4000

    .line 47
    .line 48
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    long-to-int v3, v3

    .line 53
    const/4 v4, 0x0

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    invoke-virtual {p2, v0, v4, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    :goto_2
    if-ltz v3, :cond_4

    .line 66
    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    int-to-long v4, v3

    .line 70
    add-long/2addr v1, v4

    .line 71
    invoke-static {p0, v0, v3}, Ly51;->f(Ljava/util/Map;[BI)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    new-instance p0, Lrg5;

    .line 76
    .line 77
    const-string p1, "unexpected EOF"

    .line 78
    .line 79
    invoke-direct {p0, p1}, Lrg5;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    move-exception p0

    .line 84
    new-instance p1, Lrg5;

    .line 85
    .line 86
    invoke-direct {p1, p0}, Lrg5;-><init>(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_5
    :goto_3
    return-void
.end method

.method public static f(Ljava/util/Map;[BI)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lz51;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-interface {v0, p1, v1, p2}, Lz51;->update([BII)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    return-void
.end method
