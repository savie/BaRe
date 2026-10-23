.class public final synthetic Lo10;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo10;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lo10;->b:Ljava/lang/Object;

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
    .locals 7

    .line 1
    iget v0, p0, Lo10;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lo10;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Le38;

    .line 9
    .line 10
    iget-object v0, p0, Le38;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lmw6;

    .line 13
    .line 14
    new-instance v1, Lrn1;

    .line 15
    .line 16
    const/16 v2, 0xa

    .line 17
    .line 18
    invoke-direct {v1, p0, v2}, Lrn1;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lmw6;->m(Ldv7;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    check-cast p0, Lcom/jcraft/jsch/Session;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->t()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    check-cast p0, Lt22;

    .line 32
    .line 33
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->$r8$lambda$A06gwChzcFuhXsKmyMy0CkBHQxI(Lt22;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_2
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 38
    .line 39
    invoke-static {p0}, Lcom/google/android/material/button/MaterialButton;->a(Lcom/google/android/material/button/MaterialButton;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_3
    check-cast p0, Lpg3;

    .line 44
    .line 45
    sget-object v0, Lpg3;->m:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lpg3;->a:Lcom/google/firebase/FirebaseApp;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lyf1;->h(Landroid/content/Context;)Lyf1;

    .line 55
    .line 56
    .line 57
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    iget-object v2, p0, Lpg3;->c:Lro;

    .line 59
    .line 60
    invoke-virtual {v2}, Lro;->s()Lee0;

    .line 61
    .line 62
    .line 63
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    :try_start_2
    invoke-virtual {v1}, Lyf1;->q()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto/16 :goto_c

    .line 72
    .line 73
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :try_start_3
    iget v1, v2, Lee0;->b:I

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    const/4 v4, 0x5

    .line 78
    const/4 v5, 0x1

    .line 79
    if-ne v1, v4, :cond_1

    .line 80
    .line 81
    move v6, v5

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    move v6, v3

    .line 84
    :goto_1
    if-nez v6, :cond_4

    .line 85
    .line 86
    const/4 v6, 0x3

    .line 87
    if-ne v1, v6, :cond_2

    .line 88
    .line 89
    move v3, v5

    .line 90
    :cond_2
    if-eqz v3, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    iget-object v1, p0, Lpg3;->d:Lhi8;

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lhi8;->a(Lee0;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_e

    .line 100
    .line 101
    invoke-virtual {p0, v2}, Lpg3;->b(Lee0;)Lee0;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    goto :goto_3

    .line 106
    :catch_0
    move-exception v0

    .line 107
    goto/16 :goto_a

    .line 108
    .line 109
    :cond_4
    :goto_2
    invoke-virtual {p0, v2}, Lpg3;->g(Lee0;)Lee0;

    .line 110
    .line 111
    .line 112
    move-result-object v1
    :try_end_3
    .catch Lrg3; {:try_start_3 .. :try_end_3} :catch_0

    .line 113
    :goto_3
    monitor-enter v0

    .line 114
    :try_start_4
    iget-object v3, p0, Lpg3;->a:Lcom/google/firebase/FirebaseApp;

    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v3}, Lyf1;->h(Landroid/content/Context;)Lyf1;

    .line 121
    .line 122
    .line 123
    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 124
    :try_start_5
    iget-object v6, p0, Lpg3;->c:Lro;

    .line 125
    .line 126
    invoke-virtual {v6, v1}, Lro;->n(Lee0;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 127
    .line 128
    .line 129
    if-eqz v3, :cond_5

    .line 130
    .line 131
    :try_start_6
    invoke-virtual {v3}, Lyf1;->q()V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :catchall_1
    move-exception p0

    .line 136
    goto/16 :goto_9

    .line 137
    .line 138
    :cond_5
    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 139
    monitor-enter p0

    .line 140
    :try_start_7
    iget-object v0, p0, Lpg3;->k:Ljava/util/HashSet;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    iget-object v0, v2, Lee0;->a:Ljava/lang/String;

    .line 149
    .line 150
    iget-object v2, v1, Lee0;->a:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_8

    .line 157
    .line 158
    iget-object v0, p0, Lpg3;->k:Ljava/util/HashSet;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_6

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-nez v0, :cond_7

    .line 176
    .line 177
    const/4 v0, 0x0

    .line 178
    throw v0

    .line 179
    :catchall_2
    move-exception v0

    .line 180
    goto :goto_8

    .line 181
    :cond_7
    new-instance v0, Ljava/lang/ClassCastException;

    .line 182
    .line 183
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 184
    .line 185
    .line 186
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 187
    :cond_8
    :goto_5
    monitor-exit p0

    .line 188
    iget v0, v1, Lee0;->b:I

    .line 189
    .line 190
    const/4 v2, 0x4

    .line 191
    if-ne v0, v2, :cond_9

    .line 192
    .line 193
    iget-object v0, v1, Lee0;->a:Ljava/lang/String;

    .line 194
    .line 195
    monitor-enter p0

    .line 196
    :try_start_8
    iput-object v0, p0, Lpg3;->j:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 197
    .line 198
    monitor-exit p0

    .line 199
    goto :goto_6

    .line 200
    :catchall_3
    move-exception v0

    .line 201
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 202
    throw v0

    .line 203
    :cond_9
    :goto_6
    iget v0, v1, Lee0;->b:I

    .line 204
    .line 205
    if-ne v0, v4, :cond_a

    .line 206
    .line 207
    new-instance v0, Lrg3;

    .line 208
    .line 209
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v0}, Lpg3;->h(Ljava/lang/Exception;)V

    .line 213
    .line 214
    .line 215
    goto :goto_b

    .line 216
    :cond_a
    const/4 v2, 0x2

    .line 217
    if-eq v0, v2, :cond_c

    .line 218
    .line 219
    if-ne v0, v5, :cond_b

    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_b
    invoke-virtual {p0, v1}, Lpg3;->i(Lee0;)V

    .line 223
    .line 224
    .line 225
    goto :goto_b

    .line 226
    :cond_c
    :goto_7
    new-instance v0, Ljava/io/IOException;

    .line 227
    .line 228
    const-string v1, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    .line 229
    .line 230
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, v0}, Lpg3;->h(Ljava/lang/Exception;)V

    .line 234
    .line 235
    .line 236
    goto :goto_b

    .line 237
    :goto_8
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 238
    throw v0

    .line 239
    :catchall_4
    move-exception p0

    .line 240
    if-eqz v3, :cond_d

    .line 241
    .line 242
    :try_start_b
    invoke-virtual {v3}, Lyf1;->q()V

    .line 243
    .line 244
    .line 245
    :cond_d
    throw p0

    .line 246
    :goto_9
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 247
    throw p0

    .line 248
    :goto_a
    invoke-virtual {p0, v0}, Lpg3;->h(Ljava/lang/Exception;)V

    .line 249
    .line 250
    .line 251
    :cond_e
    :goto_b
    return-void

    .line 252
    :catchall_5
    move-exception p0

    .line 253
    if-eqz v1, :cond_f

    .line 254
    .line 255
    :try_start_c
    invoke-virtual {v1}, Lyf1;->q()V

    .line 256
    .line 257
    .line 258
    :cond_f
    throw p0

    .line 259
    :goto_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 260
    throw p0

    .line 261
    :pswitch_4
    check-cast p0, Lko1;

    .line 262
    .line 263
    invoke-static {p0}, Lko1;->a(Lko1;)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :pswitch_5
    check-cast p0, Lj30;

    .line 268
    .line 269
    invoke-virtual {p0}, Lu35;->dismiss()V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :pswitch_6
    check-cast p0, Lt10;

    .line 274
    .line 275
    invoke-virtual {p0}, Lu35;->dismiss()V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
