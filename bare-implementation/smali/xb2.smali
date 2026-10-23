.class public final Lxb2;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public a:Ljava/lang/Throwable;

.field public b:I

.field public final synthetic c:Lic2;


# direct methods
.method public constructor <init>(Lic2;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxb2;->c:Lic2;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljv1;)Ljv1;
    .locals 1

    .line 1
    new-instance v0, Lxb2;

    .line 2
    .line 3
    iget-object p0, p0, Lxb2;->c:Lic2;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lxb2;-><init>(Lic2;Ljv1;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljv1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lxb2;->create(Ljv1;)Ljv1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lxb2;

    .line 8
    .line 9
    sget-object p1, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lxb2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lxb2;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lxb2;->c:Lic2;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    sget-object v4, Lyx1;->a:Lyx1;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    if-eq v0, v3, :cond_1

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lxb2;->a:Ljava/lang/Throwable;

    .line 16
    .line 17
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :cond_1
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :try_start_1
    iput v3, p0, Lxb2;->b:I

    .line 38
    .line 39
    invoke-static {v1, v3, p0}, Lic2;->f(Lic2;ZLkv1;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-ne p1, v4, :cond_3

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    :goto_0
    check-cast p1, Lem7;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    goto :goto_4

    .line 49
    :goto_1
    invoke-virtual {v1}, Lic2;->g()Lsd4;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object p1, p0, Lxb2;->a:Ljava/lang/Throwable;

    .line 54
    .line 55
    iput v2, p0, Lxb2;->b:I

    .line 56
    .line 57
    invoke-interface {v0, p0}, Lsd4;->b(Lkv1;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    if-ne p0, v4, :cond_4

    .line 62
    .line 63
    :goto_2
    return-object v4

    .line 64
    :cond_4
    move-object v5, p1

    .line 65
    move-object p1, p0

    .line 66
    move-object p0, v5

    .line 67
    :goto_3
    check-cast p1, Ljava/lang/Number;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    new-instance v0, Ljf6;

    .line 74
    .line 75
    invoke-direct {v0, p1, p0}, Ljf6;-><init>(ILjava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    move-object p1, v0

    .line 79
    :goto_4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 80
    .line 81
    new-instance v0, Lpw5;

    .line 82
    .line 83
    invoke-direct {v0, p1, p0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-object v0
.end method
