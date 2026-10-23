.class public final synthetic Ldz;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ldz;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ldz;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ldz;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Ldz;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Ldz;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "/s"

    .line 5
    .line 6
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 7
    .line 8
    sget-object v4, Lbe8;->a:Lbe8;

    .line 9
    .line 10
    iget-object v5, p0, Ldz;->d:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v6, p0, Ldz;->c:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object p0, p0, Ldz;->b:Ljava/lang/Object;

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast p0, Lqq5;

    .line 20
    .line 21
    check-cast v6, Lkh6;

    .line 22
    .line 23
    check-cast v5, Lkh6;

    .line 24
    .line 25
    check-cast p1, Ljava/lang/Long;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iget-object v7, p0, Lno2;->d:Lgz7;

    .line 32
    .line 33
    invoke-virtual {v7}, Lgz7;->isRunning()Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_0

    .line 38
    .line 39
    invoke-static {p0, p1}, Lno2;->h(Lno2;Ljava/lang/Long;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide p0

    .line 46
    iget-wide v7, v6, Lkh6;->a:J

    .line 47
    .line 48
    sub-long/2addr p0, v7

    .line 49
    long-to-float p0, p0

    .line 50
    div-float/2addr p0, v3

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v7

    .line 55
    iput-wide v7, v6, Lkh6;->a:J

    .line 56
    .line 57
    iget-wide v6, v5, Lkh6;->a:J

    .line 58
    .line 59
    sub-long v6, v0, v6

    .line 60
    .line 61
    iput-wide v0, v5, Lkh6;->a:J

    .line 62
    .line 63
    long-to-float p1, v6

    .line 64
    div-float/2addr p1, p0

    .line 65
    float-to-int p0, p1

    .line 66
    if-lez p0, :cond_0

    .line 67
    .line 68
    sget-object p1, Lp93;->a:Lp93;

    .line 69
    .line 70
    int-to-long p0, p0

    .line 71
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    :cond_0
    return-object v4

    .line 83
    :pswitch_0
    check-cast p0, Lkh6;

    .line 84
    .line 85
    check-cast v6, Lz95;

    .line 86
    .line 87
    check-cast v5, Llh6;

    .line 88
    .line 89
    check-cast p1, Lib5;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget-wide v2, p0, Lkh6;->a:J

    .line 95
    .line 96
    iget v0, p1, Lib5;->a:I

    .line 97
    .line 98
    int-to-long v7, v0

    .line 99
    add-long/2addr v2, v7

    .line 100
    iput-wide v2, p0, Lkh6;->a:J

    .line 101
    .line 102
    invoke-virtual {v6, v2, v3}, Lz95;->a(J)V

    .line 103
    .line 104
    .line 105
    iget-object p0, p1, Lib5;->b:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_1

    .line 112
    .line 113
    iput-object p0, v5, Llh6;->a:Ljava/lang/Object;

    .line 114
    .line 115
    :cond_1
    iget-object p0, v5, Llh6;->a:Ljava/lang/Object;

    .line 116
    .line 117
    if-eqz p0, :cond_2

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    const/4 v1, 0x0

    .line 121
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :pswitch_1
    check-cast p0, La62;

    .line 127
    .line 128
    check-cast v6, Lkh6;

    .line 129
    .line 130
    check-cast v5, Lkh6;

    .line 131
    .line 132
    check-cast p1, Ljava/lang/Long;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    iget-object v7, p0, Lno2;->d:Lgz7;

    .line 139
    .line 140
    invoke-virtual {v7}, Lgz7;->isRunning()Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_3

    .line 145
    .line 146
    invoke-static {p0, p1}, Lno2;->h(Lno2;Ljava/lang/Long;)V

    .line 147
    .line 148
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 150
    .line 151
    .line 152
    move-result-wide p0

    .line 153
    iget-wide v7, v6, Lkh6;->a:J

    .line 154
    .line 155
    sub-long/2addr p0, v7

    .line 156
    long-to-float p0, p0

    .line 157
    div-float/2addr p0, v3

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 159
    .line 160
    .line 161
    move-result-wide v7

    .line 162
    iput-wide v7, v6, Lkh6;->a:J

    .line 163
    .line 164
    iget-wide v6, v5, Lkh6;->a:J

    .line 165
    .line 166
    sub-long v6, v0, v6

    .line 167
    .line 168
    iput-wide v0, v5, Lkh6;->a:J

    .line 169
    .line 170
    long-to-float p1, v6

    .line 171
    div-float/2addr p1, p0

    .line 172
    float-to-int p0, p1

    .line 173
    if-lez p0, :cond_3

    .line 174
    .line 175
    sget-object p1, Lp93;->a:Lp93;

    .line 176
    .line 177
    int-to-long p0, p0

    .line 178
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    :cond_3
    return-object v4

    .line 190
    :pswitch_2
    check-cast p0, Lfz;

    .line 191
    .line 192
    check-cast v6, Lc40;

    .line 193
    .line 194
    check-cast v5, Ldy7;

    .line 195
    .line 196
    check-cast p1, Lgz7;

    .line 197
    .line 198
    iget-object v0, p0, Lfz;->a:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 199
    .line 200
    iget-boolean v2, v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->L:Z

    .line 201
    .line 202
    if-eqz v2, :cond_4

    .line 203
    .line 204
    sget-object p1, Lgz7;->COMPLETE:Lgz7;

    .line 205
    .line 206
    :cond_4
    if-nez p1, :cond_5

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_5
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eqz v2, :cond_6

    .line 214
    .line 215
    const/4 v2, 0x0

    .line 216
    invoke-virtual {v6, v2}, Lpw6;->o(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_6
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    if-eqz v2, :cond_7

    .line 224
    .line 225
    invoke-virtual {v6}, Lpw6;->g()Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-eqz v2, :cond_7

    .line 230
    .line 231
    iget-object v2, p0, Lfz;->f:Landroid/widget/TextView;

    .line 232
    .line 233
    iget-object v3, v6, Lc40;->m:Ljava/util/List;

    .line 234
    .line 235
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    const v6, 0x7f1305b9

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lfz;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 258
    .line 259
    const v2, 0x7f0800c1

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 263
    .line 264
    .line 265
    :cond_7
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    xor-int/2addr v0, v1

    .line 270
    invoke-virtual {v5, v0}, Ldy7;->c(Z)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-eqz p1, :cond_8

    .line 278
    .line 279
    iget-object p1, p0, Lfz;->h:Lkm5;

    .line 280
    .line 281
    invoke-virtual {p1}, Lkm5;->w()V

    .line 282
    .line 283
    .line 284
    iget-object p1, p0, Lfz;->i:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 285
    .line 286
    invoke-static {p1}, Lsz8;->X(Landroid/view/View;)V

    .line 287
    .line 288
    .line 289
    iget-object p0, p0, Lfz;->j:Landroid/widget/TextView;

    .line 290
    .line 291
    invoke-static {p0}, Lsz8;->X(Landroid/view/View;)V

    .line 292
    .line 293
    .line 294
    :cond_8
    :goto_1
    return-object v4

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
