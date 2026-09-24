.class public final Ljb6;
.super Llb6;


# virtual methods
.method public final a(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ln60;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->l()Lq1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Lj1;->a:[B

    .line 10
    .line 11
    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 12
    .line 13
    iget-object p1, p1, Lya;->a:Lf1;

    .line 14
    .line 15
    sget-object v0, Lfi8;->v:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Luj5;

    .line 22
    .line 23
    new-instance v0, Lwj5;

    .line 24
    .line 25
    invoke-direct {v0, p1, p0}, Lwj5;-><init>(Luj5;[B)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
