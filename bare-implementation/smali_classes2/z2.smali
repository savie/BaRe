.class public final Lz2;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lz2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lz2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    iget p1, p0, Lz2;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lz2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lz2;

    .line 9
    .line 10
    check-cast p0, Ls11;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    invoke-direct {p1, p0, p2, v0}, Lz2;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lz2;

    .line 18
    .line 19
    check-cast p0, Ljava/util/List;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-direct {p1, p0, p2, v0}, Lz2;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_1
    new-instance p1, Lz2;

    .line 27
    .line 28
    check-cast p0, La3;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-direct {p1, p0, p2, v0}, Lz2;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lz2;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    check-cast p1, Lxx1;

    .line 6
    .line 7
    check-cast p2, Ljv1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lz2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lz2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lz2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lz2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lz2;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lz2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lz2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lz2;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lz2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lz2;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lz2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    sget-object v1, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    check-cast p0, Ls11;

    .line 14
    .line 15
    iget-object p0, p0, Ls11;->g:Lex6;

    .line 16
    .line 17
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 18
    .line 19
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lai8;->i(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    sget-object p1, Lm11;->a:Lm11;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    sget-object p1, Ltb1;->a:Ltb1;

    .line 36
    .line 37
    invoke-static {}, Lqb1;->m()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    sget-object p1, Lj11;->a:Lj11;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    sget-object p1, Ll11;->a:Ll11;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Ld01;->e()Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    sget-object v0, Lk11;->a:Lk11;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    new-instance v0, Li11;

    .line 68
    .line 69
    invoke-direct {v0, p1}, Li11;-><init>(Ljava/util/ArrayList;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {p0, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-nez p0, :cond_3

    .line 80
    .line 81
    invoke-static {}, Lre3;->d()Lzc2;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    new-instance v0, Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    invoke-static {}, Lre3;->d()Lzc2;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const/4 p1, 0x0

    .line 103
    invoke-virtual {p0, p1}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 104
    .line 105
    .line 106
    :goto_1
    return-object v1

    .line 107
    :pswitch_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    check-cast p0, Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Lq63;

    .line 127
    .line 128
    invoke-virtual {p1}, Lq63;->h()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_4

    .line 133
    .line 134
    invoke-virtual {p1}, Lq63;->v()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-string v0, "Unable to fully delete stale deferred cloud cache at "

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const-string v0, "AppCloudCacheCleaner"

    .line 145
    .line 146
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    return-object v1

    .line 151
    :pswitch_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-static {}, Lc41;->a()Ljava/util/ArrayList;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    sget-object v0, Lzn4;->a:Lzn4;

    .line 159
    .line 160
    check-cast p0, La3;

    .line 161
    .line 162
    new-instance v0, Ly2;

    .line 163
    .line 164
    const/4 v2, 0x0

    .line 165
    invoke-direct {v0, v2, p0, p1}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 169
    .line 170
    .line 171
    return-object v1

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
