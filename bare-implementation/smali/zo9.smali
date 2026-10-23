.class public final synthetic Lzo9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Las9;


# virtual methods
.method public final a(Lbd9;Ljava/lang/Integer;)Lvm4;
    .locals 2

    .line 1
    check-cast p1, Ldp9;

    .line 2
    .line 3
    iget p0, p1, Ldp9;->a:I

    .line 4
    .line 5
    const/16 v0, 0x40

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ldr;

    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    invoke-direct {v0, v1}, Ldr;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Ldr;->c:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p1, v0, Ldr;->b:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p2, v0, Ldr;->d:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {p0}, Lkm8;->n(I)Lkm8;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iput-object p0, v0, Ldr;->c:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v0}, Ldr;->i()Lto9;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 34
    .line 35
    const-string p2, "invalid key size: "

    .line 36
    .line 37
    const-string v0, ". Valid keys must have 64 bytes."

    .line 38
    .line 39
    invoke-static {p0, p2, v0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {p1, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method
