.class public final Lkc;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 55
    iput p1, p0, Lkc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 54
    iput p5, p0, Lkc;->a:I

    iput-object p1, p0, Lkc;->b:Ljava/lang/Object;

    iput-object p2, p0, Lkc;->c:Ljava/lang/Object;

    iput-object p3, p0, Lkc;->d:Ljava/lang/Object;

    iput-object p4, p0, Lkc;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkf;Lji1;Lc7;Lvg1;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lkc;->a:I

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lkc;->b:Ljava/lang/Object;

    .line 58
    iput-object p2, p0, Lkc;->c:Ljava/lang/Object;

    .line 59
    iput-object p3, p0, Lkc;->d:Ljava/lang/Object;

    .line 60
    iput-object p4, p0, Lkc;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lxx1;Lec2;Lfc2;)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lkc;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lkc;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lkc;->c:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    const/4 v0, 0x6

    .line 13
    const v1, 0x7fffffff

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p3, v0}, Lms8;->c(ILpw0;I)Luw0;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    iput-object p3, p0, Lkc;->d:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance p3, Ltr9;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-direct {p3, v0}, Ltr9;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object p3, p0, Lkc;->e:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-interface {p1}, Lxx1;->d()Lox1;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object p3, Lnh4;->b:Lnh4;

    .line 35
    .line 36
    invoke-interface {p1, p3}, Lox1;->get(Lnx1;)Lmx1;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Loh4;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    new-instance p3, Lgv4;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-direct {p3, v0, p2, p0}, Lgv4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, p3}, Loh4;->invokeOnCompletion(Lmt3;)Lin2;

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)Ljd4;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lov2;->a:Lov2;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Lci1;

    .line 10
    .line 11
    invoke-direct {p0, v1, v1}, Lci1;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object v0, p0, Lkc;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lvg1;

    .line 18
    .line 19
    invoke-virtual {v0}, Lvg1;->a()Lrg1;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    sget-object p0, Lai1;->i:Lai1;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    :try_start_0
    iget-object v2, p0, Lkc;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lkf;

    .line 31
    .line 32
    invoke-virtual {v2}, Lkf;->invoke()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ltu0;

    .line 37
    .line 38
    instance-of v3, v2, Lfb1;

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    new-instance p0, Lbi1;

    .line 43
    .line 44
    check-cast v2, Lfb1;

    .line 45
    .line 46
    iget-object v1, v2, Lfb1;->n:Ljava/lang/RuntimeException;

    .line 47
    .line 48
    invoke-direct {p0, v1, p1}, Lbi1;-><init>(Ljava/lang/Exception;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lrg1;->close()V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_2
    :try_start_1
    instance-of v3, v2, Lgb1;

    .line 62
    .line 63
    if-eqz v3, :cond_9

    .line 64
    .line 65
    check-cast v2, Lgb1;

    .line 66
    .line 67
    iget-object v2, v2, Lgb1;->n:Ljava/util/Set;

    .line 68
    .line 69
    iget-object v3, p0, Lkc;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v3, Lji1;

    .line 72
    .line 73
    invoke-virtual {v3}, Lji1;->invoke()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljm1;

    .line 78
    .line 79
    instance-of v4, v3, Lxa1;

    .line 80
    .line 81
    if-eqz v4, :cond_3

    .line 82
    .line 83
    new-instance p0, Lbi1;

    .line 84
    .line 85
    check-cast v3, Lxa1;

    .line 86
    .line 87
    iget-object v1, v3, Lxa1;->g:Ljava/lang/Exception;

    .line 88
    .line 89
    invoke-direct {p0, v1, p1}, Lbi1;-><init>(Ljava/lang/Exception;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lrg1;->close()V

    .line 93
    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_3
    :try_start_2
    instance-of v4, v3, Lya1;

    .line 97
    .line 98
    if-eqz v4, :cond_8

    .line 99
    .line 100
    check-cast v3, Lya1;

    .line 101
    .line 102
    sget-object v4, Lei1;->a:Lai6;

    .line 103
    .line 104
    iget-object v4, v3, Lya1;->g:Ljava/util/ArrayList;

    .line 105
    .line 106
    iget-object v3, v3, Lya1;->h:Lqf1;

    .line 107
    .line 108
    invoke-static {p1, v4, v2, v3}, Lei1;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;Lqf1;)Lmn6;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iget-object v3, v2, Lmn6;->b:Ljava/util/ArrayList;

    .line 113
    .line 114
    iget-object v2, v2, Lmn6;->a:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_4

    .line 121
    .line 122
    new-instance p0, Lci1;

    .line 123
    .line 124
    invoke-direct {p0, v1, v3}, Lci1;-><init>(Ljava/util/List;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lrg1;->close()V

    .line 128
    .line 129
    .line 130
    return-object p0

    .line 131
    :cond_4
    :try_start_3
    iget-object p0, p0, Lkc;->d:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast p0, Lc7;

    .line 134
    .line 135
    new-instance v1, Ljava/util/ArrayList;

    .line 136
    .line 137
    const/16 v4, 0xa

    .line 138
    .line 139
    invoke-static {v2, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_5

    .line 155
    .line 156
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Lwa1;

    .line 161
    .line 162
    iget-object v5, v5, Lwa1;->c:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_5
    invoke-virtual {p0, v1}, Lc7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    check-cast p0, Ly13;

    .line 173
    .line 174
    instance-of v1, p0, Lof1;

    .line 175
    .line 176
    if-eqz v1, :cond_6

    .line 177
    .line 178
    new-instance v1, Lbi1;

    .line 179
    .line 180
    check-cast p0, Lof1;

    .line 181
    .line 182
    iget-object p0, p0, Lof1;->h:Ljava/lang/Exception;

    .line 183
    .line 184
    invoke-direct {v1, p0, v3}, Lbi1;-><init>(Ljava/lang/Exception;Ljava/util/ArrayList;)V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_6
    sget-object v1, Lpf1;->h:Lpf1;

    .line 189
    .line 190
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    if-eqz p0, :cond_7

    .line 195
    .line 196
    new-instance v1, Lci1;

    .line 197
    .line 198
    invoke-direct {v1, v2, v3}, Lci1;-><init>(Ljava/util/List;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    .line 200
    .line 201
    :goto_1
    invoke-virtual {v0}, Lrg1;->close()V

    .line 202
    .line 203
    .line 204
    return-object v1

    .line 205
    :cond_7
    :try_start_4
    new-instance p0, Lmn5;

    .line 206
    .line 207
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 208
    .line 209
    .line 210
    throw p0

    .line 211
    :cond_8
    new-instance p0, Lmn5;

    .line 212
    .line 213
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 214
    .line 215
    .line 216
    throw p0

    .line 217
    :cond_9
    new-instance p0, Lmn5;

    .line 218
    .line 219
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 220
    .line 221
    .line 222
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 223
    :goto_2
    :try_start_5
    new-instance v1, Lbi1;

    .line 224
    .line 225
    invoke-direct {v1, p0, p1}, Lbi1;-><init>(Ljava/lang/Exception;Ljava/util/ArrayList;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Lrg1;->close()V

    .line 229
    .line 230
    .line 231
    return-object v1

    .line 232
    :goto_3
    invoke-virtual {v0}, Lrg1;->close()V

    .line 233
    .line 234
    .line 235
    throw p0
.end method

.method public b()Lpe4;
    .locals 5

    .line 1
    iget-object v0, p0, Lkc;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lvg1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lvg1;->a()Lrg1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lgi1;->m:Lgi1;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    :try_start_0
    iget-object v1, p0, Lkc;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lkf;

    .line 17
    .line 18
    invoke-virtual {v1}, Lkf;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ltu0;

    .line 23
    .line 24
    instance-of v2, v1, Lfb1;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    new-instance p0, Lhi1;

    .line 29
    .line 30
    check-cast v1, Lfb1;

    .line 31
    .line 32
    iget-object v1, v1, Lfb1;->n:Ljava/lang/RuntimeException;

    .line 33
    .line 34
    invoke-direct {p0, v1}, Lhi1;-><init>(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lrg1;->close()V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    :try_start_1
    instance-of v2, v1, Lgb1;

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    check-cast v1, Lgb1;

    .line 50
    .line 51
    iget-object v1, v1, Lgb1;->n:Ljava/util/Set;

    .line 52
    .line 53
    iget-object p0, p0, Lkc;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Lji1;

    .line 56
    .line 57
    invoke-virtual {p0}, Lji1;->invoke()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljm1;

    .line 62
    .line 63
    instance-of v2, p0, Lxa1;

    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    new-instance v1, Lhi1;

    .line 68
    .line 69
    check-cast p0, Lxa1;

    .line 70
    .line 71
    iget-object p0, p0, Lxa1;->g:Ljava/lang/Exception;

    .line 72
    .line 73
    invoke-direct {v1, p0}, Lhi1;-><init>(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lrg1;->close()V

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_2
    :try_start_2
    instance-of v2, p0, Lya1;

    .line 81
    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    check-cast p0, Lya1;

    .line 85
    .line 86
    iget-object v2, p0, Lya1;->h:Lqf1;

    .line 87
    .line 88
    iget-object p0, p0, Lya1;->g:Ljava/util/ArrayList;

    .line 89
    .line 90
    new-instance v3, Lii1;

    .line 91
    .line 92
    invoke-static {p0, v1, v2}, Lei1;->a(Ljava/util/ArrayList;Ljava/util/Set;Lqf1;)Ljava/util/ArrayList;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-direct {v3, v4, p0, v1, v2}, Lii1;-><init>(Ljava/util/ArrayList;IILqf1;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lrg1;->close()V

    .line 108
    .line 109
    .line 110
    return-object v3

    .line 111
    :cond_3
    :try_start_3
    new-instance p0, Lmn5;

    .line 112
    .line 113
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_4
    new-instance p0, Lmn5;

    .line 118
    .line 119
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 120
    .line 121
    .line 122
    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    :goto_0
    :try_start_4
    new-instance v1, Lhi1;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Lhi1;-><init>(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lrg1;->close()V

    .line 129
    .line 130
    .line 131
    return-object v1

    .line 132
    :goto_1
    invoke-virtual {v0}, Lrg1;->close()V

    .line 133
    .line 134
    .line 135
    throw p0
.end method

.method public c()Lmu9;
    .locals 5

    .line 1
    iget-object v0, p0, Lkc;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Integer;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_f

    .line 7
    .line 8
    iget-object v2, p0, Lkc;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Ljava/lang/Integer;

    .line 11
    .line 12
    if-eqz v2, :cond_e

    .line 13
    .line 14
    iget-object v2, p0, Lkc;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Llu9;

    .line 17
    .line 18
    if-eqz v2, :cond_d

    .line 19
    .line 20
    iget-object v2, p0, Lkc;->e:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lku9;

    .line 23
    .line 24
    if-eqz v2, :cond_c

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/16 v2, 0x10

    .line 31
    .line 32
    if-lt v0, v2, :cond_b

    .line 33
    .line 34
    iget-object v0, p0, Lkc;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v3, p0, Lkc;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Llu9;

    .line 45
    .line 46
    const/16 v4, 0xa

    .line 47
    .line 48
    if-lt v2, v4, :cond_a

    .line 49
    .line 50
    sget-object v4, Llu9;->b:Llu9;

    .line 51
    .line 52
    if-ne v3, v4, :cond_1

    .line 53
    .line 54
    const/16 v1, 0x14

    .line 55
    .line 56
    if-gt v2, v1, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 60
    .line 61
    const-string v1, "Invalid tag size in bytes %d; can be at most 20 bytes for SHA1"

    .line 62
    .line 63
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_1
    sget-object v4, Llu9;->c:Llu9;

    .line 76
    .line 77
    if-ne v3, v4, :cond_3

    .line 78
    .line 79
    const/16 v1, 0x1c

    .line 80
    .line 81
    if-gt v2, v1, :cond_2

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 85
    .line 86
    const-string v1, "Invalid tag size in bytes %d; can be at most 28 bytes for SHA224"

    .line 87
    .line 88
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_3
    sget-object v4, Llu9;->d:Llu9;

    .line 101
    .line 102
    if-ne v3, v4, :cond_5

    .line 103
    .line 104
    const/16 v1, 0x20

    .line 105
    .line 106
    if-gt v2, v1, :cond_4

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 110
    .line 111
    const-string v1, "Invalid tag size in bytes %d; can be at most 32 bytes for SHA256"

    .line 112
    .line 113
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_5
    sget-object v4, Llu9;->e:Llu9;

    .line 126
    .line 127
    if-ne v3, v4, :cond_7

    .line 128
    .line 129
    const/16 v1, 0x30

    .line 130
    .line 131
    if-gt v2, v1, :cond_6

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 135
    .line 136
    const-string v1, "Invalid tag size in bytes %d; can be at most 48 bytes for SHA384"

    .line 137
    .line 138
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p0

    .line 150
    :cond_7
    sget-object v4, Llu9;->f:Llu9;

    .line 151
    .line 152
    if-ne v3, v4, :cond_9

    .line 153
    .line 154
    const/16 v1, 0x40

    .line 155
    .line 156
    if-gt v2, v1, :cond_8

    .line 157
    .line 158
    :goto_0
    new-instance v0, Lmu9;

    .line 159
    .line 160
    iget-object v1, p0, Lkc;->b:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v1, Ljava/lang/Integer;

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    iget-object v2, p0, Lkc;->c:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v2, Ljava/lang/Integer;

    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    iget-object v3, p0, Lkc;->e:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v3, Lku9;

    .line 179
    .line 180
    iget-object p0, p0, Lkc;->d:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast p0, Llu9;

    .line 183
    .line 184
    invoke-direct {v0, v1, v2, v3, p0}, Lmu9;-><init>(IILku9;Llu9;)V

    .line 185
    .line 186
    .line 187
    return-object v0

    .line 188
    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 189
    .line 190
    const-string v1, "Invalid tag size in bytes %d; can be at most 64 bytes for SHA512"

    .line 191
    .line 192
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p0

    .line 204
    :cond_9
    const-string p0, "unknown hash type; must be SHA256, SHA384 or SHA512"

    .line 205
    .line 206
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    return-object v1

    .line 210
    :cond_a
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 211
    .line 212
    const-string v1, "Invalid tag size in bytes %d; must be at least 10 bytes"

    .line 213
    .line 214
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p0

    .line 226
    :cond_b
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 227
    .line 228
    iget-object p0, p0, Lkc;->b:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast p0, Ljava/lang/Integer;

    .line 231
    .line 232
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    const-string v1, "Invalid key size in bytes %d; must be at least 16 bytes"

    .line 237
    .line 238
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-direct {v0, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw v0

    .line 246
    :cond_c
    const-string p0, "variant is not set"

    .line 247
    .line 248
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    return-object v1

    .line 252
    :cond_d
    const-string p0, "hash type is not set"

    .line 253
    .line 254
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    return-object v1

    .line 258
    :cond_e
    const-string p0, "tag size is not set"

    .line 259
    .line 260
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    return-object v1

    .line 264
    :cond_f
    const-string p0, "key size is not set"

    .line 265
    .line 266
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    return-object v1
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lkc;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    iget-object p0, p0, Lkc;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_1
    iget-object p0, p0, Lkc;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroid/widget/LinearLayout;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_2
    iget-object p0, p0, Lkc;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
