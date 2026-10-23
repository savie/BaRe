.class public Lcom/jcraft/jsch/asn1/ASN1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[B

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/asn1/ASN1Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/jcraft/jsch/asn1/ASN1;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/asn1/ASN1Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/jcraft/jsch/asn1/ASN1;->a:[B

    .line 5
    .line 6
    iput p2, p0, Lcom/jcraft/jsch/asn1/ASN1;->b:I

    .line 7
    .line 8
    iput p3, p0, Lcom/jcraft/jsch/asn1/ASN1;->c:I

    .line 9
    .line 10
    add-int/2addr p2, p3

    .line 11
    array-length p0, p1

    .line 12
    if-gt p2, p0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static parseASN1IntegerAsInt([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/16 v1, 0x1f

    .line 11
    .line 12
    if-gt p0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 20
    .line 21
    const-string v0, "BigInteger out of int range"

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method


# virtual methods
.method public final a([I)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    add-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/jcraft/jsch/asn1/ASN1;->a:[B

    .line 7
    .line 8
    aget-byte v1, p0, v1

    .line 9
    .line 10
    and-int/lit16 v3, v1, 0xff

    .line 11
    .line 12
    and-int/lit16 v4, v1, 0x80

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    and-int/lit8 v1, v1, 0x7f

    .line 17
    .line 18
    move v3, v0

    .line 19
    :goto_0
    add-int/lit8 v4, v1, -0x1

    .line 20
    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    shl-int/lit8 v1, v3, 0x8

    .line 24
    .line 25
    add-int/lit8 v3, v2, 0x1

    .line 26
    .line 27
    aget-byte v2, p0, v2

    .line 28
    .line 29
    and-int/lit16 v2, v2, 0xff

    .line 30
    .line 31
    add-int/2addr v1, v2

    .line 32
    move v2, v3

    .line 33
    move v3, v1

    .line 34
    move v1, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    aput v2, p1, v0

    .line 37
    .line 38
    return v3
.end method

.method public final getContent()[B
    .locals 4

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/asn1/ASN1;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    filled-new-array {v0}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/asn1/ASN1;->a([I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    aget v0, v0, v2

    .line 15
    .line 16
    new-array v3, v1, [B

    .line 17
    .line 18
    iget-object p0, p0, Lcom/jcraft/jsch/asn1/ASN1;->a:[B

    .line 19
    .line 20
    invoke-static {p0, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    return-object v3
.end method

.method public final getContents()[Lcom/jcraft/jsch/asn1/ASN1;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/asn1/ASN1Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/asn1/ASN1;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jsch/asn1/ASN1;->b:I

    .line 4
    .line 5
    aget-byte v2, v0, v1

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    new-array v4, v3, [I

    .line 9
    .line 10
    add-int/2addr v1, v3

    .line 11
    const/4 v5, 0x0

    .line 12
    aput v1, v4, v5

    .line 13
    .line 14
    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/asn1/ASN1;->a([I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v6, 0x5

    .line 19
    if-ne v2, v6, :cond_0

    .line 20
    .line 21
    new-array p0, v5, [Lcom/jcraft/jsch/asn1/ASN1;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    aget v2, v4, v5

    .line 25
    .line 26
    new-instance v6, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    :goto_0
    if-lez v1, :cond_1

    .line 32
    .line 33
    add-int/lit8 v7, v2, 0x1

    .line 34
    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    aput v7, v4, v5

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/asn1/ASN1;->a([I)I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    aget v9, v4, v5

    .line 44
    .line 45
    sub-int v7, v9, v7

    .line 46
    .line 47
    sub-int/2addr v1, v7

    .line 48
    new-instance v10, Lcom/jcraft/jsch/asn1/ASN1;

    .line 49
    .line 50
    add-int/2addr v7, v3

    .line 51
    add-int/2addr v7, v8

    .line 52
    invoke-direct {v10, v0, v2, v7}, Lcom/jcraft/jsch/asn1/ASN1;-><init>([BII)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int v2, v9, v8

    .line 59
    .line 60
    sub-int/2addr v1, v8

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    new-array p0, p0, [Lcom/jcraft/jsch/asn1/ASN1;

    .line 67
    .line 68
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    return-object p0
.end method

.method public final getRaw()[B
    .locals 2

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/asn1/ASN1;->c:I

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jsch/asn1/ASN1;->b:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget-object p0, p0, Lcom/jcraft/jsch/asn1/ASN1;->a:[B

    .line 7
    .line 8
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/asn1/ASN1;->a:[B

    .line 2
    .line 3
    iget p0, p0, Lcom/jcraft/jsch/asn1/ASN1;->b:I

    .line 4
    .line 5
    aget-byte p0, v0, p0

    .line 6
    .line 7
    and-int/lit16 p0, p0, 0xff

    .line 8
    .line 9
    return p0
.end method

.method public final isBITSTRING()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x3

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final isCONTEXTCONSTRUCTED(I)Z
    .locals 1

    .line 1
    and-int/lit16 v0, p1, -0x100

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    and-int/lit8 v0, p1, 0x40

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getType()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    or-int/lit16 p1, p1, 0xa0

    .line 14
    .line 15
    and-int/lit16 p1, p1, 0xff

    .line 16
    .line 17
    if-ne p0, p1, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_1
    invoke-static {}, Lc6;->b()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final isCONTEXTPRIMITIVE(I)Z
    .locals 1

    .line 1
    and-int/lit16 v0, p1, -0x100

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    and-int/lit8 v0, p1, 0x60

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getType()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    or-int/lit16 p1, p1, 0x80

    .line 14
    .line 15
    and-int/lit16 p1, p1, 0xff

    .line 16
    .line 17
    if-ne p0, p1, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_1
    invoke-static {}, Lc6;->b()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final isINTEGER()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final isNULL()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x5

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final isOBJECT()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x6

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final isOCTETSTRING()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x4

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final isSEQUENCE()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x30

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method
