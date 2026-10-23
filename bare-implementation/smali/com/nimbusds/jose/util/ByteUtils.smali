.class public Lcom/nimbusds/jose/util/ByteUtils;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bitLength(I)I
    .locals 0

    .line 11
    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static bitLength([B)I
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    array-length p0, p0

    .line 6
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->bitLength(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static byteLength(I)I
    .locals 0

    .line 1
    div-int/lit8 p0, p0, 0x8

    .line 2
    .line 3
    return p0
.end method

.method public static varargs concat([[B)[B
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 16
    .line 17
    .line 18
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object p0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static isZeroFilled([B)Z
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-byte v3, p0, v2

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public static safeBitLength(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/util/IntegerOverflowException;
        }
    .end annotation

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide/16 v2, 0x8

    .line 3
    .line 4
    mul-long/2addr v0, v2

    .line 5
    long-to-int p0, v0

    .line 6
    int-to-long v2, p0

    .line 7
    cmp-long v0, v2, v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p0, Lcom/nimbusds/jose/util/IntegerOverflowException;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/nimbusds/jose/util/IntegerOverflowException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public static safeBitLength([B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/util/IntegerOverflowException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 18
    :cond_0
    array-length p0, p0

    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength(I)I

    move-result p0

    return p0
.end method

.method public static subArray([BII)[B
    .locals 2

    .line 1
    new-array v0, p2, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
