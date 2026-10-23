.class public final Lwf0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;
.implements Ljava/security/Key;


# instance fields
.field public transient a:Lm33;

.field public transient b:Ljava/lang/String;

.field public transient c:[B

.field public transient d:Lx1;


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
    instance-of v0, p1, Lwf0;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lwf0;

    .line 10
    .line 11
    invoke-virtual {p0}, Lwf0;->getEncoded()[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1}, Lwf0;->getEncoded()[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwf0;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEncoded()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lwf0;->c:[B

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lwf0;->a:Lm33;

    .line 6
    .line 7
    iget-object v1, p0, Lwf0;->d:Lx1;

    .line 8
    .line 9
    iget-boolean v2, v0, Ln60;->a:Z

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-static {v0, v1}, Lcy0;->l(Ln60;Lx1;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ly0;->i()[B

    .line 19
    .line 20
    .line 21
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :catch_0
    iput-object v3, p0, Lwf0;->c:[B

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "public key found"

    .line 26
    .line 27
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v3

    .line 31
    :cond_1
    :goto_0
    iget-object p0, p0, Lwf0;->c:[B

    .line 32
    .line 33
    invoke-static {p0}, Lms8;->k([B)[B

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
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
    invoke-virtual {p0}, Lwf0;->getEncoded()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lms8;->x([B)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
