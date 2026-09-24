.class public final Lzg0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;
.implements Ljava/security/Key;


# instance fields
.field public transient a:Lcw6;


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
    instance-of v0, p1, Lzg0;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lzg0;

    .line 10
    .line 11
    iget-object p0, p0, Lzg0;->a:Lcw6;

    .line 12
    .line 13
    iget-object p0, p0, Lcw6;->c:Lw00;

    .line 14
    .line 15
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, [B

    .line 18
    .line 19
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, [B

    .line 22
    .line 23
    invoke-static {v0, p0}, Lms8;->p([B[B)[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object p1, p1, Lzg0;->a:Lcw6;

    .line 28
    .line 29
    iget-object p1, p1, Lcw6;->c:Lw00;

    .line 30
    .line 31
    iget-object v0, p1, Lw00;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, [B

    .line 34
    .line 35
    iget-object p1, p1, Lw00;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, [B

    .line 38
    .line 39
    invoke-static {v0, p1}, Lms8;->p([B[B)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0

    .line 48
    :cond_1
    const/4 p0, 0x0

    .line 49
    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lzg0;->a:Lcw6;

    .line 2
    .line 3
    iget-object p0, p0, Lei0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Law6;

    .line 6
    .line 7
    iget-object p0, p0, Law6;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p0}, Llq7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "SPHINCS+-"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final getEncoded()[B
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lzg0;->a:Lcw6;

    .line 2
    .line 3
    invoke-static {p0}, Lpe4;->i(Ln60;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ly0;->getEncoded()[B

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "X.509"

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object p0, p0, Lzg0;->a:Lcw6;

    .line 2
    .line 3
    iget-object p0, p0, Lcw6;->c:Lw00;

    .line 4
    .line 5
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, [B

    .line 8
    .line 9
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, [B

    .line 12
    .line 13
    invoke-static {v0, p0}, Lms8;->p([B[B)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lms8;->x([B)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method
