.class Lcom/jcraft/jsch/KeyPairECDSA;
.super Lcom/jcraft/jsch/KeyPair;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final A:[Ljava/lang/String;

.field public static final B:[B

.field public static final C:[B

.field public static final y:[[B

.field public static final z:[Ljava/lang/String;


# instance fields
.field public t:[B

.field public u:[B

.field public v:[B

.field public w:[B

.field public x:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x7

    .line 9
    new-array v2, v1, [B

    .line 10
    .line 11
    fill-array-data v2, :array_1

    .line 12
    .line 13
    .line 14
    new-array v1, v1, [B

    .line 15
    .line 16
    fill-array-data v1, :array_2

    .line 17
    .line 18
    .line 19
    filled-new-array {v0, v2, v1}, [[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/jcraft/jsch/KeyPairECDSA;->y:[[B

    .line 24
    .line 25
    const-string v0, "nistp384"

    .line 26
    .line 27
    const-string v1, "nistp521"

    .line 28
    .line 29
    const-string v2, "nistp256"

    .line 30
    .line 31
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/jcraft/jsch/KeyPairECDSA;->z:[Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lcom/jcraft/jsch/d;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Lcom/jcraft/jsch/e;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, [Ljava/lang/String;

    .line 60
    .line 61
    sput-object v0, Lcom/jcraft/jsch/KeyPairECDSA;->A:[Ljava/lang/String;

    .line 62
    .line 63
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 64
    .line 65
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 66
    .line 67
    const-string v1, "-----BEGIN EC PRIVATE KEY-----"

    .line 68
    .line 69
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    sput-object v1, Lcom/jcraft/jsch/KeyPairECDSA;->B:[B

    .line 74
    .line 75
    const-string v1, "-----END EC PRIVATE KEY-----"

    .line 76
    .line 77
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/jcraft/jsch/KeyPairECDSA;->C:[B

    .line 82
    .line 83
    return-void

    .line 84
    nop

    .line 85
    :array_0
    .array-data 1
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
    .end array-data

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    nop

    .line 95
    :array_1
    .array-data 1
        0x6t
        0x5t
        0x2bt
        -0x7ft
        0x4t
        0x0t
        0x22t
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_2
    .array-data 1
        0x6t
        0x5t
        0x2bt
        -0x7ft
        0x4t
        0x0t
        0x23t
    .end array-data
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 61
    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B)V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    const/16 p0, 0x8

    .line 13
    .line 14
    new-array p1, p0, [B

    .line 15
    .line 16
    const/16 v1, 0xb

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {p2, v1, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 23
    .line 24
    const-string p2, "nistp384"

    .line 25
    .line 26
    invoke-static {p2, p0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p1, p2}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    const/16 p2, 0x180

    .line 37
    .line 38
    iput p2, v0, Lcom/jcraft/jsch/KeyPairECDSA;->x:I

    .line 39
    .line 40
    iput-object p1, v0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B

    .line 41
    .line 42
    :cond_0
    const-string p2, "nistp521"

    .line 43
    .line 44
    invoke-static {p2, p0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p1, p0}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    const/16 p0, 0x209

    .line 55
    .line 56
    iput p0, v0, Lcom/jcraft/jsch/KeyPairECDSA;->x:I

    .line 57
    .line 58
    iput-object p1, v0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B

    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 63
    sget-object p1, Lcom/jcraft/jsch/KeyPairECDSA;->z:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 64
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B

    const/16 p1, 0x100

    .line 66
    iput p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->x:I

    if-eqz p2, :cond_0

    .line 67
    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B

    .line 68
    :cond_0
    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->u:[B

    .line 69
    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->v:[B

    .line 70
    iput-object p5, p0, Lcom/jcraft/jsch/KeyPairECDSA;->w:[B

    if-eqz p5, :cond_3

    .line 71
    array-length p2, p5

    const/16 p3, 0x40

    if-lt p2, p3, :cond_1

    const/16 p1, 0x209

    goto :goto_0

    :cond_1
    array-length p2, p5

    const/16 p3, 0x30

    if-lt p2, p3, :cond_2

    const/16 p1, 0x180

    :cond_2
    :goto_0
    iput p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->x:I

    :cond_3
    return-void
.end method

.method public static A([B[B)[B
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    add-int/2addr v0, v1

    .line 4
    array-length v2, p1

    .line 5
    add-int/2addr v0, v2

    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    const/4 v3, 0x0

    .line 10
    aput-byte v2, v0, v3

    .line 11
    .line 12
    array-length v2, p0

    .line 13
    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    array-length p0, p0

    .line 17
    add-int/2addr p0, v1

    .line 18
    array-length v1, p1

    .line 19
    invoke-static {p1, v3, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static y([B)[[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    aget-byte v2, p0, v1

    .line 4
    .line 5
    const/4 v3, 0x4

    .line 6
    if-eq v2, v3, :cond_0

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    array-length v2, p0

    .line 14
    sub-int/2addr v2, v1

    .line 15
    div-int/lit8 v2, v2, 0x2

    .line 16
    .line 17
    new-array v3, v2, [B

    .line 18
    .line 19
    array-length v4, p0

    .line 20
    sub-int/2addr v4, v1

    .line 21
    div-int/lit8 v4, v4, 0x2

    .line 22
    .line 23
    new-array v5, v4, [B

    .line 24
    .line 25
    invoke-static {p0, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    add-int/2addr v1, v2

    .line 29
    invoke-static {p0, v1, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    filled-new-array {v3, v5}, [[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static z(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 8

    .line 1
    const/4 v0, 0x5

    .line 2
    const-string v1, "invalid key format"

    .line 3
    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->d(ILjava/lang/String;)[[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x1

    .line 9
    aget-object v3, p1, v0

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    aget-object v1, p1, v1

    .line 13
    .line 14
    invoke-static {v1}, Lcom/jcraft/jsch/KeyPairECDSA;->y([B)[[B

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v7, 0x0

    .line 19
    aget-object v4, v1, v7

    .line 20
    .line 21
    aget-object v5, v1, v0

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    aget-object v6, p1, v0

    .line 25
    .line 26
    new-instance v1, Lcom/jcraft/jsch/KeyPairECDSA;

    .line 27
    .line 28
    move-object v2, p0

    .line 29
    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x4

    .line 33
    aget-object p0, p1, p0

    .line 34
    .line 35
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iput-object p0, v1, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 40
    .line 41
    iput v7, v1, Lcom/jcraft/jsch/KeyPair;->a:I

    .line 42
    .line 43
    return-object v1
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->w:[B

    .line 2
    .line 3
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final forSSHAgent()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B

    .line 11
    .line 12
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "ecdsa-sha2-"

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->u:[B

    .line 37
    .line 38
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->v:[B

    .line 39
    .line 40
    invoke-static {v1, v3}, Lcom/jcraft/jsch/KeyPairECDSA;->A([B[B)[B

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    array-length v3, v1

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-virtual {v0, v1, v4, v3}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->w:[B

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p0, v2}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    new-array v1, p0, [B

    .line 68
    .line 69
    invoke-virtual {v0, v1, v4, p0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_0
    const-string p0, "key is encrypted."

    .line 74
    .line 75
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x0

    .line 79
    return-object p0
.end method

.method public final getKeySize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->x:I

    .line 2
    .line 3
    return p0
.end method

.method public final getKeyType()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
.end method

.method public final getPublicKeyBlob()[B
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->l:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->u:[B

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B

    .line 13
    .line 14
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ecdsa-sha2-"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B

    .line 31
    .line 32
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->u:[B

    .line 33
    .line 34
    array-length v3, v2

    .line 35
    const/4 v4, 0x1

    .line 36
    add-int/2addr v3, v4

    .line 37
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairECDSA;->v:[B

    .line 38
    .line 39
    array-length v5, v5

    .line 40
    add-int/2addr v3, v5

    .line 41
    new-array v3, v3, [B

    .line 42
    .line 43
    filled-new-array {v0, v1, v3}, [[B

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x2

    .line 48
    aget-object v3, v0, v1

    .line 49
    .line 50
    const/4 v5, 0x4

    .line 51
    const/4 v6, 0x0

    .line 52
    aput-byte v5, v3, v6

    .line 53
    .line 54
    array-length v5, v2

    .line 55
    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->v:[B

    .line 59
    .line 60
    aget-object v1, v0, v1

    .line 61
    .line 62
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->u:[B

    .line 63
    .line 64
    array-length p0, p0

    .line 65
    add-int/2addr p0, v4

    .line 66
    array-length v3, v2

    .line 67
    invoke-static {v2, v6, v1, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lcom/jcraft/jsch/Buffer;->b([[B)Lcom/jcraft/jsch/Buffer;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    iget-object p0, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 75
    .line 76
    return-object p0
.end method

.method public final getSignature([B)[B
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 2
    .line 3
    const-string v1, "ecdsa-sha2-"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B

    .line 7
    .line 8
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v3}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-class v4, Lcom/jcraft/jsch/SignatureECDSA;

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/jcraft/jsch/SignatureECDSA;

    .line 39
    .line 40
    invoke-interface {v3}, Lcom/jcraft/jsch/Signature;->init()V

    .line 41
    .line 42
    .line 43
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->w:[B

    .line 44
    .line 45
    array-length v5, v4

    .line 46
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 47
    .line 48
    .line 49
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    invoke-interface {v3, v4}, Lcom/jcraft/jsch/SignatureECDSA;->setPrvKey([B)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v3, p1}, Lcom/jcraft/jsch/Signature;->update([B)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v3}, Lcom/jcraft/jsch/Signature;->sign()[B

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B

    .line 61
    .line 62
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 71
    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    filled-new-array {p0, p1}, [[B

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Lcom/jcraft/jsch/Buffer;->b([[B)Lcom/jcraft/jsch/Buffer;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    iget-object p0, p0, Lcom/jcraft/jsch/Buffer;->b:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 87
    .line 88
    .line 89
    return-object p0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    move-object v2, v4

    .line 92
    goto :goto_1

    .line 93
    :catch_0
    move-exception p0

    .line 94
    goto :goto_0

    .line 95
    :catchall_1
    move-exception p0

    .line 96
    goto :goto_1

    .line 97
    :catch_1
    move-exception p0

    .line 98
    move-object v4, v2

    .line 99
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const/4 v1, 0x3

    .line 104
    invoke-interface {p1, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_0

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string v0, "failed to generate signature"

    .line 115
    .line 116
    invoke-interface {p1, v1, v0, p0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .line 118
    .line 119
    :cond_0
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 120
    .line 121
    .line 122
    return-object v2

    .line 123
    :goto_1
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 124
    .line 125
    .line 126
    throw p0
.end method

.method public final getSignature([BLjava/lang/String;)[B
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KeyPairECDSA;->getSignature([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final getVerifier()Lcom/jcraft/jsch/Signature;
    .locals 5

    .line 1
    const-string v0, "ecdsa-sha2-"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B

    .line 5
    .line 6
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v2, Lcom/jcraft/jsch/SignatureECDSA;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/jcraft/jsch/SignatureECDSA;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->init()V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->u:[B

    .line 42
    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->v:[B

    .line 46
    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairECDSA;->getPublicKeyBlob()[B

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    new-instance v2, Lcom/jcraft/jsch/Buffer;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairECDSA;->getPublicKeyBlob()[B

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-direct {v2, v3}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2}, Lcom/jcraft/jsch/KeyPairECDSA;->y([B)[[B

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const/4 v3, 0x0

    .line 79
    aget-object v3, v2, v3

    .line 80
    .line 81
    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->u:[B

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    aget-object v2, v2, v3

    .line 85
    .line 86
    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->v:[B

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->u:[B

    .line 92
    .line 93
    array-length v3, v2

    .line 94
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->v:[B

    .line 99
    .line 100
    array-length v4, v3

    .line 101
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-interface {v0, v2, v3}, Lcom/jcraft/jsch/SignatureECDSA;->setPubKey([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    return-object v0

    .line 109
    :goto_1
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const/4 v3, 0x3

    .line 116
    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_1

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    const-string v2, "failed to create verifier"

    .line 127
    .line 128
    invoke-interface {p0, v3, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    return-object v1
.end method

.method public final getVerifier(Ljava/lang/String;)Lcom/jcraft/jsch/Signature;
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairECDSA;->getVerifier()Lcom/jcraft/jsch/Signature;

    move-result-object p0

    return-object p0
.end method

.method public final h(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->x:I

    .line 2
    .line 3
    :try_start_0
    const-string v0, "keypairgen.ecdsa"

    .line 4
    .line 5
    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-class v1, Lcom/jcraft/jsch/KeyPairGenECDSA;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/jcraft/jsch/KeyPairGenECDSA;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/jcraft/jsch/KeyPairGenECDSA;->init(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenECDSA;->getD()[B

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->w:[B

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenECDSA;->getR()[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->u:[B

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenECDSA;->getS()[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->v:[B

    .line 50
    .line 51
    sget-object p1, Lcom/jcraft/jsch/KeyPairECDSA;->z:[Ljava/lang/String;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->w:[B

    .line 54
    .line 55
    array-length v1, v0

    .line 56
    const/16 v2, 0x40

    .line 57
    .line 58
    if-lt v1, v2, :cond_0

    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    array-length v0, v0

    .line 63
    const/16 v1, 0x30

    .line 64
    .line 65
    if-lt v0, v1, :cond_1

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    .line 70
    :goto_0
    aget-object p1, p1, v0

    .line 71
    .line 72
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 73
    .line 74
    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    return-void

    .line 81
    :catch_0
    move-exception p0

    .line 82
    invoke-static {p0}, La6;->f(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final i()[B
    .locals 0

    .line 1
    sget-object p0, Lcom/jcraft/jsch/KeyPairECDSA;->B:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final j()[B
    .locals 0

    .line 1
    sget-object p0, Lcom/jcraft/jsch/KeyPairECDSA;->C:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final k()[B
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B

    .line 2
    .line 3
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "ecdsa-sha2-"

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final l()[B
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairECDSA;->k()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->u:[B

    .line 6
    .line 7
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->v:[B

    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/jcraft/jsch/KeyPairECDSA;->A([B[B)[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->w:[B

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :try_start_0
    array-length v4, v0

    .line 22
    add-int/lit8 v4, v4, 0x4

    .line 23
    .line 24
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B

    .line 25
    .line 26
    array-length v5, v5

    .line 27
    add-int/lit8 v5, v5, 0x4

    .line 28
    .line 29
    add-int/2addr v5, v4

    .line 30
    array-length v4, v1

    .line 31
    add-int/lit8 v4, v4, 0x4

    .line 32
    .line 33
    add-int/2addr v4, v5

    .line 34
    array-length v5, v3

    .line 35
    add-int/lit8 v5, v5, 0x4

    .line 36
    .line 37
    add-int/2addr v5, v4

    .line 38
    const/4 v4, 0x0

    .line 39
    aget-byte v3, v3, v4

    .line 40
    .line 41
    and-int/lit16 v3, v3, 0x80

    .line 42
    .line 43
    ushr-int/lit8 v3, v3, 0x7

    .line 44
    .line 45
    add-int/2addr v5, v3

    .line 46
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    .line 47
    .line 48
    invoke-direct {v3, v5}, Lcom/jcraft/jsch/Buffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    .line 50
    .line 51
    :try_start_1
    array-length v2, v0

    .line 52
    invoke-virtual {v3, v0, v4, v2}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B

    .line 56
    .line 57
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 58
    .line 59
    .line 60
    array-length v0, v1

    .line 61
    invoke-virtual {v3, v1, v4, v0}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->w:[B

    .line 65
    .line 66
    invoke-virtual {v3, p0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 67
    .line 68
    .line 69
    iget-object p0, v3, Lcom/jcraft/jsch/Buffer;->b:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    .line 71
    return-object p0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    move-object v2, v3

    .line 74
    goto :goto_0

    .line 75
    :catch_1
    move-exception p0

    .line 76
    :goto_0
    if-eqz v2, :cond_1

    .line 77
    .line 78
    iget-object v0, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 79
    .line 80
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 81
    .line 82
    .line 83
    :cond_1
    throw p0

    .line 84
    :cond_2
    :goto_1
    return-object v2
.end method

.method public final m()[B
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aput-byte v0, v1, v2

    .line 6
    .line 7
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->u:[B

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    const/16 v5, 0x40

    .line 11
    .line 12
    const/16 v6, 0x30

    .line 13
    .line 14
    const/4 v7, 0x2

    .line 15
    if-lt v4, v5, :cond_0

    .line 16
    .line 17
    move v4, v7

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    array-length v4, v3

    .line 20
    if-lt v4, v6, :cond_1

    .line 21
    .line 22
    move v4, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v4, v2

    .line 25
    :goto_0
    sget-object v5, Lcom/jcraft/jsch/KeyPairECDSA;->y:[[B

    .line 26
    .line 27
    aget-object v4, v5, v4

    .line 28
    .line 29
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairECDSA;->v:[B

    .line 30
    .line 31
    invoke-static {v3, v5}, Lcom/jcraft/jsch/KeyPairECDSA;->A([B[B)[B

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    array-length v5, v3

    .line 36
    add-int/2addr v5, v0

    .line 37
    and-int/lit16 v5, v5, 0x80

    .line 38
    .line 39
    const/4 v8, 0x4

    .line 40
    const/4 v9, 0x3

    .line 41
    if-nez v5, :cond_2

    .line 42
    .line 43
    move v5, v9

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v5, v8

    .line 46
    :goto_1
    array-length v10, v3

    .line 47
    add-int/2addr v10, v5

    .line 48
    new-array v11, v10, [B

    .line 49
    .line 50
    array-length v12, v3

    .line 51
    invoke-static {v3, v2, v11, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    aput-byte v9, v11, v2

    .line 55
    .line 56
    if-ne v5, v9, :cond_3

    .line 57
    .line 58
    array-length v3, v3

    .line 59
    add-int/2addr v3, v0

    .line 60
    int-to-byte v3, v3

    .line 61
    aput-byte v3, v11, v0

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    const/16 v5, -0x7f

    .line 65
    .line 66
    aput-byte v5, v11, v0

    .line 67
    .line 68
    array-length v3, v3

    .line 69
    add-int/2addr v3, v0

    .line 70
    int-to-byte v3, v3

    .line 71
    aput-byte v3, v11, v7

    .line 72
    .line 73
    :goto_2
    invoke-static {v0}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    add-int/2addr v3, v9

    .line 78
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairECDSA;->w:[B

    .line 79
    .line 80
    array-length v5, v5

    .line 81
    invoke-static {v5}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    add-int/2addr v5, v3

    .line 86
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->w:[B

    .line 87
    .line 88
    array-length v3, v3

    .line 89
    add-int/2addr v5, v3

    .line 90
    add-int/2addr v5, v0

    .line 91
    array-length v3, v4

    .line 92
    invoke-static {v3}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    add-int/2addr v3, v5

    .line 97
    array-length v5, v4

    .line 98
    add-int/2addr v3, v5

    .line 99
    add-int/2addr v3, v0

    .line 100
    invoke-static {v10}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    add-int/2addr v5, v3

    .line 105
    add-int/2addr v5, v10

    .line 106
    invoke-static {v5}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    add-int/2addr v3, v0

    .line 111
    add-int/2addr v3, v5

    .line 112
    new-array v3, v3, [B

    .line 113
    .line 114
    aput-byte v6, v3, v2

    .line 115
    .line 116
    invoke-static {v3, v0, v5}, Lcom/jcraft/jsch/KeyPair;->x([BII)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-static {v0, v3, v1}, Lcom/jcraft/jsch/KeyPair;->w(I[B[B)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->w:[B

    .line 125
    .line 126
    add-int/lit8 v1, v0, 0x1

    .line 127
    .line 128
    aput-byte v8, v3, v0

    .line 129
    .line 130
    array-length v0, p0

    .line 131
    invoke-static {v3, v1, v0}, Lcom/jcraft/jsch/KeyPair;->x([BII)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    array-length v1, p0

    .line 136
    invoke-static {p0, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    .line 138
    .line 139
    array-length p0, p0

    .line 140
    add-int/2addr v0, p0

    .line 141
    add-int/lit8 p0, v0, 0x1

    .line 142
    .line 143
    const/16 v1, -0x60

    .line 144
    .line 145
    aput-byte v1, v3, v0

    .line 146
    .line 147
    array-length v0, v4

    .line 148
    invoke-static {v3, p0, v0}, Lcom/jcraft/jsch/KeyPair;->x([BII)I

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    array-length v0, v4

    .line 153
    invoke-static {v4, v2, v3, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    .line 155
    .line 156
    array-length v0, v4

    .line 157
    add-int/2addr p0, v0

    .line 158
    add-int/lit8 v0, p0, 0x1

    .line 159
    .line 160
    const/16 v1, -0x5f

    .line 161
    .line 162
    aput-byte v1, v3, p0

    .line 163
    .line 164
    invoke-static {v3, v0, v10}, Lcom/jcraft/jsch/KeyPair;->x([BII)I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    invoke-static {v11, v2, v3, p0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    .line 170
    .line 171
    return-object v3
.end method

.method public final s([B)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "failed to parse key"

    .line 6
    .line 7
    iget-object v3, v0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 8
    .line 9
    const-string v4, "key type "

    .line 10
    .line 11
    const-string v5, "unknown curve name "

    .line 12
    .line 13
    const-string v6, "unknown key type "

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    :try_start_0
    iget v9, v0, Lcom/jcraft/jsch/KeyPair;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    const/4 v10, 0x1

    .line 19
    if-ne v9, v10, :cond_0

    .line 20
    .line 21
    return v8

    .line 22
    :cond_0
    const/16 v12, 0x30

    .line 23
    .line 24
    const/16 v13, 0x100

    .line 25
    .line 26
    const/16 v14, 0x180

    .line 27
    .line 28
    const/16 v15, 0x209

    .line 29
    .line 30
    move/from16 v16, v10

    .line 31
    .line 32
    const/4 v10, 0x2

    .line 33
    if-eq v9, v10, :cond_19

    .line 34
    .line 35
    const/4 v11, 0x5

    .line 36
    if-ne v9, v11, :cond_1

    .line 37
    .line 38
    goto/16 :goto_9

    .line 39
    .line 40
    :cond_1
    sget-object v11, Lcom/jcraft/jsch/KeyPairECDSA;->z:[Ljava/lang/String;

    .line 41
    .line 42
    const/4 v7, 0x4

    .line 43
    if-ne v9, v7, :cond_b

    .line 44
    .line 45
    :try_start_1
    new-instance v9, Lcom/jcraft/jsch/Buffer;

    .line 46
    .line 47
    invoke-direct {v9, v1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-ne v1, v10, :cond_a

    .line 59
    .line 60
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    array-length v10, v1

    .line 65
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 66
    .line 67
    new-instance v7, Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {v7, v1, v8, v10, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 70
    .line 71
    .line 72
    sget-object v1, Lcom/jcraft/jsch/KeyPairECDSA;->A:[Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_9

    .line 83
    .line 84
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, v0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B

    .line 89
    .line 90
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_8

    .line 103
    .line 104
    invoke-virtual {v7, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_7

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    const v5, 0x2003373f

    .line 115
    .line 116
    .line 117
    if-eq v4, v5, :cond_4

    .line 118
    .line 119
    const v5, 0x20033b5b

    .line 120
    .line 121
    .line 122
    if-eq v4, v5, :cond_3

    .line 123
    .line 124
    const v5, 0x20034220

    .line 125
    .line 126
    .line 127
    if-eq v4, v5, :cond_2

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    const-string v4, "nistp521"

    .line 131
    .line 132
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_5

    .line 137
    .line 138
    iput v15, v0, Lcom/jcraft/jsch/KeyPairECDSA;->x:I

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    goto/16 :goto_b

    .line 143
    .line 144
    :cond_3
    const-string v4, "nistp384"

    .line 145
    .line 146
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_5

    .line 151
    .line 152
    iput v14, v0, Lcom/jcraft/jsch/KeyPairECDSA;->x:I

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_4
    const-string v4, "nistp256"

    .line 156
    .line 157
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_5

    .line 162
    .line 163
    iput v13, v0, Lcom/jcraft/jsch/KeyPairECDSA;->x:I

    .line 164
    .line 165
    :cond_5
    :goto_0
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    aget-byte v4, v1, v8

    .line 170
    .line 171
    const/4 v5, 0x4

    .line 172
    if-ne v4, v5, :cond_6

    .line 173
    .line 174
    invoke-static {v1}, Lcom/jcraft/jsch/KeyPairECDSA;->y([B)[[B

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    iput-object v4, v0, Lcom/jcraft/jsch/KeyPairECDSA;->w:[B

    .line 183
    .line 184
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    array-length v5, v4

    .line 189
    new-instance v6, Ljava/lang/String;

    .line 190
    .line 191
    invoke-direct {v6, v4, v8, v5, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 192
    .line 193
    .line 194
    iput-object v6, v0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 195
    .line 196
    aget-object v4, v1, v8

    .line 197
    .line 198
    iput-object v4, v0, Lcom/jcraft/jsch/KeyPairECDSA;->u:[B

    .line 199
    .line 200
    aget-object v1, v1, v16

    .line 201
    .line 202
    iput-object v1, v0, Lcom/jcraft/jsch/KeyPairECDSA;->v:[B

    .line 203
    .line 204
    return v16

    .line 205
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    const-string v1, "only uncompressed ECPoint supported"

    .line 208
    .line 209
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v0

    .line 213
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 214
    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v4, " does not match curve name "

    .line 224
    .line 225
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v0

    .line 239
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 240
    .line 241
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v0

    .line 249
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 250
    .line 251
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v0

    .line 259
    :cond_a
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 260
    .line 261
    const-string v1, "check failed"

    .line 262
    .line 263
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw v0

    .line 267
    :cond_b
    aget-byte v4, v1, v8

    .line 268
    .line 269
    if-eq v4, v12, :cond_c

    .line 270
    .line 271
    return v8

    .line 272
    :cond_c
    aget-byte v4, v1, v16

    .line 273
    .line 274
    and-int/lit16 v5, v4, 0x80

    .line 275
    .line 276
    if-eqz v5, :cond_d

    .line 277
    .line 278
    and-int/lit8 v4, v4, 0x7f

    .line 279
    .line 280
    move v5, v10

    .line 281
    :goto_1
    add-int/lit8 v6, v4, -0x1

    .line 282
    .line 283
    if-lez v4, :cond_e

    .line 284
    .line 285
    add-int/lit8 v4, v5, 0x1

    .line 286
    .line 287
    aget-byte v5, v1, v5

    .line 288
    .line 289
    move v5, v4

    .line 290
    move v4, v6

    .line 291
    goto :goto_1

    .line 292
    :cond_d
    move v5, v10

    .line 293
    :cond_e
    aget-byte v4, v1, v5

    .line 294
    .line 295
    if-eq v4, v10, :cond_f

    .line 296
    .line 297
    return v8

    .line 298
    :cond_f
    add-int/lit8 v4, v5, 0x1

    .line 299
    .line 300
    add-int/2addr v5, v10

    .line 301
    aget-byte v4, v1, v4

    .line 302
    .line 303
    and-int/lit16 v6, v4, 0xff

    .line 304
    .line 305
    and-int/lit16 v7, v4, 0x80

    .line 306
    .line 307
    if-eqz v7, :cond_10

    .line 308
    .line 309
    and-int/lit8 v4, v4, 0x7f

    .line 310
    .line 311
    move v6, v8

    .line 312
    :goto_2
    add-int/lit8 v7, v4, -0x1

    .line 313
    .line 314
    if-lez v4, :cond_10

    .line 315
    .line 316
    shl-int/lit8 v4, v6, 0x8

    .line 317
    .line 318
    add-int/lit8 v6, v5, 0x1

    .line 319
    .line 320
    aget-byte v5, v1, v5

    .line 321
    .line 322
    and-int/lit16 v5, v5, 0xff

    .line 323
    .line 324
    add-int/2addr v4, v5

    .line 325
    move v5, v6

    .line 326
    move v6, v4

    .line 327
    move v4, v7

    .line 328
    goto :goto_2

    .line 329
    :cond_10
    add-int/2addr v5, v6

    .line 330
    add-int/lit8 v4, v5, 0x1

    .line 331
    .line 332
    add-int/2addr v5, v10

    .line 333
    aget-byte v4, v1, v4

    .line 334
    .line 335
    and-int/lit16 v6, v4, 0xff

    .line 336
    .line 337
    and-int/lit16 v7, v4, 0x80

    .line 338
    .line 339
    if-eqz v7, :cond_11

    .line 340
    .line 341
    and-int/lit8 v4, v4, 0x7f

    .line 342
    .line 343
    move v6, v8

    .line 344
    :goto_3
    add-int/lit8 v7, v4, -0x1

    .line 345
    .line 346
    if-lez v4, :cond_11

    .line 347
    .line 348
    shl-int/lit8 v4, v6, 0x8

    .line 349
    .line 350
    add-int/lit8 v6, v5, 0x1

    .line 351
    .line 352
    aget-byte v5, v1, v5

    .line 353
    .line 354
    and-int/lit16 v5, v5, 0xff

    .line 355
    .line 356
    add-int/2addr v4, v5

    .line 357
    move v5, v6

    .line 358
    move v6, v4

    .line 359
    move v4, v7

    .line 360
    goto :goto_3

    .line 361
    :cond_11
    new-array v4, v6, [B

    .line 362
    .line 363
    iput-object v4, v0, Lcom/jcraft/jsch/KeyPairECDSA;->w:[B

    .line 364
    .line 365
    invoke-static {v1, v5, v4, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    .line 367
    .line 368
    add-int/2addr v5, v6

    .line 369
    add-int/lit8 v4, v5, 0x1

    .line 370
    .line 371
    add-int/2addr v5, v10

    .line 372
    aget-byte v4, v1, v4

    .line 373
    .line 374
    and-int/lit16 v6, v4, 0xff

    .line 375
    .line 376
    and-int/lit16 v7, v4, 0x80

    .line 377
    .line 378
    if-eqz v7, :cond_12

    .line 379
    .line 380
    and-int/lit8 v4, v4, 0x7f

    .line 381
    .line 382
    move v6, v8

    .line 383
    :goto_4
    add-int/lit8 v7, v4, -0x1

    .line 384
    .line 385
    if-lez v4, :cond_12

    .line 386
    .line 387
    shl-int/lit8 v4, v6, 0x8

    .line 388
    .line 389
    add-int/lit8 v6, v5, 0x1

    .line 390
    .line 391
    aget-byte v5, v1, v5

    .line 392
    .line 393
    and-int/lit16 v5, v5, 0xff

    .line 394
    .line 395
    add-int/2addr v4, v5

    .line 396
    move v5, v6

    .line 397
    move v6, v4

    .line 398
    move v4, v7

    .line 399
    goto :goto_4

    .line 400
    :cond_12
    new-array v4, v6, [B

    .line 401
    .line 402
    invoke-static {v1, v5, v4, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    .line 404
    .line 405
    add-int/2addr v5, v6

    .line 406
    move v6, v8

    .line 407
    :goto_5
    sget-object v7, Lcom/jcraft/jsch/KeyPairECDSA;->y:[[B

    .line 408
    .line 409
    const/4 v9, 0x3

    .line 410
    if-ge v6, v9, :cond_14

    .line 411
    .line 412
    aget-object v7, v7, v6

    .line 413
    .line 414
    invoke-static {v7, v4}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    .line 415
    .line 416
    .line 417
    move-result v7

    .line 418
    if-eqz v7, :cond_13

    .line 419
    .line 420
    aget-object v4, v11, v6

    .line 421
    .line 422
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 423
    .line 424
    invoke-static {v4, v6}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    iput-object v4, v0, Lcom/jcraft/jsch/KeyPairECDSA;->t:[B

    .line 429
    .line 430
    goto :goto_6

    .line 431
    :cond_13
    add-int/lit8 v6, v6, 0x1

    .line 432
    .line 433
    goto :goto_5

    .line 434
    :cond_14
    :goto_6
    add-int/lit8 v4, v5, 0x1

    .line 435
    .line 436
    add-int/2addr v5, v10

    .line 437
    aget-byte v4, v1, v4

    .line 438
    .line 439
    and-int/lit16 v6, v4, 0xff

    .line 440
    .line 441
    and-int/lit16 v7, v4, 0x80

    .line 442
    .line 443
    if-eqz v7, :cond_15

    .line 444
    .line 445
    and-int/lit8 v4, v4, 0x7f

    .line 446
    .line 447
    move v6, v8

    .line 448
    :goto_7
    add-int/lit8 v7, v4, -0x1

    .line 449
    .line 450
    if-lez v4, :cond_15

    .line 451
    .line 452
    shl-int/lit8 v4, v6, 0x8

    .line 453
    .line 454
    add-int/lit8 v6, v5, 0x1

    .line 455
    .line 456
    aget-byte v5, v1, v5

    .line 457
    .line 458
    and-int/lit16 v5, v5, 0xff

    .line 459
    .line 460
    add-int/2addr v4, v5

    .line 461
    move v5, v6

    .line 462
    move v6, v4

    .line 463
    move v4, v7

    .line 464
    goto :goto_7

    .line 465
    :cond_15
    new-array v4, v6, [B

    .line 466
    .line 467
    invoke-static {v1, v5, v4, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    .line 469
    .line 470
    invoke-static {v4}, Lcom/jcraft/jsch/KeyPairECDSA;->y([B)[[B

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    aget-object v4, v1, v8

    .line 475
    .line 476
    iput-object v4, v0, Lcom/jcraft/jsch/KeyPairECDSA;->u:[B

    .line 477
    .line 478
    aget-object v1, v1, v16

    .line 479
    .line 480
    iput-object v1, v0, Lcom/jcraft/jsch/KeyPairECDSA;->v:[B

    .line 481
    .line 482
    iget-object v1, v0, Lcom/jcraft/jsch/KeyPairECDSA;->w:[B

    .line 483
    .line 484
    if-eqz v1, :cond_18

    .line 485
    .line 486
    array-length v4, v1

    .line 487
    const/16 v5, 0x40

    .line 488
    .line 489
    if-lt v4, v5, :cond_16

    .line 490
    .line 491
    move v13, v15

    .line 492
    goto :goto_8

    .line 493
    :cond_16
    array-length v1, v1

    .line 494
    if-lt v1, v12, :cond_17

    .line 495
    .line 496
    move v13, v14

    .line 497
    :cond_17
    :goto_8
    iput v13, v0, Lcom/jcraft/jsch/KeyPairECDSA;->x:I

    .line 498
    .line 499
    :cond_18
    return v16

    .line 500
    :cond_19
    :goto_9
    new-instance v4, Lcom/jcraft/jsch/Buffer;

    .line 501
    .line 502
    invoke-direct {v4, v1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 503
    .line 504
    .line 505
    array-length v1, v1

    .line 506
    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/Buffer;->h(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 507
    .line 508
    .line 509
    :try_start_2
    const-string v1, ""

    .line 510
    .line 511
    move/from16 v5, v16

    .line 512
    .line 513
    invoke-virtual {v4, v5, v1}, Lcom/jcraft/jsch/Buffer;->d(ILjava/lang/String;)[[B

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    aget-object v1, v1, v8

    .line 518
    .line 519
    iput-object v1, v0, Lcom/jcraft/jsch/KeyPairECDSA;->w:[B

    .line 520
    .line 521
    array-length v4, v1

    .line 522
    const/16 v5, 0x40

    .line 523
    .line 524
    if-lt v4, v5, :cond_1a

    .line 525
    .line 526
    move v13, v15

    .line 527
    goto :goto_a

    .line 528
    :cond_1a
    array-length v1, v1

    .line 529
    if-lt v1, v12, :cond_1b

    .line 530
    .line 531
    move v13, v14

    .line 532
    :cond_1b
    :goto_a
    iput v13, v0, Lcom/jcraft/jsch/KeyPairECDSA;->x:I
    :try_end_2
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 533
    .line 534
    const/16 v16, 0x1

    .line 535
    .line 536
    return v16

    .line 537
    :catch_1
    move-exception v0

    .line 538
    :try_start_3
    invoke-virtual {v3}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    const/4 v9, 0x3

    .line 543
    invoke-interface {v1, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    if-eqz v1, :cond_1c

    .line 548
    .line 549
    invoke-virtual {v3}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    invoke-interface {v1, v9, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 554
    .line 555
    .line 556
    :cond_1c
    return v8

    .line 557
    :goto_b
    invoke-virtual {v3}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    const/4 v9, 0x3

    .line 562
    invoke-interface {v1, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    if-eqz v1, :cond_1d

    .line 567
    .line 568
    invoke-virtual {v3}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    invoke-interface {v1, v9, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 573
    .line 574
    .line 575
    :cond_1d
    return v8
.end method
