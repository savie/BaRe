.class public final Lon;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 9
    const/4 v0, 0x3

    iput v0, p0, Lon;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lon;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lon;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lon;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string v0, "Timed out (timeout delayed by "

    .line 9
    .line 10
    iget-object v1, p0, Lon;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lue9;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    iget-object v3, v1, Lue9;->n:Lke9;

    .line 19
    .line 20
    if-eqz v3, :cond_8

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    iput-object v4, p0, Lon;->b:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_4

    .line 30
    .line 31
    iget-object p0, v1, Luc9;->a:Ljava/lang/Object;

    .line 32
    .line 33
    if-nez p0, :cond_3

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    invoke-static {v3}, Lue9;->f(Lke9;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    sget-object v0, Luc9;->k:Lho6;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v4, p0}, Lho6;->h0(Luc9;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_8

    .line 52
    .line 53
    invoke-static {v1}, Lue9;->h(Lue9;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_1
    new-instance p0, Lkc9;

    .line 59
    .line 60
    invoke-direct {p0, v1, v3}, Lkc9;-><init>(Lue9;Lke9;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Luc9;->k:Lho6;

    .line 64
    .line 65
    invoke-virtual {v0, v1, v4, p0}, Lho6;->h0(Luc9;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    :try_start_0
    sget-object v0, Lhd9;->a:Lhd9;

    .line 72
    .line 73
    invoke-interface {v3, p0, v0}, Lke9;->o(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :catchall_0
    move-exception v0

    .line 79
    :try_start_1
    new-instance v2, Lmc9;

    .line 80
    .line 81
    invoke-direct {v2, v0}, Lmc9;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    sget-object v2, Lmc9;->b:Lmc9;

    .line 86
    .line 87
    :goto_0
    sget-object v0, Luc9;->k:Lho6;

    .line 88
    .line 89
    invoke-virtual {v0, v1, p0, v2}, Lho6;->h0(Luc9;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :cond_2
    iget-object p0, v1, Luc9;->a:Ljava/lang/Object;

    .line 95
    .line 96
    :cond_3
    instance-of v0, p0, Ljc9;

    .line 97
    .line 98
    if-eqz v0, :cond_8

    .line 99
    .line 100
    check-cast p0, Ljc9;

    .line 101
    .line 102
    iget-boolean p0, p0, Ljc9;->a:Z

    .line 103
    .line 104
    invoke-interface {v3, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 105
    .line 106
    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_4
    :try_start_2
    iget-object p0, v1, Lue9;->p:Ljava/util/concurrent/ScheduledFuture;

    .line 110
    .line 111
    iput-object v4, v1, Lue9;->p:Ljava/util/concurrent/ScheduledFuture;

    .line 112
    .line 113
    const-string v5, "Timed out"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 114
    .line 115
    if-eqz p0, :cond_5

    .line 116
    .line 117
    :try_start_3
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 118
    .line 119
    invoke-interface {p0, v6}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v6

    .line 123
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    .line 124
    .line 125
    .line 126
    move-result-wide v6

    .line 127
    const-wide/16 v8, 0xa

    .line 128
    .line 129
    cmp-long p0, v6, v8

    .line 130
    .line 131
    if-lez p0, :cond_5

    .line 132
    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v0, " ms after scheduled time)"

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    goto :goto_1

    .line 151
    :catchall_1
    move-exception p0

    .line 152
    goto :goto_2

    .line 153
    :cond_5
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v6, ": "

    .line 166
    .line 167
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 177
    :try_start_4
    new-instance v0, Lqe9;

    .line 178
    .line 179
    invoke-direct {v0, p0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-instance p0, Lmc9;

    .line 183
    .line 184
    invoke-direct {p0, v0}, Lmc9;-><init>(Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    sget-object v0, Luc9;->k:Lho6;

    .line 188
    .line 189
    invoke-virtual {v0, v1, v4, p0}, Lho6;->h0(Luc9;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    if-eqz p0, :cond_6

    .line 194
    .line 195
    invoke-static {v1}, Lue9;->h(Lue9;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 196
    .line 197
    .line 198
    :cond_6
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :catchall_2
    move-exception p0

    .line 203
    goto :goto_3

    .line 204
    :goto_2
    :try_start_5
    new-instance v0, Lqe9;

    .line 205
    .line 206
    invoke-direct {v0, v5}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    new-instance v5, Lmc9;

    .line 210
    .line 211
    invoke-direct {v5, v0}, Lmc9;-><init>(Ljava/lang/Throwable;)V

    .line 212
    .line 213
    .line 214
    sget-object v0, Luc9;->k:Lho6;

    .line 215
    .line 216
    invoke-virtual {v0, v1, v4, v5}, Lho6;->h0(Luc9;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_7

    .line 221
    .line 222
    invoke-static {v1}, Lue9;->h(Lue9;)V

    .line 223
    .line 224
    .line 225
    :cond_7
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 226
    :goto_3
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 227
    .line 228
    .line 229
    throw p0

    .line 230
    :cond_8
    :goto_4
    return-void

    .line 231
    :pswitch_0
    iget-object p0, p0, Lon;->b:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    .line 234
    .line 235
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->u()Z

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :pswitch_1
    iget-object p0, p0, Lon;->b:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 242
    .line 243
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->f:Z

    .line 244
    .line 245
    if-eqz v0, :cond_9

    .line 246
    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    const-string v2, "input_method"

    .line 252
    .line 253
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 258
    .line 259
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 260
    .line 261
    .line 262
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->f:Z

    .line 263
    .line 264
    :cond_9
    return-void

    .line 265
    :pswitch_2
    iget-object p0, p0, Lon;->b:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast p0, Lfo;

    .line 268
    .line 269
    iget v0, p0, Lfo;->q0:I

    .line 270
    .line 271
    and-int/2addr v0, v2

    .line 272
    if-eqz v0, :cond_a

    .line 273
    .line 274
    invoke-virtual {p0, v1}, Lfo;->v(I)V

    .line 275
    .line 276
    .line 277
    :cond_a
    iget v0, p0, Lfo;->q0:I

    .line 278
    .line 279
    and-int/lit16 v0, v0, 0x1000

    .line 280
    .line 281
    if-eqz v0, :cond_b

    .line 282
    .line 283
    const/16 v0, 0x6c

    .line 284
    .line 285
    invoke-virtual {p0, v0}, Lfo;->v(I)V

    .line 286
    .line 287
    .line 288
    :cond_b
    iput-boolean v1, p0, Lfo;->p0:Z

    .line 289
    .line 290
    iput v1, p0, Lfo;->q0:I

    .line 291
    .line 292
    return-void

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
