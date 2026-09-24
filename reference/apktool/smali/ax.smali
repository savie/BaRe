.class public final Lax;
.super Lgx;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lq63;

.field public final b:Li40;

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final h:J

.field public final i:J


# direct methods
.method public constructor <init>(Lq63;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lax;->a:Lq63;

    .line 8
    .line 9
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/compress/Packer;->c(Lq63;)Li40;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lax;->b:Li40;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object v2, p1, Li40;->b:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/String;

    .line 46
    .line 47
    const/16 v4, 0x2e

    .line 48
    .line 49
    invoke-static {v3, v4}, Lnq7;->B0(Ljava/lang/String;C)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v4, "compressed"

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    move v2, v0

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    move v2, v1

    .line 64
    :goto_1
    iput-boolean v2, p0, Lax;->c:Z

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    iget v2, p1, Li40;->a:I

    .line 69
    .line 70
    const/4 v3, 0x6

    .line 71
    if-ne v2, v3, :cond_3

    .line 72
    .line 73
    move v2, v0

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    move v2, v1

    .line 76
    :goto_2
    iput-boolean v2, p0, Lax;->d:Z

    .line 77
    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    iget-object p1, p1, Li40;->b:Ljava/util/ArrayList;

    .line 81
    .line 82
    if-eqz p1, :cond_6

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_6

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljava/lang/String;

    .line 106
    .line 107
    const-string v3, "_user_de"

    .line 108
    .line 109
    invoke-static {v2, v3, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_7

    .line 114
    .line 115
    new-array v3, v0, [C

    .line 116
    .line 117
    const/16 v4, 0x2f

    .line 118
    .line 119
    aput-char v4, v3, v1

    .line 120
    .line 121
    invoke-static {v2, v3}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const-string v3, "data_de"

    .line 126
    .line 127
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_5

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_6
    :goto_3
    move v0, v1

    .line 135
    :cond_7
    :goto_4
    iget-object p1, p0, Lax;->a:Lq63;

    .line 136
    .line 137
    iget-boolean v1, p0, Lax;->d:Z

    .line 138
    .line 139
    invoke-static {p1, v1}, Lvm4;->b(Lq63;Z)Ljava/util/Map;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iput-object p1, p0, Lax;->e:Ljava/util/Map;

    .line 144
    .line 145
    iget-boolean p1, p0, Lax;->d:Z

    .line 146
    .line 147
    const/4 v1, 0x0

    .line 148
    if-eqz p1, :cond_9

    .line 149
    .line 150
    sget-object p1, Lex;->UNTAR_DATA:Lex;

    .line 151
    .line 152
    sget-object v2, Lex;->UNTAR_DEDATA:Lex;

    .line 153
    .line 154
    if-eqz v0, :cond_8

    .line 155
    .line 156
    move-object v1, v2

    .line 157
    :cond_8
    filled-new-array {p1, v1}, [Lex;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p1}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    goto :goto_6

    .line 166
    :cond_9
    sget-object p1, Lex;->UNPACK:Lex;

    .line 167
    .line 168
    sget-object v2, Lex;->DECOMPRESS:Lex;

    .line 169
    .line 170
    iget-boolean v3, p0, Lax;->c:Z

    .line 171
    .line 172
    if-eqz v3, :cond_a

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_a
    move-object v2, v1

    .line 176
    :goto_5
    sget-object v3, Lex;->UNTAR_DATA:Lex;

    .line 177
    .line 178
    sget-object v4, Lex;->UNTAR_DEDATA:Lex;

    .line 179
    .line 180
    if-eqz v0, :cond_b

    .line 181
    .line 182
    move-object v1, v4

    .line 183
    :cond_b
    filled-new-array {p1, v2, v3, v1}, [Lex;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {p1}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    :goto_6
    iput-object p1, p0, Lax;->f:Ljava/util/List;

    .line 192
    .line 193
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 194
    .line 195
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    iput-object v0, p0, Lax;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 199
    .line 200
    iget-object v0, p0, Lax;->a:Lq63;

    .line 201
    .line 202
    invoke-virtual {v0}, Lq63;->A()J

    .line 203
    .line 204
    .line 205
    move-result-wide v0

    .line 206
    iput-wide v0, p0, Lax;->h:J

    .line 207
    .line 208
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const-wide/16 v0, 0x0

    .line 213
    .line 214
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_c

    .line 219
    .line 220
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Lex;

    .line 225
    .line 226
    invoke-virtual {p0, v2}, Lax;->c(Lex;)J

    .line 227
    .line 228
    .line 229
    move-result-wide v2

    .line 230
    add-long/2addr v0, v2

    .line 231
    goto :goto_7

    .line 232
    :cond_c
    iput-wide v0, p0, Lax;->i:J

    .line 233
    .line 234
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lax;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()J
    .locals 5

    .line 1
    iget-object v0, p0, Lax;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lex;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v3}, Lax;->c(Lex;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    add-long/2addr v1, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-wide v1
.end method

.method public final c(Lex;)J
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lax;->d:Z

    .line 5
    .line 6
    iget-wide v1, p0, Lax;->h:J

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    sget-object v0, Lzw;->a:[I

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    aget v0, v0, v3

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eq v0, v3, :cond_1

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-eq v0, v3, :cond_0

    .line 24
    .line 25
    move-object v0, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "data_de"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string v0, "data"

    .line 31
    .line 32
    :goto_0
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v3, p0, Lax;->e:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v4, v0

    .line 41
    check-cast v4, Ljava/lang/Long;

    .line 42
    .line 43
    :cond_2
    if-eqz v4, :cond_3

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    const-wide/16 v7, 0x0

    .line 50
    .line 51
    cmp-long v0, v5, v7

    .line 52
    .line 53
    if-lez v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide p0

    .line 59
    return-wide p0

    .line 60
    :cond_3
    iget-object p0, p0, Lax;->f:Ljava/util/List;

    .line 61
    .line 62
    invoke-static {p0, p1, v1, v2}, Lvm4;->a(Ljava/util/List;Lex;J)J

    .line 63
    .line 64
    .line 65
    move-result-wide p0

    .line 66
    return-wide p0

    .line 67
    :cond_4
    long-to-float p0, v1

    .line 68
    invoke-virtual {p1}, Lex;->getTaskProgressRatio()F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    mul-float/2addr p1, p0

    .line 73
    float-to-double p0, p1

    .line 74
    invoke-static {p0, p1}, Ltu0;->w(D)J

    .line 75
    .line 76
    .line 77
    move-result-wide p0

    .line 78
    return-wide p0
.end method

.method public final d(Lex;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lax;->f:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lax;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
