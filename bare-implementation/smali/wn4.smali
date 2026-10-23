.class public final Lwn4;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:Lz67;

.field public b:Lvn4;

.field public c:I

.field public final synthetic d:Lz67;

.field public final synthetic e:Lvn4;


# direct methods
.method public constructor <init>(Lz67;Lvn4;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwn4;->d:Lz67;

    .line 2
    .line 3
    iput-object p2, p0, Lwn4;->e:Lvn4;

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
    new-instance p1, Lwn4;

    .line 2
    .line 3
    iget-object v0, p0, Lwn4;->d:Lz67;

    .line 4
    .line 5
    iget-object p0, p0, Lwn4;->e:Lvn4;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lwn4;-><init>(Lz67;Lvn4;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lwn4;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lwn4;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lwn4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lwn4;->c:I

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
    iget-object v0, p0, Lwn4;->b:Lvn4;

    .line 9
    .line 10
    iget-object p0, p0, Lwn4;->a:Lz67;

    .line 11
    .line 12
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lwn4;->d:Lz67;

    .line 27
    .line 28
    iput-object p1, p0, Lwn4;->a:Lz67;

    .line 29
    .line 30
    iget-object v0, p0, Lwn4;->e:Lvn4;

    .line 31
    .line 32
    iput-object v0, p0, Lwn4;->b:Lvn4;

    .line 33
    .line 34
    iput v1, p0, Lwn4;->c:I

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Ly67;->c(Lkv1;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object v1, Lyx1;->a:Lyx1;

    .line 41
    .line 42
    if-ne p0, v1, :cond_2

    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_2
    move-object p0, p1

    .line 46
    :goto_0
    :try_start_0
    iget-object p1, v0, Lvn4;->a:Lbt3;

    .line 47
    .line 48
    invoke-interface {p1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Ly67;->e()V

    .line 53
    .line 54
    .line 55
    return-object p1

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    invoke-virtual {p0}, Ly67;->e()V

    .line 58
    .line 59
    .line 60
    throw p1
.end method
