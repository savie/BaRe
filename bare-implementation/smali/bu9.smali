.class public final synthetic Lbu9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Las9;


# virtual methods
.method public final a(Lbd9;Ljava/lang/Integer;)Lvm4;
    .locals 3

    .line 1
    check-cast p1, Leu9;

    .line 2
    .line 3
    iget p0, p1, Leu9;->a:I

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lgd;

    .line 11
    .line 12
    const/16 v2, 0xa

    .line 13
    .line 14
    invoke-direct {v0, v2}, Lgd;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Lgd;->c:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v1, v0, Lgd;->d:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object p1, v0, Lgd;->b:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {p0}, Lkm8;->n(I)Lkm8;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iput-object p0, v0, Lgd;->c:Ljava/lang/Object;

    .line 28
    .line 29
    iput-object p2, v0, Lgd;->d:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v0}, Lgd;->p()Lzt9;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_0
    const-string p0, "AesCmacKey size wrong, must be 32 bytes"

    .line 37
    .line 38
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v1
.end method
