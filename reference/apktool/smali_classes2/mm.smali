.class public final synthetic Lmm;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lmm;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lmm;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lmm;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lmm;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lmm;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lkh6;

    .line 10
    .line 11
    iget-object p0, p0, Lmm;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lmt3;

    .line 14
    .line 15
    check-cast p1, Ljava/lang/Long;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iget-wide v3, v0, Lkh6;->a:J

    .line 22
    .line 23
    add-long/2addr v3, v1

    .line 24
    iput-wide v3, v0, Lkh6;->a:J

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_0
    iget-object v0, p0, Lmm;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 41
    .line 42
    iget-object p0, p0, Lmm;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Landroid/os/Bundle;

    .line 45
    .line 46
    check-cast p1, Lfm7;

    .line 47
    .line 48
    sget v2, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->R:I

    .line 49
    .line 50
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->P:Lgv7;

    .line 51
    .line 52
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 57
    .line 58
    iget-object v3, p1, Lfm7;->a:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    xor-int/2addr v3, v1

    .line 65
    invoke-static {v2, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 66
    .line 67
    .line 68
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->N:Lgv7;

    .line 69
    .line 70
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Lcom/l4digital/fastscroll/FastScroller;

    .line 75
    .line 76
    iget-object v3, p1, Lfm7;->a:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    xor-int/2addr v3, v1

    .line 83
    invoke-virtual {v2, v3}, Lcom/l4digital/fastscroll/FastScroller;->setEnabled(Z)V

    .line 84
    .line 85
    .line 86
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->O:Lgv7;

    .line 87
    .line 88
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Lbs6;

    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    invoke-virtual {v3, p1, v4}, Lgm7;->w(Lfm7;Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lbs6;

    .line 103
    .line 104
    invoke-virtual {p1}, Lgm7;->b()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p0, :cond_1

    .line 109
    .line 110
    if-lez p1, :cond_1

    .line 111
    .line 112
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->N()Landroidx/recyclerview/widget/RecyclerView;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    sub-int/2addr p1, v1

    .line 117
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 118
    .line 119
    .line 120
    :cond_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 121
    .line 122
    return-object p0

    .line 123
    :pswitch_1
    iget-object v0, p0, Lmm;->b:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v0, Lqj2;

    .line 126
    .line 127
    iget-object p0, p0, Lmm;->c:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p0, Lzj2;

    .line 130
    .line 131
    move-object v2, p1

    .line 132
    check-cast v2, Landroid/view/View;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lqj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 138
    .line 139
    sget-object v3, Liu;->DATA:Liu;

    .line 140
    .line 141
    iget-object p1, p0, Lzj2;->a:Liz4;

    .line 142
    .line 143
    invoke-virtual {p1}, Liz4;->getBackup()Lgm;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iget-object v4, p1, Lgm;->a:Lhk;

    .line 148
    .line 149
    iget-boolean p1, p0, Lzj2;->f:Z

    .line 150
    .line 151
    iget-object p0, p0, Lzj2;->g:Ljava/lang/String;

    .line 152
    .line 153
    if-eqz p1, :cond_2

    .line 154
    .line 155
    :goto_0
    move-object v6, p0

    .line 156
    goto :goto_1

    .line 157
    :cond_2
    const/4 p0, 0x0

    .line 158
    goto :goto_0

    .line 159
    :goto_1
    const/4 v5, 0x0

    .line 160
    invoke-virtual/range {v1 .. v6}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->c0(Landroid/view/View;Liu;Lhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sget-object p0, Lbe8;->a:Lbe8;

    .line 164
    .line 165
    return-object p0

    .line 166
    :pswitch_2
    iget-object v0, p0, Lmm;->b:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v0, Ln92;

    .line 169
    .line 170
    iget-object p0, p0, Lmm;->c:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p0, Lkh6;

    .line 173
    .line 174
    check-cast p1, Ljava/lang/Long;

    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 177
    .line 178
    .line 179
    move-result-wide v1

    .line 180
    sget-object v3, Lbe8;->a:Lbe8;

    .line 181
    .line 182
    iget-object v4, v0, Lag8;->c:Lgz7;

    .line 183
    .line 184
    invoke-virtual {v4}, Lgz7;->isRunning()Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-eqz v4, :cond_4

    .line 189
    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 191
    .line 192
    .line 193
    move-result-wide v4

    .line 194
    iget-object v6, v0, Lag8;->a:Lrf8;

    .line 195
    .line 196
    invoke-virtual {v6}, Lrf8;->a()J

    .line 197
    .line 198
    .line 199
    move-result-wide v6

    .line 200
    cmp-long v1, v1, v6

    .line 201
    .line 202
    if-gez v1, :cond_3

    .line 203
    .line 204
    iget-wide v1, v0, Ln92;->j:J

    .line 205
    .line 206
    const-wide/16 v6, 0x0

    .line 207
    .line 208
    cmp-long v8, v1, v6

    .line 209
    .line 210
    if-lez v8, :cond_3

    .line 211
    .line 212
    iget-wide v8, p0, Lkh6;->a:J

    .line 213
    .line 214
    cmp-long v6, v8, v6

    .line 215
    .line 216
    if-eqz v6, :cond_3

    .line 217
    .line 218
    sub-long v6, v4, v8

    .line 219
    .line 220
    cmp-long v1, v6, v1

    .line 221
    .line 222
    if-ltz v1, :cond_4

    .line 223
    .line 224
    :cond_3
    iput-wide v4, p0, Lkh6;->a:J

    .line 225
    .line 226
    invoke-static {v0, p1}, Lag8;->g(Lag8;Ljava/lang/Long;)V

    .line 227
    .line 228
    .line 229
    :cond_4
    return-object v3

    .line 230
    :pswitch_3
    iget-object v0, p0, Lmm;->b:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v0, Lc40;

    .line 233
    .line 234
    iget-object p0, p0, Lmm;->c:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast p0, Lfz;

    .line 237
    .line 238
    check-cast p1, Lji;

    .line 239
    .line 240
    sget-object v2, Lbe8;->a:Lbe8;

    .line 241
    .line 242
    invoke-virtual {v0}, Lpw6;->g()Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_5

    .line 247
    .line 248
    sget-object v0, Lhy7;->a:Lhy7;

    .line 249
    .line 250
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 251
    .line 252
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 253
    .line 254
    invoke-virtual {v0}, Lgz7;->isComplete()Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_5

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_5
    iget-object v0, p0, Lfz;->f:Landroid/widget/TextView;

    .line 262
    .line 263
    invoke-virtual {p1}, Lji;->getName()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    .line 269
    .line 270
    sget-object v0, Lj94;->a:Ljava/util/Set;

    .line 271
    .line 272
    new-instance v0, Lsx3;

    .line 273
    .line 274
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {p1}, Lji;->isInstalled()Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    invoke-direct {v0, v3, v4}, Lsx3;-><init>(Ljava/lang/String;Z)V

    .line 283
    .line 284
    .line 285
    iget-object p0, p0, Lfz;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 286
    .line 287
    invoke-virtual {p1}, Lji;->isInstalled()Z

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    xor-int/2addr p1, v1

    .line 292
    invoke-static {v0, p0, p1, v1}, Lj94;->g(Lsx3;Landroid/widget/ImageView;ZZ)V

    .line 293
    .line 294
    .line 295
    :goto_2
    return-object v2

    .line 296
    :pswitch_4
    iget-object v0, p0, Lmm;->b:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v0, Lom;

    .line 299
    .line 300
    iget-object p0, p0, Lmm;->c:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast p0, Lpm;

    .line 303
    .line 304
    check-cast p1, Lfw6;

    .line 305
    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    iget-object v0, v0, Lom;->b:Lnm;

    .line 310
    .line 311
    invoke-virtual {v0, p1, p0}, Lhx2;->insert(Lfw6;Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    sget-object p0, Lbe8;->a:Lbe8;

    .line 315
    .line 316
    return-object p0

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
