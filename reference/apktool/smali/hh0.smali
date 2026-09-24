.class public final Lhh0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field public transient a:Lvx8;

.field public transient b:Lf1;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lhh0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Lhh0;

    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lhh0;->b:Lf1;

    .line 13
    .line 14
    iget-object v3, p1, Lhh0;->b:Lf1;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Lq1;->s(Lq1;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lhh0;->a:Lvx8;

    .line 23
    .line 24
    invoke-virtual {p0}, Lvx8;->getEncoded()[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p1, p1, Lhh0;->a:Lvx8;

    .line 29
    .line 30
    invoke-virtual {p1}, Lvx8;->getEncoded()[B

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 35
    .line 36
    .line 37
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    return v0

    .line 41
    :catch_0
    :cond_1
    return v2
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "XMSS"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEncoded()[B
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lhh0;->a:Lvx8;

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
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lhh0;->b:Lf1;

    .line 2
    .line 3
    iget-object v0, v0, Lf1;->a:[B

    .line 4
    .line 5
    invoke-static {v0}, Lms8;->x([B)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lhh0;->a:Lvx8;

    .line 10
    .line 11
    invoke-virtual {v1}, Lvx8;->getEncoded()[B

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lms8;->x([B)I

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    mul-int/lit8 p0, p0, 0x25

    .line 20
    .line 21
    add-int/2addr p0, v0

    .line 22
    return p0

    .line 23
    :catch_0
    iget-object p0, p0, Lhh0;->b:Lf1;

    .line 24
    .line 25
    iget-object p0, p0, Lf1;->a:[B

    .line 26
    .line 27
    invoke-static {p0}, Lms8;->x([B)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method
