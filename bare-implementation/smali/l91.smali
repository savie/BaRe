.class public final Ll91;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ll91;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget p0, p0, Ll91;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    move v0, v1

    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v3, p0, :cond_3

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    int-to-char v4, v3

    .line 25
    const/4 v5, 0x2

    .line 26
    if-eq v4, v5, :cond_2

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    if-eq v4, v5, :cond_1

    .line 30
    .line 31
    const/4 v5, 0x4

    .line 32
    if-eq v4, v5, :cond_0

    .line 33
    .line 34
    invoke-static {p1, v3}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p1, v3}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {p1, v3}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 54
    .line 55
    .line 56
    new-instance p0, Lo80;

    .line 57
    .line 58
    invoke-direct {p0, v1, v0, v2}, Lo80;-><init>(IILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_0
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    move-object v4, v2

    .line 67
    move-object v5, v4

    .line 68
    move-object v6, v5

    .line 69
    move-object v7, v6

    .line 70
    move-object v8, v7

    .line 71
    move-object v9, v8

    .line 72
    move-object v10, v9

    .line 73
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-ge v0, p0, :cond_4

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    int-to-char v1, v0

    .line 84
    packed-switch v1, :pswitch_data_1

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :pswitch_1
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    goto :goto_1

    .line 96
    :pswitch_2
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    goto :goto_1

    .line 101
    :pswitch_3
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    goto :goto_1

    .line 106
    :pswitch_4
    sget-object v1, Lj69;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 107
    .line 108
    invoke-static {p1, v0, v1}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    move-object v7, v0

    .line 113
    check-cast v7, Lj69;

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :pswitch_5
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    goto :goto_1

    .line 121
    :pswitch_6
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    goto :goto_1

    .line 126
    :pswitch_7
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 132
    .line 133
    .line 134
    new-instance v3, Lua9;

    .line 135
    .line 136
    invoke-direct/range {v3 .. v10}, Lua9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj69;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-object v3

    .line 140
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    if-nez p0, :cond_5

    .line 145
    .line 146
    :try_start_0
    const-string p0, ""

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catch_0
    move-exception v0

    .line 150
    move-object p0, v0

    .line 151
    goto :goto_3

    .line 152
    :cond_5
    :goto_2
    invoke-static {p0}, Lel6;->c(Ljava/lang/String;)Lel6;

    .line 153
    .line 154
    .line 155
    move-result-object v2
    :try_end_0
    .catch Ldl6; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_4

    .line 157
    :goto_3
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    :goto_4
    return-object v2

    .line 161
    :pswitch_9
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    move v8, v1

    .line 166
    move v9, v8

    .line 167
    move-object v4, v2

    .line 168
    move-object v5, v4

    .line 169
    move-object v6, v5

    .line 170
    move-object v7, v6

    .line 171
    move-object v10, v7

    .line 172
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-ge v0, p0, :cond_6

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    int-to-char v1, v0

    .line 183
    packed-switch v1, :pswitch_data_2

    .line 184
    .line 185
    .line 186
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :pswitch_a
    sget-object v1, Le39;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 191
    .line 192
    invoke-static {p1, v0, v1}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    goto :goto_5

    .line 197
    :pswitch_b
    invoke-static {p1, v0}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    goto :goto_5

    .line 202
    :pswitch_c
    invoke-static {p1, v0}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    goto :goto_5

    .line 207
    :pswitch_d
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    goto :goto_5

    .line 212
    :pswitch_e
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    goto :goto_5

    .line 217
    :pswitch_f
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    goto :goto_5

    .line 222
    :pswitch_10
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    goto :goto_5

    .line 227
    :cond_6
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 228
    .line 229
    .line 230
    new-instance v3, Lax3;

    .line 231
    .line 232
    invoke-direct/range {v3 .. v10}, Lax3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/List;)V

    .line 233
    .line 234
    .line 235
    return-object v3

    .line 236
    :pswitch_11
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 237
    .line 238
    .line 239
    move-result p0

    .line 240
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-ge v1, p0, :cond_8

    .line 245
    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    int-to-char v3, v1

    .line 251
    if-eq v3, v0, :cond_7

    .line 252
    .line 253
    invoke-static {p1, v1}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 254
    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_7
    sget-object v2, Lo22;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 258
    .line 259
    invoke-static {p1, v1, v2}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    move-object v2, v1

    .line 264
    check-cast v2, Lo22;

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_8
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 268
    .line 269
    .line 270
    new-instance p0, Law3;

    .line 271
    .line 272
    invoke-direct {p0, v2}, Law3;-><init>(Lo22;)V

    .line 273
    .line 274
    .line 275
    return-object p0

    .line 276
    :pswitch_12
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 277
    .line 278
    .line 279
    move-result p0

    .line 280
    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-ge v2, p0, :cond_a

    .line 285
    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    int-to-char v3, v2

    .line 291
    if-eq v3, v0, :cond_9

    .line 292
    .line 293
    invoke-static {p1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 294
    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_9
    invoke-static {p1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    goto :goto_7

    .line 302
    :cond_a
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 303
    .line 304
    .line 305
    new-instance p0, Lk91;

    .line 306
    .line 307
    invoke-direct {p0, v1}, Lk91;-><init>(Z)V

    .line 308
    .line 309
    .line 310
    return-object p0

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_9
        :pswitch_8
        :pswitch_0
    .end packed-switch

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Ll91;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lo80;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lua9;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lel6;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lax3;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Law3;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lk91;

    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
