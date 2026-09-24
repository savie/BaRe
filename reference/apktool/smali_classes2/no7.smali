.class public final Lno7;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

.field public final synthetic c:Lzn7;

.field public final synthetic d:Lzn7;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;Lzn7;Lzn7;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno7;->b:Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lno7;->c:Lzn7;

    .line 4
    .line 5
    iput-object p3, p0, Lno7;->d:Lzn7;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    new-instance p1, Lno7;

    .line 2
    .line 3
    iget-object v0, p0, Lno7;->c:Lzn7;

    .line 4
    .line 5
    iget-object v1, p0, Lno7;->d:Lzn7;

    .line 6
    .line 7
    iget-object p0, p0, Lno7;->b:Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lno7;-><init>(Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;Lzn7;Lzn7;Ljv1;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lno7;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lno7;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lno7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lno7;->a:I

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
    goto :goto_0

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
    iget-object v4, p0, Lno7;->b:Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 23
    .line 24
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Y()Lyo7;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const v0, 0x7f130426

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lqo0;->h(I)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lry5;->u:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p1, p0, Lno7;->c:Lzn7;

    .line 37
    .line 38
    invoke-static {p1}, Lqy5;->d(Lzn7;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    iget-object p1, p0, Lno7;->d:Lzn7;

    .line 43
    .line 44
    invoke-static {p1}, Lqy5;->d(Lzn7;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-virtual {p1}, Lzn7;->n()Lq63;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lqy5;->c(Lq63;)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    sget-object p1, Lp93;->a:Lp93;

    .line 57
    .line 58
    invoke-virtual {p1, v7}, Lp93;->f(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Y()Lyo7;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lqo0;->f()V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lzn4;->a:Lzn4;

    .line 70
    .line 71
    new-instance v2, Llo7;

    .line 72
    .line 73
    invoke-direct/range {v2 .. v8}, Llo7;-><init>(Ljava/lang/Long;Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;JLjava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput v1, p0, Lno7;->a:I

    .line 77
    .line 78
    invoke-static {v2, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    sget-object p1, Lyx1;->a:Lyx1;

    .line 83
    .line 84
    if-ne p0, p1, :cond_2

    .line 85
    .line 86
    return-object p1

    .line 87
    :cond_2
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 88
    .line 89
    return-object p0
.end method
