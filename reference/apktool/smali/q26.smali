.class public final Lq26;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:Llh6;

.field public b:I

.field public final synthetic c:Llh6;

.field public final synthetic d:Lr26;


# direct methods
.method public constructor <init>(Llh6;Lr26;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq26;->c:Llh6;

    .line 2
    .line 3
    iput-object p2, p0, Lq26;->d:Lr26;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    new-instance p1, Lq26;

    .line 2
    .line 3
    iget-object v0, p0, Lq26;->c:Llh6;

    .line 4
    .line 5
    iget-object p0, p0, Lq26;->d:Lr26;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lq26;-><init>(Llh6;Lr26;Ljv1;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lq26;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lq26;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lq26;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lq26;->b:I

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
    iget-object p0, p0, Lq26;->a:Llh6;

    .line 9
    .line 10
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lq26;->c:Llh6;

    .line 25
    .line 26
    iput-object p1, p0, Lq26;->a:Llh6;

    .line 27
    .line 28
    iput v1, p0, Lq26;->b:I

    .line 29
    .line 30
    iget-object v0, p0, Lq26;->d:Lr26;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lr26;->a(Lkv1;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-object v0, Lyx1;->a:Lyx1;

    .line 37
    .line 38
    if-ne p0, v0, :cond_2

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    move-object v2, p1

    .line 42
    move-object p1, p0

    .line 43
    move-object p0, v2

    .line 44
    :goto_0
    iput-object p1, p0, Llh6;->a:Ljava/lang/Object;

    .line 45
    .line 46
    sget-object p0, Lbe8;->a:Lbe8;

    .line 47
    .line 48
    return-object p0
.end method
