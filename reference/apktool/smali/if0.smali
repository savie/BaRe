.class public final Lif0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;
.implements Ljava/security/Key;


# instance fields
.field public transient a:Lgi0;

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
    instance-of v0, p1, Lif0;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lif0;

    .line 10
    .line 11
    iget-object p0, p0, Lif0;->a:Lgi0;

    .line 12
    .line 13
    invoke-virtual {p0}, Lgi0;->getEncoded()[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object p1, p1, Lif0;->a:Lgi0;

    .line 18
    .line 19
    invoke-virtual {p1}, Lgi0;->getEncoded()[B

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
    iget-object p0, p0, Lif0;->a:Lgi0;

    .line 2
    .line 3
    iget-object p0, p0, Lei0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lfi0;

    .line 6
    .line 7
    iget-object p0, p0, Lfi0;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p0}, Llq7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final getEncoded()[B
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lif0;->a:Lgi0;

    .line 2
    .line 3
    iget-object p0, p0, Lif0;->b:Lx1;

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
    iget-object p0, p0, Lif0;->a:Lgi0;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgi0;->getEncoded()[B

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
