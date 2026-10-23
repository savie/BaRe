.class Lcom/jcraft/jsch/Util;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:[B

.field public static final b:[Ljava/lang/String;

.field public static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sput-object v1, Lcom/jcraft/jsch/Util;->a:[B

    .line 10
    .line 11
    const-string v16, "e"

    .line 12
    .line 13
    const-string v17, "f"

    .line 14
    .line 15
    const-string v2, "0"

    .line 16
    .line 17
    const-string v3, "1"

    .line 18
    .line 19
    const-string v4, "2"

    .line 20
    .line 21
    const-string v5, "3"

    .line 22
    .line 23
    const-string v6, "4"

    .line 24
    .line 25
    const-string v7, "5"

    .line 26
    .line 27
    const-string v8, "6"

    .line 28
    .line 29
    const-string v9, "7"

    .line 30
    .line 31
    const-string v10, "8"

    .line 32
    .line 33
    const-string v11, "9"

    .line 34
    .line 35
    const-string v12, "a"

    .line 36
    .line 37
    const-string v13, "b"

    .line 38
    .line 39
    const-string v14, "c"

    .line 40
    .line 41
    const-string v15, "d"

    .line 42
    .line 43
    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sput-object v1, Lcom/jcraft/jsch/Util;->b:[Ljava/lang/String;

    .line 48
    .line 49
    const-string v1, ""

    .line 50
    .line 51
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/jcraft/jsch/Util;->c:[B

    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a([B[B)Z
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v2

    .line 7
    :cond_0
    move v1, v2

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    aget-byte v3, p0, v1

    .line 11
    .line 12
    aget-byte v4, p1, v1

    .line 13
    .line 14
    if-eq v3, v4, :cond_1

    .line 15
    .line 16
    return v2

    .line 17
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public static b([B[B)Z
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v2

    .line 7
    :cond_0
    move v0, v2

    .line 8
    move v1, v0

    .line 9
    :goto_0
    array-length v3, p0

    .line 10
    if-ge v0, v3, :cond_1

    .line 11
    .line 12
    aget-byte v3, p0, v0

    .line 13
    .line 14
    aget-byte v4, p1, v0

    .line 15
    .line 16
    xor-int/2addr v3, v4

    .line 17
    or-int/2addr v1, v3

    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-nez v1, :cond_2

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_2
    return v2
.end method

.method public static c([B)Ljava/lang/String;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 3
    .line 4
    new-instance v2, Ljava/lang/String;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v2, p0, v3, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    return-object v2
.end method

.method public static d([BII)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 6
    .line 7
    .line 8
    return-object v1
.end method

.method public static e([B)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    array-length v2, p0

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    aput-byte v0, p0, v1

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    :goto_1
    return-void
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "~"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "user.home"

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    :cond_0
    return-object p0
.end method

.method public static g(IILjava/lang/String;)Ljava/net/Socket;
    .locals 2

    .line 1
    new-instance v0, Ljava/net/Socket;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 7
    .line 8
    invoke-direct {v1, p2, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    .line 18
    .line 19
    :catch_1
    instance-of p1, p0, Ljava/net/SocketTimeoutException;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const-string p1, "timeout: socket is not established"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    .line 31
    .line 32
    invoke-direct {p2, p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw p2
.end method

.method public static h(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->o(Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    array-length v3, p0

    .line 9
    if-ge v2, v3, :cond_3

    .line 10
    .line 11
    move v3, v1

    .line 12
    :goto_1
    array-length v4, p1

    .line 13
    if-ge v3, v4, :cond_1

    .line 14
    .line 15
    aget-object v4, p0, v2

    .line 16
    .line 17
    aget-object v5, p1, v3

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    if-nez v0, :cond_2

    .line 30
    .line 31
    aget-object v0, p0, v2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    const-string v3, ","

    .line 35
    .line 36
    invoke-static {v0, v3}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    aget-object v3, p0, v2

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return-object v0
.end method

.method public static i([BII)[B
    .locals 9

    .line 1
    :try_start_0
    new-array v0, p2, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, p1

    .line 5
    move v3, v1

    .line 6
    :goto_0
    add-int v4, p1, p2

    .line 7
    .line 8
    if-ge v2, v4, :cond_2

    .line 9
    .line 10
    aget-byte v4, p0, v2

    .line 11
    .line 12
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->u(B)B

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    shl-int/lit8 v4, v4, 0x2

    .line 17
    .line 18
    add-int/lit8 v5, v2, 0x1

    .line 19
    .line 20
    aget-byte v6, p0, v5

    .line 21
    .line 22
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->u(B)B

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    and-int/lit8 v6, v6, 0x30

    .line 27
    .line 28
    ushr-int/lit8 v6, v6, 0x4

    .line 29
    .line 30
    or-int/2addr v4, v6

    .line 31
    int-to-byte v4, v4

    .line 32
    aput-byte v4, v0, v3

    .line 33
    .line 34
    add-int/lit8 v4, v2, 0x2

    .line 35
    .line 36
    aget-byte v6, p0, v4

    .line 37
    .line 38
    const/16 v7, 0x3d

    .line 39
    .line 40
    if-ne v6, v7, :cond_0

    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    add-int/lit8 v6, v3, 0x1

    .line 46
    .line 47
    aget-byte v5, p0, v5

    .line 48
    .line 49
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->u(B)B

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    and-int/lit8 v5, v5, 0xf

    .line 54
    .line 55
    shl-int/lit8 v5, v5, 0x4

    .line 56
    .line 57
    aget-byte v8, p0, v4

    .line 58
    .line 59
    invoke-static {v8}, Lcom/jcraft/jsch/Util;->u(B)B

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    and-int/lit8 v8, v8, 0x3c

    .line 64
    .line 65
    ushr-int/lit8 v8, v8, 0x2

    .line 66
    .line 67
    or-int/2addr v5, v8

    .line 68
    int-to-byte v5, v5

    .line 69
    aput-byte v5, v0, v6

    .line 70
    .line 71
    add-int/lit8 v5, v2, 0x3

    .line 72
    .line 73
    aget-byte v6, p0, v5

    .line 74
    .line 75
    if-ne v6, v7, :cond_1

    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    add-int/lit8 v6, v3, 0x2

    .line 81
    .line 82
    aget-byte v4, p0, v4

    .line 83
    .line 84
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->u(B)B

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    and-int/lit8 v4, v4, 0x3

    .line 89
    .line 90
    shl-int/lit8 v4, v4, 0x6

    .line 91
    .line 92
    aget-byte v5, p0, v5

    .line 93
    .line 94
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->u(B)B

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    and-int/lit8 v5, v5, 0x3f

    .line 99
    .line 100
    or-int/2addr v4, v5

    .line 101
    int-to-byte v4, v4

    .line 102
    aput-byte v4, v0, v6

    .line 103
    .line 104
    add-int/lit8 v3, v3, 0x3

    .line 105
    .line 106
    add-int/lit8 v2, v2, 0x4

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    :goto_1
    new-array p0, v3, [B

    .line 110
    .line 111
    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    return-object p0

    .line 115
    :catch_0
    move-exception p0

    .line 116
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 117
    .line 118
    const-string p2, "fromBase64: invalid base64 data"

    .line 119
    .line 120
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw p1
.end method

.method public static j(Ljava/lang/String;)[B
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/io/FileInputStream;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    long-to-int p0, v2

    .line 20
    new-array v0, p0, [B

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    sub-int v3, p0, v2

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 26
    .line 27
    .line 28
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-gtz v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    add-int/2addr v2, v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_1
    move-exception v0

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    throw p0
.end method

.method public static k(Lcom/jcraft/jsch/HASH;[B)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Lcom/jcraft/jsch/HASH;->init()V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {p0, p1, v2, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lcom/jcraft/jsch/HASH;->digest()[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Lcom/jcraft/jsch/HASH;->name()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Lcom/jcraft/jsch/HASH;->name()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v3, "MD5"

    .line 35
    .line 36
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    :cond_0
    :goto_0
    array-length p0, p1

    .line 43
    if-ge v2, p0, :cond_2

    .line 44
    .line 45
    aget-byte p0, p1, v2

    .line 46
    .line 47
    and-int/lit16 v3, p0, 0xff

    .line 48
    .line 49
    sget-object v4, Lcom/jcraft/jsch/Util;->b:[Ljava/lang/String;

    .line 50
    .line 51
    ushr-int/lit8 v3, v3, 0x4

    .line 52
    .line 53
    and-int/lit8 v3, v3, 0xf

    .line 54
    .line 55
    aget-object v3, v4, v3

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    and-int/lit8 p0, p0, 0xf

    .line 61
    .line 62
    aget-object p0, v4, p0

    .line 63
    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    array-length p0, p1

    .line 70
    if-ge v2, p0, :cond_0

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    array-length p0, p1

    .line 77
    invoke-static {p0, v2, p1}, Lcom/jcraft/jsch/Util;->q(IZ[B)[B

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    array-length p1, p0

    .line 82
    invoke-static {p0, v2, p1}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-object p0

    .line 94
    :catch_0
    const-string p0, "???"

    .line 95
    .line 96
    return-object p0
.end method

.method public static l([B[B)Z
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-lez v0, :cond_2

    .line 4
    .line 5
    aget-byte v0, p1, v1

    .line 6
    .line 7
    const/16 v2, 0x2e

    .line 8
    .line 9
    if-ne v0, v2, :cond_2

    .line 10
    .line 11
    array-length v0, p0

    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    aget-byte v0, p0, v1

    .line 15
    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    array-length v0, p0

    .line 19
    const/4 v1, 0x2

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    aget-byte v0, p0, v2

    .line 24
    .line 25
    const/16 v1, 0x2a

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    return v2

    .line 30
    :cond_0
    invoke-static {p0, p1, v2, v2}, Lcom/jcraft/jsch/Util;->m([B[BII)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_1
    return v1

    .line 36
    :cond_2
    invoke-static {p0, p1, v1, v1}, Lcom/jcraft/jsch/Util;->m([B[BII)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public static m([B[BII)Z
    .locals 8

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    array-length v2, p1

    .line 7
    :cond_1
    :goto_0
    const/16 v3, 0x2a

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    if-ge p2, v0, :cond_14

    .line 11
    .line 12
    if-ge p3, v2, :cond_14

    .line 13
    .line 14
    aget-byte v5, p0, p2

    .line 15
    .line 16
    const/16 v6, 0x5c

    .line 17
    .line 18
    if-ne v5, v6, :cond_4

    .line 19
    .line 20
    add-int/lit8 p2, p2, 0x1

    .line 21
    .line 22
    if-ne p2, v0, :cond_2

    .line 23
    .line 24
    return v1

    .line 25
    :cond_2
    aget-byte v3, p0, p2

    .line 26
    .line 27
    aget-byte v4, p1, p3

    .line 28
    .line 29
    if-eq v3, v4, :cond_3

    .line 30
    .line 31
    return v1

    .line 32
    :cond_3
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->n(B)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    add-int/2addr p2, v3

    .line 37
    aget-byte v3, p1, p3

    .line 38
    .line 39
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->n(B)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    :goto_1
    add-int/2addr p3, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_4
    const/16 v7, 0x3f

    .line 46
    .line 47
    if-ne v5, v3, :cond_10

    .line 48
    .line 49
    :goto_2
    if-ge p2, v0, :cond_5

    .line 50
    .line 51
    aget-byte v5, p0, p2

    .line 52
    .line 53
    if-ne v5, v3, :cond_5

    .line 54
    .line 55
    add-int/lit8 p2, p2, 0x1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_5
    if-ne v0, p2, :cond_6

    .line 59
    .line 60
    return v4

    .line 61
    :cond_6
    aget-byte v3, p0, p2

    .line 62
    .line 63
    if-ne v3, v7, :cond_9

    .line 64
    .line 65
    :goto_3
    if-ge p3, v2, :cond_8

    .line 66
    .line 67
    invoke-static {p0, p1, p2, p3}, Lcom/jcraft/jsch/Util;->m([B[BII)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    return v4

    .line 74
    :cond_7
    aget-byte v0, p1, p3

    .line 75
    .line 76
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->n(B)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    add-int/2addr p3, v0

    .line 81
    goto :goto_3

    .line 82
    :cond_8
    return v1

    .line 83
    :cond_9
    if-ne v3, v6, :cond_d

    .line 84
    .line 85
    add-int/2addr p2, v4

    .line 86
    if-ne p2, v0, :cond_a

    .line 87
    .line 88
    return v1

    .line 89
    :cond_a
    aget-byte v0, p0, p2

    .line 90
    .line 91
    :goto_4
    if-ge p3, v2, :cond_c

    .line 92
    .line 93
    aget-byte v3, p1, p3

    .line 94
    .line 95
    if-ne v0, v3, :cond_b

    .line 96
    .line 97
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->n(B)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    add-int/2addr v3, p2

    .line 102
    aget-byte v5, p1, p3

    .line 103
    .line 104
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->n(B)I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    add-int/2addr v5, p3

    .line 109
    invoke-static {p0, p1, v3, v5}, Lcom/jcraft/jsch/Util;->m([B[BII)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_b

    .line 114
    .line 115
    return v4

    .line 116
    :cond_b
    aget-byte v3, p1, p3

    .line 117
    .line 118
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->n(B)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    add-int/2addr p3, v3

    .line 123
    goto :goto_4

    .line 124
    :cond_c
    return v1

    .line 125
    :cond_d
    :goto_5
    if-ge p3, v2, :cond_f

    .line 126
    .line 127
    aget-byte v0, p1, p3

    .line 128
    .line 129
    if-ne v3, v0, :cond_e

    .line 130
    .line 131
    invoke-static {p0, p1, p2, p3}, Lcom/jcraft/jsch/Util;->m([B[BII)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_e

    .line 136
    .line 137
    return v4

    .line 138
    :cond_e
    aget-byte v0, p1, p3

    .line 139
    .line 140
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->n(B)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    add-int/2addr p3, v0

    .line 145
    goto :goto_5

    .line 146
    :cond_f
    return v1

    .line 147
    :cond_10
    if-ne v5, v7, :cond_11

    .line 148
    .line 149
    add-int/lit8 p2, p2, 0x1

    .line 150
    .line 151
    aget-byte v3, p1, p3

    .line 152
    .line 153
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->n(B)I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    goto :goto_1

    .line 158
    :cond_11
    aget-byte v6, p1, p3

    .line 159
    .line 160
    if-eq v5, v6, :cond_12

    .line 161
    .line 162
    return v1

    .line 163
    :cond_12
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->n(B)I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    add-int/2addr p2, v5

    .line 168
    aget-byte v5, p1, p3

    .line 169
    .line 170
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->n(B)I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    add-int/2addr p3, v5

    .line 175
    if-lt p3, v2, :cond_1

    .line 176
    .line 177
    if-lt p2, v0, :cond_13

    .line 178
    .line 179
    return v4

    .line 180
    :cond_13
    aget-byte v5, p0, p2

    .line 181
    .line 182
    if-ne v5, v3, :cond_1

    .line 183
    .line 184
    :cond_14
    if-ne p2, v0, :cond_15

    .line 185
    .line 186
    if-ne p3, v2, :cond_15

    .line 187
    .line 188
    return v4

    .line 189
    :cond_15
    if-lt p3, v2, :cond_18

    .line 190
    .line 191
    aget-byte p1, p0, p2

    .line 192
    .line 193
    if-ne p1, v3, :cond_18

    .line 194
    .line 195
    :goto_6
    if-ge p2, v0, :cond_17

    .line 196
    .line 197
    add-int/lit8 p1, p2, 0x1

    .line 198
    .line 199
    aget-byte p2, p0, p2

    .line 200
    .line 201
    if-eq p2, v3, :cond_16

    .line 202
    .line 203
    return v1

    .line 204
    :cond_16
    move p2, p1

    .line 205
    goto :goto_6

    .line 206
    :cond_17
    return v4

    .line 207
    :cond_18
    return v1
.end method

.method public static n(B)I
    .locals 3

    .line 1
    and-int/lit16 v0, p0, 0x80

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    and-int/lit16 v0, p0, 0xe0

    .line 9
    .line 10
    int-to-byte v0, v0

    .line 11
    const/16 v2, -0x40

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x2

    .line 16
    return p0

    .line 17
    :cond_1
    and-int/lit16 p0, p0, 0xf0

    .line 18
    .line 19
    int-to-byte p0, p0

    .line 20
    const/16 v0, -0x20

    .line 21
    .line 22
    if-ne p0, v0, :cond_2

    .line 23
    .line 24
    const/4 p0, 0x3

    .line 25
    return p0

    .line 26
    :cond_2
    return v1
.end method

.method public static o(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_0
    const-string v4, ","

    .line 19
    .line 20
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ltz v4, :cond_1

    .line 25
    .line 26
    sub-int v5, v4, v3

    .line 27
    .line 28
    invoke-static {v0, v3, v5}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    add-int/lit8 v3, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    array-length p0, v0

    .line 39
    sub-int/2addr p0, v3

    .line 40
    invoke-static {v0, v3, p0}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    new-array p0, v2, [Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, [Ljava/lang/String;

    .line 54
    .line 55
    return-object p0
.end method

.method public static p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static q(IZ[B)[B
    .locals 11

    .line 1
    mul-int/lit8 v0, p0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    div-int/lit8 v1, p0, 0x3

    .line 6
    .line 7
    mul-int/lit8 v1, v1, 0x3

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    move v4, v3

    .line 12
    :goto_0
    sget-object v5, Lcom/jcraft/jsch/Util;->a:[B

    .line 13
    .line 14
    const/4 v6, 0x2

    .line 15
    if-ge v3, v1, :cond_0

    .line 16
    .line 17
    aget-byte v7, p2, v3

    .line 18
    .line 19
    ushr-int/2addr v7, v6

    .line 20
    and-int/lit8 v7, v7, 0x3f

    .line 21
    .line 22
    add-int/lit8 v8, v4, 0x1

    .line 23
    .line 24
    aget-byte v7, v5, v7

    .line 25
    .line 26
    aput-byte v7, v0, v4

    .line 27
    .line 28
    aget-byte v7, p2, v3

    .line 29
    .line 30
    and-int/lit8 v7, v7, 0x3

    .line 31
    .line 32
    shl-int/lit8 v7, v7, 0x4

    .line 33
    .line 34
    add-int/lit8 v9, v3, 0x1

    .line 35
    .line 36
    aget-byte v10, p2, v9

    .line 37
    .line 38
    ushr-int/lit8 v10, v10, 0x4

    .line 39
    .line 40
    and-int/lit8 v10, v10, 0xf

    .line 41
    .line 42
    or-int/2addr v7, v10

    .line 43
    add-int/lit8 v10, v4, 0x2

    .line 44
    .line 45
    aget-byte v7, v5, v7

    .line 46
    .line 47
    aput-byte v7, v0, v8

    .line 48
    .line 49
    aget-byte v7, p2, v9

    .line 50
    .line 51
    and-int/lit8 v7, v7, 0xf

    .line 52
    .line 53
    shl-int/lit8 v6, v7, 0x2

    .line 54
    .line 55
    add-int/lit8 v7, v3, 0x2

    .line 56
    .line 57
    aget-byte v8, p2, v7

    .line 58
    .line 59
    ushr-int/lit8 v8, v8, 0x6

    .line 60
    .line 61
    and-int/lit8 v8, v8, 0x3

    .line 62
    .line 63
    or-int/2addr v6, v8

    .line 64
    add-int/lit8 v8, v4, 0x3

    .line 65
    .line 66
    aget-byte v6, v5, v6

    .line 67
    .line 68
    aput-byte v6, v0, v10

    .line 69
    .line 70
    aget-byte v6, p2, v7

    .line 71
    .line 72
    and-int/lit8 v6, v6, 0x3f

    .line 73
    .line 74
    add-int/lit8 v4, v4, 0x4

    .line 75
    .line 76
    aget-byte v5, v5, v6

    .line 77
    .line 78
    aput-byte v5, v0, v8

    .line 79
    .line 80
    add-int/lit8 v3, v3, 0x3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    sub-int/2addr p0, v1

    .line 84
    const/16 v1, 0x3d

    .line 85
    .line 86
    const/4 v7, 0x1

    .line 87
    if-ne p0, v7, :cond_2

    .line 88
    .line 89
    aget-byte p0, p2, v3

    .line 90
    .line 91
    ushr-int/2addr p0, v6

    .line 92
    and-int/lit8 p0, p0, 0x3f

    .line 93
    .line 94
    add-int/lit8 v6, v4, 0x1

    .line 95
    .line 96
    aget-byte p0, v5, p0

    .line 97
    .line 98
    aput-byte p0, v0, v4

    .line 99
    .line 100
    aget-byte p0, p2, v3

    .line 101
    .line 102
    and-int/lit8 p0, p0, 0x3

    .line 103
    .line 104
    shl-int/lit8 p0, p0, 0x4

    .line 105
    .line 106
    and-int/lit8 p0, p0, 0x3f

    .line 107
    .line 108
    add-int/lit8 p2, v4, 0x2

    .line 109
    .line 110
    aget-byte p0, v5, p0

    .line 111
    .line 112
    aput-byte p0, v0, v6

    .line 113
    .line 114
    if-eqz p1, :cond_1

    .line 115
    .line 116
    add-int/lit8 p0, v4, 0x3

    .line 117
    .line 118
    aput-byte v1, v0, p2

    .line 119
    .line 120
    add-int/lit8 v4, v4, 0x4

    .line 121
    .line 122
    aput-byte v1, v0, p0

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    move v4, p2

    .line 126
    goto :goto_1

    .line 127
    :cond_2
    if-ne p0, v6, :cond_3

    .line 128
    .line 129
    aget-byte p0, p2, v3

    .line 130
    .line 131
    ushr-int/2addr p0, v6

    .line 132
    and-int/lit8 p0, p0, 0x3f

    .line 133
    .line 134
    add-int/lit8 v8, v4, 0x1

    .line 135
    .line 136
    aget-byte p0, v5, p0

    .line 137
    .line 138
    aput-byte p0, v0, v4

    .line 139
    .line 140
    aget-byte p0, p2, v3

    .line 141
    .line 142
    and-int/lit8 p0, p0, 0x3

    .line 143
    .line 144
    shl-int/lit8 p0, p0, 0x4

    .line 145
    .line 146
    add-int/2addr v3, v7

    .line 147
    aget-byte v7, p2, v3

    .line 148
    .line 149
    ushr-int/lit8 v7, v7, 0x4

    .line 150
    .line 151
    and-int/lit8 v7, v7, 0xf

    .line 152
    .line 153
    or-int/2addr p0, v7

    .line 154
    add-int/lit8 v7, v4, 0x2

    .line 155
    .line 156
    aget-byte p0, v5, p0

    .line 157
    .line 158
    aput-byte p0, v0, v8

    .line 159
    .line 160
    aget-byte p0, p2, v3

    .line 161
    .line 162
    and-int/lit8 p0, p0, 0xf

    .line 163
    .line 164
    shl-int/2addr p0, v6

    .line 165
    and-int/lit8 p0, p0, 0x3f

    .line 166
    .line 167
    add-int/lit8 p2, v4, 0x3

    .line 168
    .line 169
    aget-byte p0, v5, p0

    .line 170
    .line 171
    aput-byte p0, v0, v7

    .line 172
    .line 173
    if-eqz p1, :cond_1

    .line 174
    .line 175
    add-int/lit8 v4, v4, 0x4

    .line 176
    .line 177
    aput-byte v1, v0, p2

    .line 178
    .line 179
    :cond_3
    :goto_1
    new-array p0, v4, [B

    .line 180
    .line 181
    invoke-static {v0, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    .line 183
    .line 184
    return-object p0
.end method

.method public static r([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :cond_0
    :goto_0
    array-length v2, p0

    .line 8
    if-ge v1, v2, :cond_2

    .line 9
    .line 10
    aget-byte v2, p0, v1

    .line 11
    .line 12
    and-int/lit16 v2, v2, 0xff

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v4, "0x"

    .line 21
    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x1

    .line 30
    if-ne v4, v5, :cond_1

    .line 31
    .line 32
    const-string v4, "0"

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const-string v4, ""

    .line 36
    .line 37
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    array-length v2, p0

    .line 53
    if-ge v1, v2, :cond_0

    .line 54
    .line 55
    const-string v2, ":"

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->t([B)[B

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    array-length v1, v1

    .line 12
    array-length v3, v2

    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    array-length p0, v2

    .line 17
    new-instance v1, Ljava/lang/String;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v1, v2, v3, p0, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 21
    .line 22
    .line 23
    return-object v1
.end method

.method public static t([B)[B
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5
    .line 6
    aget-byte v3, p0, v2

    .line 7
    .line 8
    const/16 v4, 0x5c

    .line 9
    .line 10
    if-ne v3, v4, :cond_1

    .line 11
    .line 12
    add-int/lit8 v3, v2, 0x1

    .line 13
    .line 14
    if-ne v3, v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    array-length v4, p0

    .line 18
    sub-int/2addr v4, v3

    .line 19
    invoke-static {p0, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    move v2, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    :goto_1
    array-length v2, p0

    .line 30
    if-ne v0, v2, :cond_3

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_3
    new-array v2, v0, [B

    .line 34
    .line 35
    invoke-static {p0, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    return-object v2
.end method

.method public static u(B)B
    .locals 4

    .line 1
    const/16 v0, 0x3d

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    move v0, v1

    .line 8
    :goto_0
    sget-object v2, Lcom/jcraft/jsch/Util;->a:[B

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    if-ge v0, v3, :cond_2

    .line 12
    .line 13
    aget-byte v2, v2, v0

    .line 14
    .line 15
    if-ne p0, v2, :cond_1

    .line 16
    .line 17
    int-to-byte p0, v0

    .line 18
    return p0

    .line 19
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    return v1
.end method
