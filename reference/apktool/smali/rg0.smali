.class public final Lrg0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/Key;
.implements Ljava/security/PrivateKey;


# instance fields
.field public transient a:Lnj5;

.field public transient b:Lx1;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lrg0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    check-cast p1, Lrg0;

    .line 8
    .line 9
    iget-object p0, p0, Lrg0;->a:Lnj5;

    .line 10
    .line 11
    iget-object p0, p0, Lnj5;->b:[S

    .line 12
    .line 13
    invoke-static {p0}, Lms8;->l([S)[S

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object p1, p1, Lrg0;->a:Lnj5;

    .line 18
    .line 19
    iget-object p1, p1, Lnj5;->b:[S

    .line 20
    .line 21
    invoke-static {p1}, Lms8;->l([S)[S

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "NH"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEncoded()[B
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lrg0;->a:Lnj5;

    .line 2
    .line 3
    iget-object p0, p0, Lrg0;->b:Lx1;

    .line 4
    .line 5
    invoke-static {v0, p0}, Lcy0;->l(Ln60;Lx1;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ly0;->getEncoded()[B

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    const/4 p0, 0x0

    .line 15
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
    .locals 3

    .line 1
    iget-object p0, p0, Lrg0;->a:Lnj5;

    .line 2
    .line 3
    iget-object p0, p0, Lnj5;->b:[S

    .line 4
    .line 5
    invoke-static {p0}, Lms8;->l([S)[S

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    array-length v0, p0

    .line 14
    add-int/lit8 v1, v0, 0x1

    .line 15
    .line 16
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    if-ltz v0, :cond_1

    .line 19
    .line 20
    mul-int/lit16 v1, v1, 0x101

    .line 21
    .line 22
    aget-short v2, p0, v0

    .line 23
    .line 24
    and-int/lit16 v2, v2, 0xff

    .line 25
    .line 26
    xor-int/2addr v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v1
.end method
