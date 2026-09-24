.class public final Lue2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 13
    iput p1, p0, Lue2;->a:I

    iput-object p2, p0, Lue2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lue2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 12
    iput p3, p0, Lue2;->a:I

    iput-object p1, p0, Lue2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lue2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lvj6;Lwc2;Leb2;)V
    .locals 0

    .line 1
    const/4 p3, 0x3

    .line 2
    iput p3, p0, Lue2;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lue2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lue2;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lue2;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lue2;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Lue2;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lcom/google/firebase/auth/FirebaseAuth;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lob;

    .line 30
    .line 31
    move-object v4, v2

    .line 32
    check-cast v4, Lme4;

    .line 33
    .line 34
    iget-object v5, v3, Lob;->a:Ljava/util/concurrent/ExecutorService;

    .line 35
    .line 36
    iget-object v3, v3, Lob;->b:Lj58;

    .line 37
    .line 38
    new-instance v6, Lpb;

    .line 39
    .line 40
    invoke-direct {v6, v1, v3, v4}, Lpb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    invoke-static {p0}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    throw p0

    .line 65
    :pswitch_0
    check-cast v2, Lo21;

    .line 66
    .line 67
    check-cast p0, Lmz2;

    .line 68
    .line 69
    invoke-virtual {v2, p0}, Lo21;->E(Lrx1;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_1
    check-cast p0, Lvj6;

    .line 74
    .line 75
    iget-object p0, p0, Lvj6;->b:Lbf3;

    .line 76
    .line 77
    check-cast v2, Lwc2;

    .line 78
    .line 79
    invoke-virtual {p0, v2, v1}, Lbf3;->a(Lwc2;Z)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_2
    check-cast v2, Lzc2;

    .line 84
    .line 85
    iget-object v0, v2, Lzc2;->a:Lwj6;

    .line 86
    .line 87
    check-cast p0, Lez2;

    .line 88
    .line 89
    invoke-virtual {v0, p0}, Lwj6;->d(Lez2;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_3
    check-cast v2, Lb76;

    .line 94
    .line 95
    iget-object v0, v2, Lb76;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    const-wide/16 v5, 0x1

    .line 102
    .line 103
    add-long/2addr v3, v5

    .line 104
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 105
    .line 106
    .line 107
    check-cast p0, Lu66;

    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lz66;

    .line 114
    .line 115
    invoke-virtual {v0}, Lz66;->a()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    iget-object v0, v2, Lb76;->c:Luv4;

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Luv4;->e(Lu66;)Z

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Lb76;->e()V

    .line 127
    .line 128
    .line 129
    :cond_2
    return-void

    .line 130
    :pswitch_4
    check-cast v2, Lcf2;

    .line 131
    .line 132
    check-cast p0, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_7

    .line 143
    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Laf2;

    .line 149
    .line 150
    iget-object v3, v2, Lcf2;->r:Ljava/util/ArrayList;

    .line 151
    .line 152
    iget-wide v4, v2, Lng6;->f:J

    .line 153
    .line 154
    iget-object v6, v1, Laf2;->a:Lfh6;

    .line 155
    .line 156
    const/4 v7, 0x0

    .line 157
    if-nez v6, :cond_4

    .line 158
    .line 159
    move-object v6, v7

    .line 160
    goto :goto_2

    .line 161
    :cond_4
    iget-object v6, v6, Lfh6;->a:Landroid/view/View;

    .line 162
    .line 163
    :goto_2
    iget-object v8, v1, Laf2;->b:Lfh6;

    .line 164
    .line 165
    if-eqz v8, :cond_5

    .line 166
    .line 167
    iget-object v7, v8, Lfh6;->a:Landroid/view/View;

    .line 168
    .line 169
    :cond_5
    const/4 v8, 0x0

    .line 170
    if-eqz v6, :cond_6

    .line 171
    .line 172
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-virtual {v9, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    iget-object v10, v1, Laf2;->a:Lfh6;

    .line 181
    .line 182
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    iget v10, v1, Laf2;->e:I

    .line 186
    .line 187
    iget v11, v1, Laf2;->c:I

    .line 188
    .line 189
    sub-int/2addr v10, v11

    .line 190
    int-to-float v10, v10

    .line 191
    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 192
    .line 193
    .line 194
    iget v10, v1, Laf2;->f:I

    .line 195
    .line 196
    iget v11, v1, Laf2;->d:I

    .line 197
    .line 198
    sub-int/2addr v10, v11

    .line 199
    int-to-float v10, v10

    .line 200
    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v9, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    new-instance v11, Lye2;

    .line 208
    .line 209
    invoke-direct {v11, v2, v1, v9, v6}, Lye2;-><init>(Lcf2;Laf2;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 217
    .line 218
    .line 219
    :cond_6
    if-eqz v7, :cond_3

    .line 220
    .line 221
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    iget-object v9, v1, Laf2;->b:Lfh6;

    .line 226
    .line 227
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    const/high16 v4, 0x3f800000    # 1.0f

    .line 243
    .line 244
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    new-instance v4, Lze2;

    .line 249
    .line 250
    invoke-direct {v4, v2, v1, v6, v7}, Lze2;-><init>(Lcf2;Laf2;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 262
    .line 263
    .line 264
    iget-object v0, v2, Lcf2;->n:Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
