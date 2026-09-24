.class public final Li8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Li8;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Li8;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Li8;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 11
    iput p3, p0, Li8;->a:I

    iput-object p1, p0, Li8;->b:Ljava/lang/Object;

    iput-object p2, p0, Li8;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Li8;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Li8;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Li8;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Ldq0;

    .line 12
    .line 13
    check-cast v2, Llq0;

    .line 14
    .line 15
    sget-object v0, Lle9;->k:Lyq0;

    .line 16
    .line 17
    const/16 v1, 0x9

    .line 18
    .line 19
    const/16 v3, 0x18

    .line 20
    .line 21
    invoke-virtual {p0, v3, v1, v0}, Ldq0;->y(IILyq0;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lma9;->b:Lga9;

    .line 25
    .line 26
    sget-object p0, Lmb9;->e:Lmb9;

    .line 27
    .line 28
    invoke-virtual {v2, v0, p0}, Llq0;->b(Lyq0;Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    check-cast v2, Lln6;

    .line 33
    .line 34
    iput-object v1, v2, Lln6;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 35
    .line 36
    check-cast p0, Lgz5;

    .line 37
    .line 38
    invoke-virtual {p0}, Lgz5;->run()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    check-cast v2, Liy3;

    .line 43
    .line 44
    iget-boolean v0, v2, Liy3;->d:Z

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 49
    .line 50
    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    :try_start_0
    check-cast p0, Ljava/lang/Runnable;

    .line 69
    .line 70
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    iget-object v0, v2, Liy3;->c:Llk;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x6

    .line 81
    const-string v1, "GlideExecutor"

    .line 82
    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    const-string v0, "Request threw uncaught throwable"

    .line 90
    .line 91
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    :cond_1
    :goto_0
    return-void

    .line 95
    :pswitch_2
    check-cast v2, Lcf2;

    .line 96
    .line 97
    check-cast p0, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lfh6;

    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iget-object v3, v1, Lfh6;->a:Landroid/view/View;

    .line 119
    .line 120
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    iget-object v5, v2, Lcf2;->o:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    const/high16 v5, 0x3f800000    # 1.0f

    .line 130
    .line 131
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    iget-wide v6, v2, Lng6;->c:J

    .line 136
    .line 137
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    new-instance v6, Lwe2;

    .line 142
    .line 143
    invoke-direct {v6, v2, v1, v3, v4}, Lwe2;-><init>(Lcf2;Lfh6;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 155
    .line 156
    .line 157
    iget-object v0, v2, Lcf2;->l:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :pswitch_3
    check-cast v2, Lx60;

    .line 164
    .line 165
    iget-object v0, v2, Lx60;->d:Lz60;

    .line 166
    .line 167
    iget v1, v0, Lz60;->g:I

    .line 168
    .line 169
    iget v3, v2, Lx60;->c:I

    .line 170
    .line 171
    if-ne v1, v3, :cond_3

    .line 172
    .line 173
    iget-object v1, v2, Lx60;->b:Ljava/util/List;

    .line 174
    .line 175
    check-cast p0, Lbl2;

    .line 176
    .line 177
    iput-object v1, v0, Lz60;->e:Ljava/util/List;

    .line 178
    .line 179
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    iput-object v1, v0, Lz60;->f:Ljava/util/List;

    .line 184
    .line 185
    iget-object v1, v0, Lz60;->a:Lz28;

    .line 186
    .line 187
    invoke-virtual {p0, v1}, Lbl2;->a(Lz28;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Lz60;->a()V

    .line 191
    .line 192
    .line 193
    :cond_3
    return-void

    .line 194
    :pswitch_4
    check-cast p0, Ld9;

    .line 195
    .line 196
    iput-object v2, p0, Ld9;->a:Ljava/lang/Object;

    .line 197
    .line 198
    return-void

    .line 199
    :pswitch_5
    check-cast p0, Ll8;

    .line 200
    .line 201
    check-cast v2, Lo8;

    .line 202
    .line 203
    iget-object v0, v2, Lo8;->c:Lfc5;

    .line 204
    .line 205
    if-eqz v0, :cond_4

    .line 206
    .line 207
    iget-object v3, v0, Lfc5;->e:Ldc5;

    .line 208
    .line 209
    if-eqz v3, :cond_4

    .line 210
    .line 211
    invoke-interface {v3, v0}, Ldc5;->m(Lfc5;)V

    .line 212
    .line 213
    .line 214
    :cond_4
    iget-object v0, v2, Lo8;->n:Lzc5;

    .line 215
    .line 216
    check-cast v0, Landroid/view/View;

    .line 217
    .line 218
    if-eqz v0, :cond_7

    .line 219
    .line 220
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    if-eqz v0, :cond_7

    .line 225
    .line 226
    invoke-virtual {p0}, Lqc5;->b()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_5

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_5
    iget-object v0, p0, Lqc5;->f:Landroid/view/View;

    .line 234
    .line 235
    if-nez v0, :cond_6

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_6
    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, v0, v0, v0, v0}, Lqc5;->d(IIZZ)V

    .line 240
    .line 241
    .line 242
    :goto_2
    iput-object p0, v2, Lo8;->L:Ll8;

    .line 243
    .line 244
    :cond_7
    :goto_3
    iput-object v1, v2, Lo8;->N:Li8;

    .line 245
    .line 246
    return-void

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
