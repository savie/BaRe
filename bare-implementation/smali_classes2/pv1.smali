.class public final Lpv1;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/contributor/a;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/contributor/a;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpv1;->b:Lorg/swiftapps/swiftbackup/contributor/a;

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
    new-instance p1, Lpv1;

    .line 2
    .line 3
    iget-object p0, p0, Lpv1;->b:Lorg/swiftapps/swiftbackup/contributor/a;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lpv1;-><init>(Lorg/swiftapps/swiftbackup/contributor/a;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lpv1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lpv1;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lpv1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lpv1;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Lpv1;->b:Lorg/swiftapps/swiftbackup/contributor/a;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    .line 19
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v3

    .line 23
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const p1, 0x7f13042d

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, p1}, Lqo0;->h(I)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    iget-object p1, v4, Lorg/swiftapps/swiftbackup/contributor/a;->e:Lzc2;

    .line 37
    .line 38
    invoke-static {p1, v2}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    instance-of v0, p1, Lxe3;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    check-cast p1, Lxe3;

    .line 47
    .line 48
    iget-object p1, p1, Lxe3;->n:Leb2;

    .line 49
    .line 50
    const-class v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    move-object v3, p1

    .line 57
    check-cast v3, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    instance-of v0, p1, Lwe3;

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    check-cast p1, Lwe3;

    .line 65
    .line 66
    iget-object p1, p1, Lwe3;->n:Lwc2;

    .line 67
    .line 68
    iget-object p1, p1, Lwc2;->b:Ljava/lang/String;

    .line 69
    .line 70
    const-string v0, "Error while fetching remote details: "

    .line 71
    .line 72
    invoke-static {v0, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 77
    .line 78
    iget-object v8, v4, La55;->b:Ljava/lang/String;

    .line 79
    .line 80
    const/4 v11, 0x4

    .line 81
    const/4 v12, 0x0

    .line 82
    const/4 v10, 0x0

    .line 83
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 87
    .line 88
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    sget-object v0, Lzn4;->a:Lzn4;

    .line 93
    .line 94
    invoke-static {p1, v9}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    if-nez v3, :cond_3

    .line 98
    .line 99
    invoke-virtual {v4}, Lqo0;->d()V

    .line 100
    .line 101
    .line 102
    return-object v1

    .line 103
    :cond_3
    iget-object p1, v4, Lorg/swiftapps/swiftbackup/contributor/a;->f:Lex6;

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Lex6;->k(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iput-object v3, v4, Lorg/swiftapps/swiftbackup/contributor/a;->g:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 109
    .line 110
    const-wide/16 v7, 0x1f4

    .line 111
    .line 112
    invoke-static {v5, v6, v7, v8}, Lorg/swiftapps/swiftbackup/common/Const;->m(JJ)J

    .line 113
    .line 114
    .line 115
    move-result-wide v5

    .line 116
    iput v2, p0, Lpv1;->a:I

    .line 117
    .line 118
    invoke-static {v5, v6, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    sget-object p1, Lyx1;->a:Lyx1;

    .line 123
    .line 124
    if-ne p0, p1, :cond_4

    .line 125
    .line 126
    return-object p1

    .line 127
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lqo0;->f()V

    .line 128
    .line 129
    .line 130
    return-object v1

    .line 131
    :cond_5
    invoke-static {}, Lq;->j()V

    .line 132
    .line 133
    .line 134
    return-object v3
.end method
