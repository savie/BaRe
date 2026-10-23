.class final Lcom/nimbusds/jose/util/Base64Codec;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field static final synthetic $assertionsDisabled:Z


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

.method private static checkedCast(J)I
    .locals 3

    .line 1
    long-to-int v0, p0

    .line 2
    int-to-long v1, v0

    .line 3
    cmp-long v1, v1, p0

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p0, " cannot be cast to int without changing its value."

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public static computeEncodedLength(IZ)I
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
    if-eqz p1, :cond_2

    .line 6
    .line 7
    div-int/lit8 p1, p0, 0x3

    .line 8
    .line 9
    shl-int/lit8 p1, p1, 0x2

    .line 10
    .line 11
    rem-int/lit8 p0, p0, 0x3

    .line 12
    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    return p1

    .line 16
    :cond_1
    add-int/2addr p1, p0

    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    return p1

    .line 20
    :cond_2
    add-int/lit8 p0, p0, -0x1

    .line 21
    .line 22
    div-int/lit8 p0, p0, 0x3

    .line 23
    .line 24
    add-int/lit8 p0, p0, 0x1

    .line 25
    .line 26
    shl-int/lit8 p0, p0, 0x2

    .line 27
    .line 28
    return p0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_7

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    sget-object v1, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length v1, p0

    .line 18
    int-to-long v2, v1

    .line 19
    const-wide/16 v4, 0x6

    .line 20
    .line 21
    mul-long/2addr v2, v4

    .line 22
    const/4 v4, 0x3

    .line 23
    shr-long/2addr v2, v4

    .line 24
    invoke-static {v2, v3}, Lcom/nimbusds/jose/util/Base64Codec;->checkedCast(J)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    new-array v2, v2, [B

    .line 29
    .line 30
    move v3, v0

    .line 31
    move v5, v3

    .line 32
    :cond_1
    :goto_0
    array-length v6, p0

    .line 33
    if-ge v3, v6, :cond_6

    .line 34
    .line 35
    move v6, v0

    .line 36
    move v7, v6

    .line 37
    :goto_1
    const/4 v8, 0x4

    .line 38
    if-ge v6, v8, :cond_3

    .line 39
    .line 40
    if-ge v3, v1, :cond_3

    .line 41
    .line 42
    add-int/lit8 v8, v3, 0x1

    .line 43
    .line 44
    aget-byte v3, p0, v3

    .line 45
    .line 46
    invoke-static {v3}, Lcom/nimbusds/jose/util/Base64Codec;->decodeDigit(B)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-ltz v3, :cond_2

    .line 51
    .line 52
    mul-int/lit8 v9, v6, 0x6

    .line 53
    .line 54
    rsub-int/lit8 v9, v9, 0x12

    .line 55
    .line 56
    shl-int/2addr v3, v9

    .line 57
    or-int/2addr v7, v3

    .line 58
    add-int/lit8 v6, v6, 0x1

    .line 59
    .line 60
    :cond_2
    move v3, v8

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/4 v9, 0x2

    .line 63
    if-lt v6, v9, :cond_1

    .line 64
    .line 65
    add-int/lit8 v9, v5, 0x1

    .line 66
    .line 67
    shr-int/lit8 v10, v7, 0x10

    .line 68
    .line 69
    int-to-byte v10, v10

    .line 70
    aput-byte v10, v2, v5

    .line 71
    .line 72
    if-lt v6, v4, :cond_5

    .line 73
    .line 74
    add-int/lit8 v10, v5, 0x2

    .line 75
    .line 76
    shr-int/lit8 v11, v7, 0x8

    .line 77
    .line 78
    int-to-byte v11, v11

    .line 79
    aput-byte v11, v2, v9

    .line 80
    .line 81
    if-lt v6, v8, :cond_4

    .line 82
    .line 83
    add-int/lit8 v5, v5, 0x3

    .line 84
    .line 85
    int-to-byte v6, v7

    .line 86
    aput-byte v6, v2, v10

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    move v5, v10

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    move v5, v9

    .line 92
    goto :goto_0

    .line 93
    :cond_6
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :cond_7
    :goto_2
    new-array p0, v0, [B

    .line 99
    .line 100
    return-object p0
.end method

.method public static decodeDigit(B)I
    .locals 9

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x5b

    .line 8
    .line 9
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    and-int/2addr v0, v1

    .line 14
    const/16 v1, 0x60

    .line 15
    .line 16
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v2, 0x7b

    .line 21
    .line 22
    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    and-int/2addr v1, v2

    .line 27
    const/16 v2, 0x2f

    .line 28
    .line 29
    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/16 v4, 0x3a

    .line 34
    .line 35
    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    and-int/2addr v3, v4

    .line 40
    const/16 v4, 0x2d

    .line 41
    .line 42
    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/16 v5, 0x2b

    .line 47
    .line 48
    invoke-static {p0, v5}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    or-int/2addr v4, v5

    .line 53
    const/16 v5, 0x5f

    .line 54
    .line 55
    invoke-static {p0, v5}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    or-int/2addr v2, v5

    .line 64
    or-int v5, v0, v1

    .line 65
    .line 66
    or-int/2addr v5, v3

    .line 67
    or-int/2addr v5, v4

    .line 68
    or-int/2addr v5, v2

    .line 69
    add-int/lit8 v6, p0, -0x41

    .line 70
    .line 71
    add-int/lit8 v7, p0, -0x47

    .line 72
    .line 73
    add-int/lit8 p0, p0, 0x4

    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    invoke-static {v0, v6, v8}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-static {v1, v7, v8}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    or-int/2addr v0, v1

    .line 85
    invoke-static {v3, p0, v8}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    or-int/2addr p0, v0

    .line 90
    const/16 v0, 0x3e

    .line 91
    .line 92
    invoke-static {v4, v0, v8}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    or-int/2addr p0, v0

    .line 97
    const/16 v0, 0x3f

    .line 98
    .line 99
    invoke-static {v2, v0, v8}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    or-int/2addr p0, v0

    .line 104
    const/4 v0, -0x1

    .line 105
    invoke-static {v5, v8, v0}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    or-int/2addr p0, v0

    .line 110
    return p0
.end method

.method public static encodeDigitBase64(I)B
    .locals 8

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x19

    .line 8
    .line 9
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x34

    .line 14
    .line 15
    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    and-int/2addr v1, v2

    .line 20
    const/16 v2, 0x33

    .line 21
    .line 22
    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x3e

    .line 27
    .line 28
    invoke-static {p0, v3}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    and-int/2addr v2, v4

    .line 33
    invoke-static {p0, v3}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/16 v4, 0x3f

    .line 38
    .line 39
    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    add-int/lit8 v5, p0, 0x41

    .line 44
    .line 45
    add-int/lit8 v6, p0, 0x47

    .line 46
    .line 47
    add-int/lit8 p0, p0, -0x4

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    invoke-static {v0, v5, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {v1, v6, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    or-int/2addr v0, v1

    .line 59
    invoke-static {v2, p0, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    or-int/2addr p0, v0

    .line 64
    const/16 v0, 0x2b

    .line 65
    .line 66
    invoke-static {v3, v0, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    or-int/2addr p0, v0

    .line 71
    const/16 v0, 0x2f

    .line 72
    .line 73
    invoke-static {v4, v0, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    or-int/2addr p0, v0

    .line 78
    int-to-byte p0, p0

    .line 79
    return p0
.end method

.method public static encodeDigitBase64URL(I)B
    .locals 8

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x19

    .line 8
    .line 9
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x34

    .line 14
    .line 15
    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    and-int/2addr v1, v2

    .line 20
    const/16 v2, 0x33

    .line 21
    .line 22
    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x3e

    .line 27
    .line 28
    invoke-static {p0, v3}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    and-int/2addr v2, v4

    .line 33
    invoke-static {p0, v3}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/16 v4, 0x3f

    .line 38
    .line 39
    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    add-int/lit8 v5, p0, 0x41

    .line 44
    .line 45
    add-int/lit8 v6, p0, 0x47

    .line 46
    .line 47
    add-int/lit8 p0, p0, -0x4

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    invoke-static {v0, v5, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {v1, v6, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    or-int/2addr v0, v1

    .line 59
    invoke-static {v2, p0, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    or-int/2addr p0, v0

    .line 64
    const/16 v0, 0x2d

    .line 65
    .line 66
    invoke-static {v3, v0, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    or-int/2addr p0, v0

    .line 71
    const/16 v0, 0x5f

    .line 72
    .line 73
    invoke-static {v4, v0, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    or-int/2addr p0, v0

    .line 78
    int-to-byte p0, p0

    .line 79
    return p0
.end method

.method public static encodeToString([BZ)Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v1, v0

    .line 7
    :goto_0
    if-nez v1, :cond_1

    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    div-int/lit8 v2, v1, 0x3

    .line 13
    .line 14
    mul-int/lit8 v2, v2, 0x3

    .line 15
    .line 16
    invoke-static {v1, p1}, Lcom/nimbusds/jose/util/Base64Codec;->computeEncodedLength(IZ)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    new-array v4, v3, [B

    .line 21
    .line 22
    move v5, v0

    .line 23
    move v6, v5

    .line 24
    :goto_1
    if-ge v5, v2, :cond_3

    .line 25
    .line 26
    add-int/lit8 v7, v5, 0x1

    .line 27
    .line 28
    aget-byte v8, p0, v5

    .line 29
    .line 30
    and-int/lit16 v8, v8, 0xff

    .line 31
    .line 32
    shl-int/lit8 v8, v8, 0x10

    .line 33
    .line 34
    add-int/lit8 v9, v5, 0x2

    .line 35
    .line 36
    aget-byte v7, p0, v7

    .line 37
    .line 38
    and-int/lit16 v7, v7, 0xff

    .line 39
    .line 40
    shl-int/lit8 v7, v7, 0x8

    .line 41
    .line 42
    or-int/2addr v7, v8

    .line 43
    add-int/lit8 v5, v5, 0x3

    .line 44
    .line 45
    aget-byte v8, p0, v9

    .line 46
    .line 47
    and-int/lit16 v8, v8, 0xff

    .line 48
    .line 49
    or-int/2addr v7, v8

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    add-int/lit8 v8, v6, 0x1

    .line 53
    .line 54
    ushr-int/lit8 v9, v7, 0x12

    .line 55
    .line 56
    and-int/lit8 v9, v9, 0x3f

    .line 57
    .line 58
    invoke-static {v9}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    aput-byte v9, v4, v6

    .line 63
    .line 64
    add-int/lit8 v9, v6, 0x2

    .line 65
    .line 66
    ushr-int/lit8 v10, v7, 0xc

    .line 67
    .line 68
    and-int/lit8 v10, v10, 0x3f

    .line 69
    .line 70
    invoke-static {v10}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    aput-byte v10, v4, v8

    .line 75
    .line 76
    add-int/lit8 v8, v6, 0x3

    .line 77
    .line 78
    ushr-int/lit8 v10, v7, 0x6

    .line 79
    .line 80
    and-int/lit8 v10, v10, 0x3f

    .line 81
    .line 82
    invoke-static {v10}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    aput-byte v10, v4, v9

    .line 87
    .line 88
    add-int/lit8 v6, v6, 0x4

    .line 89
    .line 90
    and-int/lit8 v7, v7, 0x3f

    .line 91
    .line 92
    invoke-static {v7}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    aput-byte v7, v4, v8

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    add-int/lit8 v8, v6, 0x1

    .line 100
    .line 101
    ushr-int/lit8 v9, v7, 0x12

    .line 102
    .line 103
    and-int/lit8 v9, v9, 0x3f

    .line 104
    .line 105
    invoke-static {v9}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    aput-byte v9, v4, v6

    .line 110
    .line 111
    add-int/lit8 v9, v6, 0x2

    .line 112
    .line 113
    ushr-int/lit8 v10, v7, 0xc

    .line 114
    .line 115
    and-int/lit8 v10, v10, 0x3f

    .line 116
    .line 117
    invoke-static {v10}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    aput-byte v10, v4, v8

    .line 122
    .line 123
    add-int/lit8 v8, v6, 0x3

    .line 124
    .line 125
    ushr-int/lit8 v10, v7, 0x6

    .line 126
    .line 127
    and-int/lit8 v10, v10, 0x3f

    .line 128
    .line 129
    invoke-static {v10}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    aput-byte v10, v4, v9

    .line 134
    .line 135
    add-int/lit8 v6, v6, 0x4

    .line 136
    .line 137
    and-int/lit8 v7, v7, 0x3f

    .line 138
    .line 139
    invoke-static {v7}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    aput-byte v7, v4, v8

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    sub-int v5, v1, v2

    .line 147
    .line 148
    if-lez v5, :cond_8

    .line 149
    .line 150
    aget-byte v2, p0, v2

    .line 151
    .line 152
    and-int/lit16 v2, v2, 0xff

    .line 153
    .line 154
    shl-int/lit8 v2, v2, 0xa

    .line 155
    .line 156
    const/4 v6, 0x2

    .line 157
    if-ne v5, v6, :cond_4

    .line 158
    .line 159
    add-int/lit8 v1, v1, -0x1

    .line 160
    .line 161
    aget-byte p0, p0, v1

    .line 162
    .line 163
    and-int/lit16 p0, p0, 0xff

    .line 164
    .line 165
    shl-int/lit8 v0, p0, 0x2

    .line 166
    .line 167
    :cond_4
    or-int p0, v2, v0

    .line 168
    .line 169
    if-eqz p1, :cond_6

    .line 170
    .line 171
    if-ne v5, v6, :cond_5

    .line 172
    .line 173
    add-int/lit8 p1, v3, -0x3

    .line 174
    .line 175
    shr-int/lit8 v0, p0, 0xc

    .line 176
    .line 177
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    aput-byte v0, v4, p1

    .line 182
    .line 183
    add-int/lit8 p1, v3, -0x2

    .line 184
    .line 185
    ushr-int/lit8 v0, p0, 0x6

    .line 186
    .line 187
    and-int/lit8 v0, v0, 0x3f

    .line 188
    .line 189
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    aput-byte v0, v4, p1

    .line 194
    .line 195
    add-int/lit8 v3, v3, -0x1

    .line 196
    .line 197
    and-int/lit8 p0, p0, 0x3f

    .line 198
    .line 199
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    .line 200
    .line 201
    .line 202
    move-result p0

    .line 203
    aput-byte p0, v4, v3

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_5
    add-int/lit8 p1, v3, -0x2

    .line 207
    .line 208
    shr-int/lit8 v0, p0, 0xc

    .line 209
    .line 210
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    aput-byte v0, v4, p1

    .line 215
    .line 216
    add-int/lit8 v3, v3, -0x1

    .line 217
    .line 218
    ushr-int/lit8 p0, p0, 0x6

    .line 219
    .line 220
    and-int/lit8 p0, p0, 0x3f

    .line 221
    .line 222
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    aput-byte p0, v4, v3

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_6
    add-int/lit8 p1, v3, -0x4

    .line 230
    .line 231
    shr-int/lit8 v0, p0, 0xc

    .line 232
    .line 233
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    aput-byte v0, v4, p1

    .line 238
    .line 239
    add-int/lit8 p1, v3, -0x3

    .line 240
    .line 241
    ushr-int/lit8 v0, p0, 0x6

    .line 242
    .line 243
    and-int/lit8 v0, v0, 0x3f

    .line 244
    .line 245
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    aput-byte v0, v4, p1

    .line 250
    .line 251
    add-int/lit8 p1, v3, -0x2

    .line 252
    .line 253
    const/16 v0, 0x3d

    .line 254
    .line 255
    if-ne v5, v6, :cond_7

    .line 256
    .line 257
    and-int/lit8 p0, p0, 0x3f

    .line 258
    .line 259
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    goto :goto_2

    .line 264
    :cond_7
    move p0, v0

    .line 265
    :goto_2
    aput-byte p0, v4, p1

    .line 266
    .line 267
    add-int/lit8 v3, v3, -0x1

    .line 268
    .line 269
    aput-byte v0, v4, v3

    .line 270
    .line 271
    :cond_8
    :goto_3
    new-instance p0, Ljava/lang/String;

    .line 272
    .line 273
    sget-object p1, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    .line 274
    .line 275
    invoke-direct {p0, v4, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 276
    .line 277
    .line 278
    return-object p0
.end method

.method public static tpEq(II)I
    .locals 0

    .line 1
    xor-int/2addr p0, p1

    .line 2
    add-int/lit8 p1, p0, -0x1

    .line 3
    .line 4
    not-int p0, p0

    .line 5
    and-int/2addr p0, p1

    .line 6
    ushr-int/lit8 p0, p0, 0x3f

    .line 7
    .line 8
    return p0
.end method

.method public static tpGT(II)I
    .locals 2

    .line 1
    int-to-long v0, p1

    .line 2
    int-to-long p0, p0

    .line 3
    sub-long/2addr v0, p0

    .line 4
    const/16 p0, 0x3f

    .line 5
    .line 6
    ushr-long p0, v0, p0

    .line 7
    .line 8
    long-to-int p0, p0

    .line 9
    return p0
.end method

.method public static tpLT(II)I
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    int-to-long p0, p1

    .line 3
    sub-long/2addr v0, p0

    .line 4
    const/16 p0, 0x3f

    .line 5
    .line 6
    ushr-long p0, v0, p0

    .line 7
    .line 8
    long-to-int p0, p0

    .line 9
    return p0
.end method

.method public static tpSelect(III)I
    .locals 0

    .line 1
    add-int/lit8 p0, p0, -0x1

    .line 2
    .line 3
    xor-int/2addr p2, p1

    .line 4
    and-int/2addr p0, p2

    .line 5
    xor-int/2addr p0, p1

    .line 6
    return p0
.end method
