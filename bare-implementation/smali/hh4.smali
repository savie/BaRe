.class public final Lhh4;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lih4;Lmt3;Ljv1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lhh4;->a:I

    .line 3
    .line 4
    iput-object p1, p0, Lhh4;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lhh4;->d:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lli3;Ljv1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lhh4;->a:I

    .line 13
    iput-object p1, p0, Lhh4;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    iget v0, p0, Lhh4;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lhh4;->d:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lhh4;

    .line 9
    .line 10
    check-cast v1, Lli3;

    .line 11
    .line 12
    invoke-direct {p0, v1, p2}, Lhh4;-><init>(Lli3;Ljv1;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lhh4;->c:Ljava/lang/Object;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_0
    new-instance p1, Lhh4;

    .line 19
    .line 20
    iget-object p0, p0, Lhh4;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lih4;

    .line 23
    .line 24
    check-cast v1, Lmt3;

    .line 25
    .line 26
    invoke-direct {p1, p0, v1, p2}, Lhh4;-><init>(Lih4;Lmt3;Ljv1;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lhh4;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, Ljv1;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lhh4;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lhh4;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lhh4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    check-cast p1, Lxx1;

    .line 22
    .line 23
    check-cast p2, Ljv1;

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lhh4;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lhh4;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lhh4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lhh4;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lhh4;->d:Ljava/lang/Object;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    sget-object v3, Lyx1;->a:Lyx1;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lhh4;->c:Ljava/lang/Object;

    .line 15
    .line 16
    iget v6, p0, Lhh4;->b:I

    .line 17
    .line 18
    if-eqz v6, :cond_1

    .line 19
    .line 20
    if-ne v6, v4, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v3, v5

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    check-cast v1, Lli3;

    .line 35
    .line 36
    iput-object v5, p0, Lhh4;->c:Ljava/lang/Object;

    .line 37
    .line 38
    iput v4, p0, Lhh4;->b:I

    .line 39
    .line 40
    invoke-interface {v1, v0, p0}, Lli3;->c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-ne p0, v3, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    sget-object v3, Lbe8;->a:Lbe8;

    .line 48
    .line 49
    :goto_1
    return-object v3

    .line 50
    :pswitch_0
    iget-object v0, p0, Lhh4;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lih4;

    .line 53
    .line 54
    iget-object v6, v0, Lih4;->b:Ljava/lang/ThreadLocal;

    .line 55
    .line 56
    iget v7, p0, Lhh4;->b:I

    .line 57
    .line 58
    if-eqz v7, :cond_4

    .line 59
    .line 60
    if-ne v7, v4, :cond_3

    .line 61
    .line 62
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_4

    .line 68
    :cond_3
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    move-object v3, v5

    .line 72
    goto :goto_5

    .line 73
    :cond_4
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-static {p1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_6

    .line 87
    .line 88
    invoke-virtual {v6, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :try_start_1
    iget-object p1, v0, Lih4;->c:Lw36;

    .line 92
    .line 93
    new-instance v0, Lgh4;

    .line 94
    .line 95
    check-cast v1, Lmt3;

    .line 96
    .line 97
    invoke-direct {v0, v1, v5}, Lgh4;-><init>(Lmt3;Ljv1;)V

    .line 98
    .line 99
    .line 100
    iput v4, p0, Lhh4;->b:I

    .line 101
    .line 102
    new-instance v1, Lfs1;

    .line 103
    .line 104
    invoke-direct {v1, v0, v5}, Lfs1;-><init>(Lgh4;Ljv1;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v1, p0}, Lw36;->a(Lqt3;Lkv1;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-ne p1, v3, :cond_5

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_5
    :goto_3
    move-object v3, p1

    .line 115
    check-cast v3, Lij5;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .line 117
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-virtual {v6, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    goto :goto_5

    .line 123
    :goto_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-virtual {v6, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_6
    const-string p0, "Don\'t call JavaDataStorage.edit() from within an existing edit() callback.\nThis causes deadlocks, and is generally indicative of a code smell.\nInstead, either pass around the initial `MutablePreferences` instance, or don\'t do everything in a single callback. "

    .line 130
    .line 131
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :goto_5
    return-object v3

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
