.class public final Lyc2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lqn5;

.field public final synthetic b:Lqw5;

.field public final synthetic c:Lzc2;


# direct methods
.method public constructor <init>(Lzc2;Lqn5;Lqw5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyc2;->c:Lzc2;

    .line 5
    .line 6
    iput-object p2, p0, Lyc2;->a:Lqn5;

    .line 7
    .line 8
    iput-object p3, p0, Lyc2;->b:Lqw5;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lyc2;->c:Lzc2;

    .line 4
    .line 5
    iget-object v3, v1, Lzc2;->a:Lwj6;

    .line 6
    .line 7
    iget-object v4, v1, Lzc2;->b:Lgy5;

    .line 8
    .line 9
    iget-object v1, v0, Lyc2;->b:Lqw5;

    .line 10
    .line 11
    iget-object v1, v1, Lqw5;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lci8;

    .line 14
    .line 15
    iget-object v2, v3, Lwj6;->k:Lu00;

    .line 16
    .line 17
    iget-object v12, v3, Lwj6;->i:Lu00;

    .line 18
    .line 19
    invoke-virtual {v12}, Lu00;->e()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const/4 v13, 0x0

    .line 24
    const/4 v14, 0x0

    .line 25
    const-string v6, "set: "

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    new-array v7, v14, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {v12, v5, v13, v7}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v2}, Lu00;->e()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    iget-object v0, v0, Lyc2;->a:Lqn5;

    .line 51
    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v6, " "

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    new-array v6, v14, [Ljava/lang/Object;

    .line 75
    .line 76
    invoke-virtual {v2, v5, v13, v6}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object v2, v3, Lwj6;->b:Lis5;

    .line 80
    .line 81
    invoke-static {v2}, Lms8;->v(Laa1;)Ljava/util/HashMap;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget-object v5, v3, Lwj6;->n:Lbv7;

    .line 86
    .line 87
    new-instance v6, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v4, v6}, Lbv7;->i(Lgy5;Ljava/util/ArrayList;)Lqn5;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    new-instance v6, Lej8;

    .line 97
    .line 98
    invoke-direct {v6, v5}, Lej8;-><init>(Lqn5;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v6, v2}, Lms8;->L(Lqn5;Lji8;Ljava/util/HashMap;)Lqn5;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    iget-wide v5, v3, Lwj6;->l:J

    .line 106
    .line 107
    const-wide/16 v8, 0x1

    .line 108
    .line 109
    add-long/2addr v8, v5

    .line 110
    iput-wide v8, v3, Lwj6;->l:J

    .line 111
    .line 112
    move-wide v8, v5

    .line 113
    move-object v5, v4

    .line 114
    iget-object v4, v3, Lwj6;->n:Lbv7;

    .line 115
    .line 116
    const/4 v10, 0x1

    .line 117
    const/4 v11, 0x1

    .line 118
    move-object v6, v0

    .line 119
    invoke-virtual/range {v4 .. v11}, Lbv7;->h(Lgy5;Lqn5;Lqn5;JZZ)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v3, v0}, Lwj6;->j(Ljava/util/List;)V

    .line 124
    .line 125
    .line 126
    iget-object v15, v3, Lwj6;->c:Lwz5;

    .line 127
    .line 128
    invoke-virtual {v5}, Lgy5;->c()Ljava/util/ArrayList;

    .line 129
    .line 130
    .line 131
    move-result-object v17

    .line 132
    const/4 v0, 0x1

    .line 133
    invoke-interface {v6, v0}, Lqn5;->g0(Z)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v18

    .line 137
    new-instance v2, Lsj6;

    .line 138
    .line 139
    move-object v7, v1

    .line 140
    move-object v4, v5

    .line 141
    move-wide v5, v8

    .line 142
    invoke-direct/range {v2 .. v7}, Lsj6;-><init>(Lwj6;Lgy5;JLci8;)V

    .line 143
    .line 144
    .line 145
    move-object v5, v4

    .line 146
    const-string v16, "p"

    .line 147
    .line 148
    const/16 v19, 0x0

    .line 149
    .line 150
    move-object/from16 v20, v2

    .line 151
    .line 152
    invoke-virtual/range {v15 .. v20}, Lwz5;->e(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/String;Lcl6;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v5}, Lwj6;->g(Lgy5;)Lgd;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lgd;->g()Lgy5;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iget-object v2, v3, Lwj6;->j:Lu00;

    .line 164
    .line 165
    invoke-virtual {v2}, Lu00;->e()Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_2

    .line 170
    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v4, "Aborting transactions for path: "

    .line 174
    .line 175
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v4, ". Affected: "

    .line 182
    .line 183
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    new-array v4, v14, [Ljava/lang/Object;

    .line 194
    .line 195
    invoke-virtual {v12, v2, v13, v4}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_2
    iget-object v2, v3, Lwj6;->f:Lgd;

    .line 199
    .line 200
    invoke-virtual {v2, v5}, Lgd;->n(Lgy5;)Lgd;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    iget-object v4, v2, Lgd;->c:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v4, Lgd;

    .line 207
    .line 208
    :goto_0
    if-eqz v4, :cond_3

    .line 209
    .line 210
    invoke-virtual {v3, v4}, Lwj6;->a(Lgd;)V

    .line 211
    .line 212
    .line 213
    iget-object v4, v4, Lgd;->c:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v4, Lgd;

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {v3, v2}, Lwj6;->a(Lgd;)V

    .line 219
    .line 220
    .line 221
    new-instance v4, Lty3;

    .line 222
    .line 223
    invoke-direct {v4, v3}, Lty3;-><init>(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    iget-object v5, v2, Lgd;->d:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v5, Leb8;

    .line 229
    .line 230
    iget-object v5, v5, Leb8;->a:Ljava/util/HashMap;

    .line 231
    .line 232
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    :goto_1
    array-length v6, v5

    .line 241
    if-ge v14, v6, :cond_4

    .line 242
    .line 243
    aget-object v6, v5, v14

    .line 244
    .line 245
    check-cast v6, Ljava/util/Map$Entry;

    .line 246
    .line 247
    new-instance v7, Lgd;

    .line 248
    .line 249
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    check-cast v8, Lm61;

    .line 254
    .line 255
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    check-cast v6, Leb8;

    .line 260
    .line 261
    const/4 v9, 0x7

    .line 262
    invoke-direct {v7, v9, v8, v2, v6}, Lgd;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v7, v4, v0}, Lgd;->f(Lty3;Z)V

    .line 266
    .line 267
    .line 268
    add-int/lit8 v14, v14, 0x1

    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_4
    invoke-virtual {v3, v1}, Lwj6;->m(Lgy5;)Lgy5;

    .line 272
    .line 273
    .line 274
    return-void
.end method
