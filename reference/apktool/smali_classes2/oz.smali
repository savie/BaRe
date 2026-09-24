.class public final synthetic Loz;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic c:Lkh6;

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljo8;Lyn8;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lkh6;J)V
    .locals 0

    .line 18
    const/4 p1, 0x1

    iput p1, p0, Loz;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Loz;->e:Ljava/lang/Object;

    iput-object p3, p0, Loz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p4, p0, Loz;->f:Ljava/lang/Object;

    iput-object p5, p0, Loz;->c:Lkh6;

    iput-wide p6, p0, Loz;->d:J

    return-void
.end method

.method public synthetic constructor <init>(Lkh6;Ljava/util/concurrent/ConcurrentHashMap;La00;JLkh6;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Loz;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Loz;->c:Lkh6;

    .line 8
    .line 9
    iput-object p2, p0, Loz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    iput-object p3, p0, Loz;->f:Ljava/lang/Object;

    .line 12
    .line 13
    iput-wide p4, p0, Loz;->d:J

    .line 14
    .line 15
    iput-object p6, p0, Loz;->e:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Loz;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Loz;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lyn8;

    .line 9
    .line 10
    iget-object v2, p0, Loz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    iget-object v1, p0, Loz;->f:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v3, v1

    .line 15
    check-cast v3, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v4, p0, Loz;->c:Lkh6;

    .line 18
    .line 19
    iget-wide v5, p0, Loz;->d:J

    .line 20
    .line 21
    new-instance v1, Lio8;

    .line 22
    .line 23
    invoke-direct/range {v1 .. v6}, Lio8;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lkh6;J)V

    .line 24
    .line 25
    .line 26
    const-string p0, "WallUploadHelper"

    .line 27
    .line 28
    iget-wide v2, v0, Lyn8;->c:J

    .line 29
    .line 30
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sget-object v3, Lp93;->a:Lp93;

    .line 35
    .line 36
    invoke-static {v2}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v4, "Wall size = "

    .line 43
    .line 44
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object v4, v0, Lyn8;->a:Lq63;

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance v3, Lrf8;

    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v8, 0x0

    .line 66
    const/16 v5, 0x16

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    invoke-direct/range {v3 .. v8}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    sget-object p0, Ltb1;->a:Ltb1;

    .line 73
    .line 74
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0, v3}, Ltb1;->d(Lrf8;)Lag8;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-instance v2, Le7;

    .line 83
    .line 84
    const/16 v3, 0x1b

    .line 85
    .line 86
    invoke-direct {v2, v1, v3}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iput-object v2, p0, Lag8;->g:Lmt3;

    .line 93
    .line 94
    invoke-virtual {p0}, Lag8;->c()Lzf8;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    iget-wide v2, v0, Lyn8;->c:J

    .line 99
    .line 100
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v1, v0}, Lio8;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lzf8;->a()Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :pswitch_0
    iget-object v0, p0, Loz;->c:Lkh6;

    .line 117
    .line 118
    iget-object v1, p0, Loz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    .line 120
    iget-object v2, p0, Loz;->f:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v2, La00;

    .line 123
    .line 124
    iget-wide v3, p0, Loz;->d:J

    .line 125
    .line 126
    iget-object p0, p0, Loz;->e:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p0, Lkh6;

    .line 129
    .line 130
    sget-object v5, Lbe8;->a:Lbe8;

    .line 131
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v6

    .line 136
    iget-wide v8, v0, Lkh6;->a:J

    .line 137
    .line 138
    sub-long/2addr v6, v8

    .line 139
    const-wide/16 v8, 0x7d0

    .line 140
    .line 141
    cmp-long v8, v6, v8

    .line 142
    .line 143
    if-gtz v8, :cond_0

    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-static {v1}, Lel1;->o1(Ljava/util/Collection;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v8

    .line 158
    invoke-static {v8, v9, v3, v4}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    iget-boolean v10, v2, La00;->k:Z

    .line 163
    .line 164
    if-nez v10, :cond_1

    .line 165
    .line 166
    if-ltz v1, :cond_1

    .line 167
    .line 168
    const/16 v10, 0x65

    .line 169
    .line 170
    if-ge v1, v10, :cond_1

    .line 171
    .line 172
    iget-object v10, v2, La00;->n:Lyk;

    .line 173
    .line 174
    if-eqz v10, :cond_1

    .line 175
    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v10, v1}, Lyk;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    :cond_1
    iget-boolean v1, v2, La00;->k:Z

    .line 184
    .line 185
    if-nez v1, :cond_2

    .line 186
    .line 187
    const-wide/16 v10, 0x0

    .line 188
    .line 189
    cmp-long v1, v8, v10

    .line 190
    .line 191
    if-ltz v1, :cond_2

    .line 192
    .line 193
    iget-object v1, v2, La00;->b:Lc40;

    .line 194
    .line 195
    sget-object v10, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 196
    .line 197
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    sget-object v11, Lp93;->a:Lp93;

    .line 202
    .line 203
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    invoke-static {v11}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-static {v3}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    filled-new-array {v11, v3}, [Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    const v4, 0x7f13058c

    .line 224
    .line 225
    .line 226
    invoke-virtual {v10, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v1, v3}, Lpw6;->o(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_2
    iget-wide v3, p0, Lkh6;->a:J

    .line 234
    .line 235
    sub-long v3, v8, v3

    .line 236
    .line 237
    long-to-float v1, v6

    .line 238
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 239
    .line 240
    div-float/2addr v1, v6

    .line 241
    long-to-float v3, v3

    .line 242
    div-float/2addr v3, v1

    .line 243
    invoke-static {v3}, Ltu0;->v(F)I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    sget-object v3, Lp93;->a:Lp93;

    .line 248
    .line 249
    int-to-long v3, v1

    .line 250
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    iget-object v1, v2, La00;->b:Lc40;

    .line 258
    .line 259
    monitor-enter v1

    .line 260
    monitor-exit v1

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 262
    .line 263
    .line 264
    move-result-wide v1

    .line 265
    iput-wide v1, v0, Lkh6;->a:J

    .line 266
    .line 267
    iput-wide v8, p0, Lkh6;->a:J

    .line 268
    .line 269
    :goto_0
    return-object v5

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
