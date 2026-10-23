.class public final synthetic Ltf9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Las9;


# virtual methods
.method public final a(Lbd9;Ljava/lang/Integer;)Lvm4;
    .locals 2

    .line 1
    check-cast p1, Lsf9;

    .line 2
    .line 3
    iget p0, p1, Lsf9;->a:I

    .line 4
    .line 5
    const/16 v0, 0x18

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ls02;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Ls02;->b:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p1, v0, Ls02;->a:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p2, v0, Ls02;->c:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p0}, Lkm8;->n(I)Lkm8;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iput-object p0, v0, Ls02;->b:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v0}, Ls02;->d()Lhf9;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    const-string p0, "192 bit AES EAX Parameters are not valid"

    .line 33
    .line 34
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method
