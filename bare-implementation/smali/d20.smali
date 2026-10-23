.class public final Ld20;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld20;->b:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 0

    .line 1
    new-instance p1, Ld20;

    .line 2
    .line 3
    iget-object p0, p0, Ld20;->b:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Ld20;-><init>(Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;Ljv1;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Ld20;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ld20;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ld20;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Ld20;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Ld20;->b:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 23
    .line 24
    iget-object v0, p1, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 25
    .line 26
    if-eqz v0, :cond_5

    .line 27
    .line 28
    invoke-virtual {v0}, Lgm7;->l()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->l0()Lr20;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const v4, 0x7f13042d

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Lqo0;->h(I)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lft;

    .line 43
    .line 44
    invoke-direct {v3, v0}, Lft;-><init>(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lft;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const-string v4, "apps_list"

    .line 59
    .line 60
    invoke-static {v3, v4}, Lnc3;->U(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    new-instance v5, Lq63;

    .line 65
    .line 66
    const/4 v6, 0x2

    .line 67
    invoke-direct {v5, v3, v4, v6}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Lq63;->h()Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Lq63;->t()Lq63;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    invoke-static {v3}, Lq63;->E(Lq63;)Z

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-static {v5, v0}, Lq63;->K(Lq63;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Lq63;->j()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->l0()Lr20;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lqo0;->f()V

    .line 96
    .line 97
    .line 98
    sget-object v0, Lzn4;->a:Lzn4;

    .line 99
    .line 100
    new-instance v0, Ly2;

    .line 101
    .line 102
    invoke-direct {v0, v6, p1, v5}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iput v2, p0, Ld20;->a:I

    .line 106
    .line 107
    invoke-static {v0, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    sget-object p1, Lyx1;->a:Lyx1;

    .line 112
    .line 113
    if-ne p0, p1, :cond_3

    .line 114
    .line 115
    return-object p1

    .line 116
    :cond_3
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 117
    .line 118
    return-object p0

    .line 119
    :cond_4
    const-string p0, "Failed creating apps list at "

    .line 120
    .line 121
    invoke-static {v5, p0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-object v1

    .line 129
    :cond_5
    const-string p0, "mAdapter"

    .line 130
    .line 131
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v1
.end method
