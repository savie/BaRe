.class public final Lib6;
.super Llb6;


# virtual methods
.method public final a(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ln60;
    .locals 0

    .line 1
    new-instance p0, Loj5;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->b:Lu;

    .line 4
    .line 5
    invoke-virtual {p1}, Lu;->y()[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Loj5;-><init>([B)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
