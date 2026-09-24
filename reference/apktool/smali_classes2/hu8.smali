.class public final Lhu8;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:I

.field public final synthetic c:Liu8;


# direct methods
.method public constructor <init>(Liu8;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhu8;->c:Liu8;

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
    new-instance p1, Lhu8;

    .line 2
    .line 3
    iget-object p0, p0, Lhu8;->c:Liu8;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lhu8;-><init>(Liu8;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lhu8;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lhu8;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lhu8;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object v0, p0, Lhu8;->c:Liu8;

    .line 2
    .line 3
    iget-object v1, v0, Liu8;->h:Lex6;

    .line 4
    .line 5
    iget v2, p0, Lhu8;->b:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    if-ne v2, v4, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lhu8;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v3

    .line 26
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Ldu8;->a:Ldu8;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    invoke-virtual {v0}, Liu8;->j()Lus8;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {p1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_a

    .line 58
    .line 59
    new-instance p1, Lq63;

    .line 60
    .line 61
    sget-object v2, Lry5;->u:Ljava/lang/String;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-static {v2, v3}, Lqy5;->f(ZLzn7;)Lry5;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iget-object v2, v2, Lry5;->n:Ljava/lang/String;

    .line 69
    .line 70
    const-string v7, "wifi_networks.wfi"

    .line 71
    .line 72
    invoke-static {v2, v7}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const/4 v7, 0x2

    .line 77
    invoke-direct {p1, v2, v7}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lq63;->j()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    sget-object v2, Lw14;->a:Lgv7;

    .line 88
    .line 89
    const-class v2, Lft8;

    .line 90
    .line 91
    invoke-static {p1, v2}, Lw14;->a(Lq63;Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lft8;

    .line 96
    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1}, Lft8;->getItems()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    new-instance v2, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_4

    .line 119
    .line 120
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    move-object v7, v3

    .line 125
    check-cast v7, Let8;

    .line 126
    .line 127
    invoke-virtual {v7}, Let8;->isValid()Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-eqz v7, :cond_3

    .line 132
    .line 133
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v7

    .line 146
    sub-long/2addr v7, v5

    .line 147
    const-wide/16 v5, 0x3e8

    .line 148
    .line 149
    cmp-long p1, v7, v5

    .line 150
    .line 151
    if-gez p1, :cond_7

    .line 152
    .line 153
    sub-long/2addr v5, v7

    .line 154
    iput-object v3, p0, Lhu8;->a:Ljava/util/ArrayList;

    .line 155
    .line 156
    iput v4, p0, Lhu8;->b:I

    .line 157
    .line 158
    invoke-static {v5, v6, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    sget-object p1, Lyx1;->a:Lyx1;

    .line 163
    .line 164
    if-ne p0, p1, :cond_6

    .line 165
    .line 166
    return-object p1

    .line 167
    :cond_6
    move-object p0, v3

    .line 168
    :goto_2
    move-object v3, p0

    .line 169
    :cond_7
    if-eqz v3, :cond_9

    .line 170
    .line 171
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-eqz p0, :cond_8

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_8
    new-instance p0, Lfu8;

    .line 179
    .line 180
    invoke-direct {p0, v3}, Lfu8;-><init>(Ljava/util/List;)V

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_9
    :goto_3
    new-instance p0, Lcu8;

    .line 185
    .line 186
    invoke-virtual {v0}, Liu8;->k()Landroid/net/wifi/WifiManager;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    invoke-direct {p0, p1}, Lcu8;-><init>(Z)V

    .line 195
    .line 196
    .line 197
    :goto_4
    invoke-virtual {v1, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    sget-object p0, Lbe8;->a:Lbe8;

    .line 201
    .line 202
    return-object p0

    .line 203
    :cond_a
    invoke-static {}, Ld6;->o()V

    .line 204
    .line 205
    .line 206
    return-object v3
.end method
