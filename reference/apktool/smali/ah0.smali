.class public final Lah0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;
.implements Ljava/security/Key;


# instance fields
.field public transient a:Lui7;

.field public transient b:Lx1;


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
    instance-of v0, p1, Lah0;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lah0;

    .line 10
    .line 11
    iget-object p0, p0, Lah0;->a:Lui7;

    .line 12
    .line 13
    iget-object p0, p0, Lui7;->b:[B

    .line 14
    .line 15
    invoke-static {p0}, Lms8;->k([B)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object p1, p1, Lah0;->a:Lui7;

    .line 20
    .line 21
    iget-object p1, p1, Lui7;->b:[B

    .line 22
    .line 23
    invoke-static {p1}, Lms8;->k([B)[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lah0;->a:Lui7;

    .line 2
    .line 3
    iget-object p0, p0, Lui7;->c:Lti7;

    .line 4
    .line 5
    iget-object p0, p0, Lti7;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p0}, Llq7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getEncoded()[B
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lah0;->a:Lui7;

    .line 2
    .line 3
    iget-object p0, p0, Lah0;->b:Lx1;

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
    .locals 0

    .line 1
    iget-object p0, p0, Lah0;->a:Lui7;

    .line 2
    .line 3
    iget-object p0, p0, Lui7;->b:[B

    .line 4
    .line 5
    invoke-static {p0}, Lms8;->k([B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lms8;->x([B)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
