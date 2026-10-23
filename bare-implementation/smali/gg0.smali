.class public final Lgg0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;
.implements Ljava/security/Key;


# instance fields
.field public transient a:Lp45;

.field public transient b:Ljava/lang/String;

.field public transient c:Lx1;

.field public transient d:[B


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lgg0;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lgg0;

    .line 10
    .line 11
    iget-object p0, p0, Lgg0;->a:Lp45;

    .line 12
    .line 13
    invoke-virtual {p0}, Lp45;->getEncoded()[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object p1, p1, Lgg0;->a:Lp45;

    .line 18
    .line 19
    invoke-virtual {p1}, Lp45;->getEncoded()[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lgg0;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEncoded()[B
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lgg0;->d:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lgg0;->a:Lp45;

    .line 7
    .line 8
    iget-object p0, p0, Lgg0;->c:Lx1;

    .line 9
    .line 10
    invoke-static {v0, p0}, Lcy0;->l(Ln60;Lx1;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ly0;->getEncoded()[B

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "PKCS#8"

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lgg0;->a:Lp45;

    .line 2
    .line 3
    invoke-virtual {p0}, Lp45;->getEncoded()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lms8;->x([B)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Llq7;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p0, Lgg0;->a:Lp45;

    .line 9
    .line 10
    iget-object v3, v2, Lp45;->f:[B

    .line 11
    .line 12
    iget-object v2, v2, Lp45;->k:[B

    .line 13
    .line 14
    invoke-static {v3, v2}, Lms8;->p([B[B)[B

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object p0, p0, Lgg0;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, " Private Key ["

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    new-instance p0, Llr6;

    .line 29
    .line 30
    const/16 v3, 0x100

    .line 31
    .line 32
    invoke-direct {p0, v3}, Llr6;-><init>(I)V

    .line 33
    .line 34
    .line 35
    array-length v3, v2

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-virtual {p0, v2, v4, v3}, Lgo4;->update([BII)V

    .line 38
    .line 39
    .line 40
    const/16 v3, 0x14

    .line 41
    .line 42
    new-array v5, v3, [B

    .line 43
    .line 44
    invoke-virtual {p0, v5, v4, v3}, Llr6;->l([BII)V

    .line 45
    .line 46
    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    :goto_0
    if-eq v4, v3, :cond_1

    .line 53
    .line 54
    if-lez v4, :cond_0

    .line 55
    .line 56
    const-string v6, ":"

    .line 57
    .line 58
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_0
    sget-object v6, Lzv1;->b:[C

    .line 62
    .line 63
    aget-byte v7, v5, v4

    .line 64
    .line 65
    ushr-int/lit8 v7, v7, 0x4

    .line 66
    .line 67
    and-int/lit8 v7, v7, 0xf

    .line 68
    .line 69
    aget-char v7, v6, v7

    .line 70
    .line 71
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    aget-byte v7, v5, v4

    .line 75
    .line 76
    and-int/lit8 v7, v7, 0xf

    .line 77
    .line 78
    aget-char v6, v6, v7

    .line 79
    .line 80
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p0, "]"

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p0, "    public data: "

    .line 102
    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    array-length p0, v2

    .line 107
    invoke-static {v2, p0}, Le44;->b([BI)[B

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0}, Llq7;->a([B)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0
.end method
