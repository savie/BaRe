.class public final Lte2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lte2;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lte2;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lte2;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Ldq0;Ljava/lang/Object;I)V
    .locals 0

    .line 11
    iput p3, p0, Lte2;->a:I

    iput-object p1, p0, Lte2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lte2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lte2;->a:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/16 v2, 0x18

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lte2;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ldq0;

    .line 12
    .line 13
    iget-object p0, p0, Lte2;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lw76;

    .line 16
    .line 17
    sget-object v1, Lle9;->k:Lyq0;

    .line 18
    .line 19
    const/4 v3, 0x7

    .line 20
    invoke-virtual {v0, v2, v3, v1}, Ldq0;->y(IILyq0;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lib;

    .line 24
    .line 25
    sget-object v2, Lma9;->b:Lga9;

    .line 26
    .line 27
    sget-object v2, Lmb9;->e:Lmb9;

    .line 28
    .line 29
    const/16 v3, 0xa

    .line 30
    .line 31
    invoke-direct {v0, v3, v2, v2}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v1, v0}, Lw76;->a(Lyq0;Lib;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Lte2;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Ldq0;

    .line 41
    .line 42
    iget-object p0, p0, Lte2;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Lkq0;

    .line 45
    .line 46
    sget-object v3, Lle9;->k:Lyq0;

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1, v3}, Ldq0;->y(IILyq0;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v3}, Lkq0;->a(Lyq0;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_1
    iget-object v0, p0, Lte2;->c:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lwj6;

    .line 58
    .line 59
    new-instance v1, Lbj8;

    .line 60
    .line 61
    iget-object p0, p0, Lte2;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p0, Lvj6;

    .line 64
    .line 65
    iget-object v2, p0, Lvj6;->c:Lhx0;

    .line 66
    .line 67
    iget-object p0, p0, Lvj6;->a:Lgy5;

    .line 68
    .line 69
    invoke-static {p0}, Lqc6;->a(Lgy5;)Lqc6;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-direct {v1, v0, v2, p0}, Lbj8;-><init>(Lwj6;Laj8;Lqc6;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lwj6;->l(Lez2;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_2
    iget-object v0, p0, Lte2;->c:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lzc2;

    .line 83
    .line 84
    iget-object v0, v0, Lzc2;->a:Lwj6;

    .line 85
    .line 86
    iget-object p0, p0, Lte2;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Lez2;

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Lwj6;->l(Lez2;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_3
    iget-object v0, p0, Lte2;->c:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, La70;

    .line 97
    .line 98
    iget-object p0, p0, Lte2;->b:Ljava/lang/Object;

    .line 99
    .line 100
    iget-object v2, v0, La70;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    iget-object v3, v0, La70;->e:Ly29;

    .line 107
    .line 108
    const/4 v4, 0x0

    .line 109
    if-eqz v2, :cond_0

    .line 110
    .line 111
    iget-object p0, v3, Ly29;->h:La70;

    .line 112
    .line 113
    if-ne p0, v0, :cond_4

    .line 114
    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 116
    .line 117
    .line 118
    iput-object v4, v3, Ly29;->h:La70;

    .line 119
    .line 120
    invoke-virtual {v3}, Ly29;->b()V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_0
    iget-object v2, v3, Ly29;->g:La70;

    .line 125
    .line 126
    if-eq v2, v0, :cond_1

    .line 127
    .line 128
    iget-object p0, v3, Ly29;->h:La70;

    .line 129
    .line 130
    if-ne p0, v0, :cond_4

    .line 131
    .line 132
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 133
    .line 134
    .line 135
    iput-object v4, v3, Ly29;->h:La70;

    .line 136
    .line 137
    invoke-virtual {v3}, Ly29;->b()V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_1
    iget-boolean v2, v3, Ly29;->c:Z

    .line 142
    .line 143
    if-eqz v2, :cond_2

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 147
    .line 148
    .line 149
    iput-object v4, v3, Ly29;->g:La70;

    .line 150
    .line 151
    iget-object v2, v3, Ly29;->a:Ldz4;

    .line 152
    .line 153
    if-eqz v2, :cond_4

    .line 154
    .line 155
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    if-ne v3, v4, :cond_3

    .line 164
    .line 165
    invoke-virtual {v2, p0}, Lzy4;->k(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {v2, p0}, Lzy4;->i(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_4
    :goto_0
    iput v1, v0, La70;->b:I

    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_4
    iget-object v0, p0, Lte2;->c:Ljava/lang/Object;

    .line 176
    .line 177
    move-object v2, v0

    .line 178
    check-cast v2, Lcf2;

    .line 179
    .line 180
    iget-object p0, p0, Lte2;->b:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast p0, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_7

    .line 193
    .line 194
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Lbf2;

    .line 199
    .line 200
    iget-object v3, v1, Lbf2;->a:Lfh6;

    .line 201
    .line 202
    iget v4, v1, Lbf2;->b:I

    .line 203
    .line 204
    iget v5, v1, Lbf2;->c:I

    .line 205
    .line 206
    iget v6, v1, Lbf2;->d:I

    .line 207
    .line 208
    iget v1, v1, Lbf2;->e:I

    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    move v7, v5

    .line 214
    iget-object v5, v3, Lfh6;->a:Landroid/view/View;

    .line 215
    .line 216
    sub-int v4, v6, v4

    .line 217
    .line 218
    sub-int v6, v1, v7

    .line 219
    .line 220
    const/4 v1, 0x0

    .line 221
    if-eqz v4, :cond_5

    .line 222
    .line 223
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    invoke-virtual {v7, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 228
    .line 229
    .line 230
    :cond_5
    if-eqz v6, :cond_6

    .line 231
    .line 232
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-virtual {v7, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 237
    .line 238
    .line 239
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    iget-object v1, v2, Lcf2;->p:Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    iget-wide v8, v2, Lng6;->e:J

    .line 249
    .line 250
    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    new-instance v1, Lxe2;

    .line 255
    .line 256
    invoke-direct/range {v1 .. v7}, Lxe2;-><init>(Lcf2;Lfh6;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v8, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 264
    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 268
    .line 269
    .line 270
    iget-object v0, v2, Lcf2;->m:Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    nop

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
