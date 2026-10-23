.class public final Lig5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Ldn6;

.field public b:Ljava/util/Iterator;

.field public c:Z

.field public final d:Ljava/util/Iterator;

.field public final synthetic e:Ljg5;


# direct methods
.method public constructor <init>(Ljg5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lig5;->e:Ljg5;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lig5;->a:Ldn6;

    .line 8
    .line 9
    iput-object v0, p0, Lig5;->b:Ljava/util/Iterator;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lig5;->c:Z

    .line 13
    .line 14
    iget-object p1, p1, Ljg5;->a:Lij6;

    .line 15
    .line 16
    invoke-virtual {p1}, Lij6;->l()Ljava/lang/Iterable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lig5;->d:Ljava/util/Iterator;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lig5;->a:Ldn6;

    .line 3
    .line 4
    :cond_0
    iget-object v0, p0, Lig5;->b:Ljava/util/Iterator;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lig5;->b:Ljava/util/Iterator;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lwh2$b;

    .line 19
    .line 20
    const-string v1, "NoSuchVersion"

    .line 21
    .line 22
    invoke-virtual {v0}, Lcy2;->b()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    new-instance v1, Ldn6;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Ldn6;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lig5;->a:Ldn6;

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final hasNext()Z
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lig5;->a:Ldn6;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    iget-object v3, p0, Lig5;->b:Ljava/util/Iterator;

    .line 8
    .line 9
    if-nez v3, :cond_4

    .line 10
    .line 11
    iget-boolean v3, p0, Lig5;->c:Z

    .line 12
    .line 13
    if-nez v3, :cond_4

    .line 14
    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-boolean v0, p0, Lig5;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    :goto_1
    iget-object v3, p0, Lig5;->d:Ljava/util/Iterator;

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/16 v4, 0x3e8

    .line 40
    .line 41
    if-ge v3, v4, :cond_1

    .line 42
    .line 43
    iget-object v3, p0, Lig5;->d:Ljava/util/Iterator;

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :catch_0
    move-exception v0

    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    iput-boolean v3, p0, Lig5;->c:Z
    :try_end_1
    .catch Lrg5; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    monitor-exit p0

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    :try_start_2
    iget-object v3, p0, Lig5;->e:Ljg5;

    .line 70
    .line 71
    iget-object v3, v3, Ljg5;->b:Lpg5;

    .line 72
    .line 73
    invoke-static {}, Lth2;->l()Lth2$a;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    iget-object v5, p0, Lig5;->e:Ljg5;

    .line 78
    .line 79
    iget-object v5, v5, Ljg5;->a:Lij6;

    .line 80
    .line 81
    invoke-virtual {v5}, Lll0;->b()Lv64$c;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v4, v5}, Lll0$a;->e(Lv64$c;)Lll0$a;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Lth2$a;

    .line 90
    .line 91
    iget-object v5, p0, Lig5;->e:Ljg5;

    .line 92
    .line 93
    iget-object v5, v5, Ljg5;->a:Lij6;

    .line 94
    .line 95
    invoke-virtual {v5}, Lll0;->c()Lv64$e;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v4, v5}, Lll0$a;->g(Lv64$e;)Lll0$a;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Lth2$a;

    .line 104
    .line 105
    iget-object v5, p0, Lig5;->e:Ljg5;

    .line 106
    .line 107
    iget-object v5, v5, Ljg5;->a:Lij6;

    .line 108
    .line 109
    invoke-virtual {v5}, Lfw0;->f()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v4, v5}, Lfw0$a;->p(Ljava/lang/String;)Lfw0$a;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Lth2$a;

    .line 118
    .line 119
    iget-object v5, p0, Lig5;->e:Ljg5;

    .line 120
    .line 121
    iget-object v5, v5, Ljg5;->a:Lij6;

    .line 122
    .line 123
    invoke-virtual {v5}, Lfw0;->g()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v4, v5}, Lfw0$a;->s(Ljava/lang/String;)Lfw0$a;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Lth2$a;

    .line 132
    .line 133
    invoke-virtual {v4, v0}, Lth2$a;->E(Ljava/util/List;)Lth2$a;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0, v2}, Lth2$a;->F(Z)Lth2$a;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v4, p0, Lig5;->e:Ljg5;

    .line 142
    .line 143
    iget-object v4, v4, Ljg5;->a:Lij6;

    .line 144
    .line 145
    invoke-virtual {v4}, Lij6;->k()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    invoke-virtual {v0, v4}, Lth2$a;->A(Z)Lth2$a;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lll0$a;->d()Lll0;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Lth2;

    .line 158
    .line 159
    invoke-virtual {v3, v0}, Lcn0;->h(Lth2;)Ljava/util/concurrent/CompletableFuture;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Luh2;
    :try_end_2
    .catch Ljava/util/concurrent/CompletionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lrg5; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    .line 169
    :try_start_3
    iget-object v1, v0, Luh2;->a:Lwh2;

    .line 170
    .line 171
    invoke-virtual {v1}, Lwh2;->a()Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_3

    .line 180
    .line 181
    iget-object v0, v0, Luh2;->a:Lwh2;

    .line 182
    .line 183
    invoke-virtual {v0}, Lwh2;->a()Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iput-object v0, p0, Lig5;->b:Ljava/util/Iterator;

    .line 192
    .line 193
    invoke-virtual {p0}, Lig5;->a()V

    .line 194
    .line 195
    .line 196
    iput-boolean v2, p0, Lig5;->c:Z

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :catch_1
    move-exception v0

    .line 200
    iget-object v3, p0, Lig5;->e:Ljg5;

    .line 201
    .line 202
    iget-object v3, v3, Ljg5;->b:Lpg5;

    .line 203
    .line 204
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-static {v0}, Lpg5;->W(Ljava/util/concurrent/CompletionException;)V

    .line 208
    .line 209
    .line 210
    throw v1
    :try_end_3
    .catch Lrg5; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    :goto_2
    :try_start_4
    new-instance v1, Ldn6;

    .line 212
    .line 213
    invoke-direct {v1, v0}, Ldn6;-><init>(Lrg5;)V

    .line 214
    .line 215
    .line 216
    iput-object v1, p0, Lig5;->a:Ldn6;

    .line 217
    .line 218
    iput-boolean v2, p0, Lig5;->c:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 219
    .line 220
    :cond_3
    :goto_3
    monitor-exit p0

    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 224
    throw v0

    .line 225
    :cond_4
    if-nez v0, :cond_5

    .line 226
    .line 227
    iget-object v0, p0, Lig5;->b:Ljava/util/Iterator;

    .line 228
    .line 229
    if-eqz v0, :cond_5

    .line 230
    .line 231
    invoke-virtual {p0}, Lig5;->a()V

    .line 232
    .line 233
    .line 234
    :cond_5
    iget-object v0, p0, Lig5;->a:Ldn6;

    .line 235
    .line 236
    if-eqz v0, :cond_6

    .line 237
    .line 238
    return v2

    .line 239
    :cond_6
    iget-boolean v0, p0, Lig5;->c:Z

    .line 240
    .line 241
    if-eqz v0, :cond_7

    .line 242
    .line 243
    const/4 p0, 0x0

    .line 244
    return p0

    .line 245
    :cond_7
    iput-object v1, p0, Lig5;->b:Ljava/util/Iterator;

    .line 246
    .line 247
    invoke-virtual {p0}, Lig5;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result p0

    .line 251
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lig5;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lig5;->a:Ldn6;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iput-object v1, p0, Lig5;->a:Ldn6;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    invoke-static {}, Lm0;->d()V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    invoke-static {}, Lm0;->d()V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public final remove()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
