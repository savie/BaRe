.class public final Lbo7;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrt3;


# instance fields
.field public a:I

.field public synthetic b:Li93;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Li93;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p3, Ljv1;

    .line 9
    .line 10
    new-instance p0, Lbo7;

    .line 11
    .line 12
    const/4 p2, 0x3

    .line 13
    invoke-direct {p0, p2, p3}, Lws7;-><init>(ILjv1;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lbo7;->b:Li93;

    .line 17
    .line 18
    sget-object p1, Lbe8;->a:Lbe8;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lbo7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lbo7;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lbo7;->b:Li93;

    .line 23
    .line 24
    iput v1, p0, Lbo7;->a:I

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p0}, Li93;->a(Li93;Lkv1;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object p1, Lyx1;->a:Lyx1;

    .line 34
    .line 35
    if-ne p0, p1, :cond_2

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_2
    return-object p0
.end method
