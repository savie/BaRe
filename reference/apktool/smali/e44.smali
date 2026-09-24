.class public abstract Le44;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lf44;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf44;

    .line 2
    .line 3
    invoke-direct {v0}, Lf44;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le44;->a:Lf44;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 8

    .line 1
    :try_start_0
    sget-object v0, Le44;->a:Lf44;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v0, v0, Lf44;->b:[B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-ltz v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    sub-int/2addr v3, v1

    .line 17
    if-ltz v3, :cond_3

    .line 18
    .line 19
    and-int/lit8 v3, v1, 0x1

    .line 20
    .line 21
    if-nez v3, :cond_2

    .line 22
    .line 23
    ushr-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    new-array v3, v1, [B

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    move v5, v4

    .line 29
    :goto_0
    if-ge v4, v1, :cond_1

    .line 30
    .line 31
    add-int/lit8 v6, v5, 0x1

    .line 32
    .line 33
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    aget-byte v7, v0, v7

    .line 38
    .line 39
    add-int/lit8 v5, v5, 0x2

    .line 40
    .line 41
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    aget-byte v6, v0, v6

    .line 46
    .line 47
    shl-int/lit8 v7, v7, 0x4

    .line 48
    .line 49
    or-int/2addr v6, v7

    .line 50
    if-ltz v6, :cond_0

    .line 51
    .line 52
    int-to-byte v6, v6

    .line 53
    aput-byte v6, v3, v4

    .line 54
    .line 55
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-string p0, "invalid characters encountered in Hex string"

    .line 59
    .line 60
    :goto_1
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    move-object v2, v3

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    const-string p0, "a hexadecimal encoding must have an even number of characters"

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const-string p0, "invalid offset and/or length specified"

    .line 70
    .line 71
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    :goto_2
    return-object v2

    .line 75
    :catch_0
    move-exception p0

    .line 76
    new-instance v0, Lvd2;

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v2, "exception decoding Hex string: "

    .line 81
    .line 82
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iput-object p0, v0, Lvd2;->a:Ljava/lang/Exception;

    .line 100
    .line 101
    throw v0
.end method

.method public static b([BI)[B
    .locals 12

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Le44;->a:Lf44;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    if-gez p1, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    const/16 v2, 0x48

    .line 15
    .line 16
    new-array v2, v2, [B

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v3

    .line 20
    :goto_0
    if-lez p1, :cond_2

    .line 21
    .line 22
    const/16 v5, 0x24

    .line 23
    .line 24
    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    add-int v6, v4, v5

    .line 29
    .line 30
    move v7, v3

    .line 31
    :goto_1
    if-ge v4, v6, :cond_1

    .line 32
    .line 33
    add-int/lit8 v8, v4, 0x1

    .line 34
    .line 35
    aget-byte v4, p0, v4

    .line 36
    .line 37
    and-int/lit16 v9, v4, 0xff

    .line 38
    .line 39
    add-int/lit8 v10, v7, 0x1

    .line 40
    .line 41
    iget-object v11, v1, Lf44;->a:[B

    .line 42
    .line 43
    ushr-int/lit8 v9, v9, 0x4

    .line 44
    .line 45
    aget-byte v9, v11, v9

    .line 46
    .line 47
    aput-byte v9, v2, v7

    .line 48
    .line 49
    add-int/lit8 v7, v7, 0x2

    .line 50
    .line 51
    and-int/lit8 v4, v4, 0xf

    .line 52
    .line 53
    aget-byte v4, v11, v4

    .line 54
    .line 55
    aput-byte v4, v2, v10

    .line 56
    .line 57
    move v4, v8

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v0, v2, v3, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    sub-int/2addr p1, v5

    .line 63
    move v4, v6

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    new-instance p1, Lp1;

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v1, "exception encoding Hex string: "

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const/4 v1, 0x1

    .line 92
    invoke-direct {p1, v0, v1}, Lp1;-><init>(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    iput-object p0, p1, Lp1;->b:Ljava/lang/Exception;

    .line 96
    .line 97
    throw p1
.end method
