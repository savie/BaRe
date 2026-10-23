.class public final synthetic Ldq;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Ldq;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Leo6;)V
    .locals 0

    .line 1
    const/16 p1, 0xb

    .line 2
    .line 3
    iput p1, p0, Ldq;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget p0, p0, Ldq;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Lvg;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-object v3

    .line 17
    :pswitch_0
    check-cast p1, Lvg;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    return-object v3

    .line 23
    :pswitch_1
    check-cast p1, Lvc2;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance p0, Lio5;

    .line 29
    .line 30
    invoke-direct {p0, v0}, Lio5;-><init>(I)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide p0

    .line 40
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    .line 41
    .line 42
    .line 43
    return-object v3

    .line 44
    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string p0, "non-object value"

    .line 58
    .line 59
    :goto_0
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 60
    .line 61
    const-string p1, "Ignoring malformed translation credit: "

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    const/4 v8, 0x4

    .line 68
    const/4 v9, 0x0

    .line 69
    const-string v5, "LocaleVM"

    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    invoke-static/range {v4 .. v9}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-object v3

    .line 76
    :pswitch_4
    check-cast p1, Lbt3;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    sget-object p0, Lzn4;->a:Lzn4;

    .line 82
    .line 83
    new-instance p0, Lr11;

    .line 84
    .line 85
    invoke-direct {p0, p1, v2, v1}, Lr11;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 86
    .line 87
    .line 88
    invoke-static {v2, p0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 89
    .line 90
    .line 91
    return-object v3

    .line 92
    :pswitch_5
    check-cast p1, Ldd1;

    .line 93
    .line 94
    sget-object p0, Lc64;->l:Lix6;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ldd1;->getReleaseState()Lxi6;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    sget-object p1, Lxi6;->Beta:Lxi6;

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-ltz p0, :cond_1

    .line 110
    .line 111
    move v0, v1

    .line 112
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :pswitch_6
    check-cast p1, Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {}, Lre3;->k()Lzc2;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    const-string v0, "cloud_v1"

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p0, p1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {p0, v1}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    instance-of p1, p0, Lxe3;

    .line 141
    .line 142
    if-eqz p1, :cond_2

    .line 143
    .line 144
    new-instance v2, Lmf1;

    .line 145
    .line 146
    check-cast p0, Lxe3;

    .line 147
    .line 148
    iget-object p0, p0, Lxe3;->n:Leb2;

    .line 149
    .line 150
    iget-object p0, p0, Leb2;->a:Lsb4;

    .line 151
    .line 152
    iget-object p1, p0, Lsb4;->a:Lqn5;

    .line 153
    .line 154
    invoke-interface {p1}, Lqn5;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    xor-int/2addr p1, v1

    .line 159
    iget-object p0, p0, Lsb4;->a:Lqn5;

    .line 160
    .line 161
    invoke-interface {p0}, Lqn5;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-direct {v2, p0, p1}, Lmf1;-><init>(Ljava/lang/Object;Z)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_2
    instance-of p0, p0, Lwe3;

    .line 170
    .line 171
    if-eqz p0, :cond_3

    .line 172
    .line 173
    sget-object v2, Llf1;->g:Llf1;

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_3
    invoke-static {}, Lq;->j()V

    .line 177
    .line 178
    .line 179
    :goto_1
    return-object v2

    .line 180
    :pswitch_7
    check-cast p1, Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-static {p1}, Ljr7;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :pswitch_8
    check-cast p1, Ljava/lang/Long;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 193
    .line 194
    .line 195
    move-result-wide p0

    .line 196
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    .line 197
    .line 198
    .line 199
    return-object v3

    .line 200
    :pswitch_9
    check-cast p1, Ljava/lang/Long;

    .line 201
    .line 202
    const-wide/16 v0, 0x0

    .line 203
    .line 204
    if-eqz p1, :cond_4

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 207
    .line 208
    .line 209
    move-result-wide v3

    .line 210
    goto :goto_2

    .line 211
    :cond_4
    move-wide v3, v0

    .line 212
    :goto_2
    cmp-long p0, v3, v0

    .line 213
    .line 214
    if-lez p0, :cond_5

    .line 215
    .line 216
    sget-object p0, Lp93;->a:Lp93;

    .line 217
    .line 218
    invoke-static {p1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    :cond_5
    return-object v2

    .line 223
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    return-object v3

    .line 229
    :pswitch_b
    check-cast p1, Lji;

    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Lji;->getCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    if-eqz p0, :cond_6

    .line 239
    .line 240
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getTotalSize()J

    .line 241
    .line 242
    .line 243
    move-result-wide p0

    .line 244
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    :cond_6
    invoke-static {v2}, Lio4;->h(Ljava/lang/Long;)J

    .line 249
    .line 250
    .line 251
    move-result-wide p0

    .line 252
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    return-object p0

    .line 257
    :pswitch_c
    check-cast p1, Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    const-string p0, "crashlytics"

    .line 263
    .line 264
    invoke-static {p1, p0, v0}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 265
    .line 266
    .line 267
    move-result p0

    .line 268
    if-nez p0, :cond_7

    .line 269
    .line 270
    const-string p0, "com.google.android.gms"

    .line 271
    .line 272
    invoke-static {p1, p0, v0}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 273
    .line 274
    .line 275
    move-result p0

    .line 276
    if-eqz p0, :cond_8

    .line 277
    .line 278
    :cond_7
    move v0, v1

    .line 279
    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    return-object p0

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
