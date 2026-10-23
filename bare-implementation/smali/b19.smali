.class public abstract Lb19;
.super Landroid/os/Binder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lb19;->a:I

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "com.google.android.gms.fido.fido2.internal.regular.IFido2AppCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 37
    iput p1, p0, Lb19;->a:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lb19;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static k(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    sget v0, Lya9;->a:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-gtz p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/os/BadParcelableException;

    .line 11
    .line 12
    const-string v1, "Parcel data not fully consumed, unread size: "

    .line 13
    .line 14
    invoke-static {p0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public static l(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    sget v0, Lsa9;->a:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-gtz p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/os/BadParcelableException;

    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/lit8 v1, v1, 0x2d

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 25
    .line 26
    .line 27
    const-string v1, "Parcel data not fully consumed, unread size: "

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v0, p0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget v0, p0, Lb19;->a:I

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract j(Landroid/os/Parcel;I)Z
.end method

.method public abstract m(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
.end method

.method public abstract n(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
.end method

.method public o(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .line 1
    iget v0, p0, Lb19;->a:I

    .line 2
    .line 3
    const-string v1, "Parcel data not fully consumed, unread size: "

    .line 4
    .line 5
    const v2, 0xffffff

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    if-le p1, v2, :cond_0

    .line 14
    .line 15
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    if-ne p1, v3, :cond_5

    .line 30
    .line 31
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    .line 33
    sget p3, Lab9;->a:I

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    const/4 p4, 0x0

    .line 40
    if-nez p3, :cond_2

    .line 41
    .line 42
    move-object p1, p4

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/os/Parcelable;

    .line 49
    .line 50
    :goto_0
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 51
    .line 52
    sget-object p3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    move-object p4, p3

    .line 66
    check-cast p4, Landroid/os/Parcelable;

    .line 67
    .line 68
    :goto_1
    check-cast p4, Landroid/app/PendingIntent;

    .line 69
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->dataAvail()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-gtz p2, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0, p1, p4}, Lb19;->p(Lcom/google/android/gms/common/api/Status;Landroid/app/PendingIntent;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 81
    .line 82
    invoke-static {p2, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_5
    move v3, v4

    .line 91
    :goto_2
    return v3

    .line 92
    :pswitch_0
    if-le p1, v2, :cond_6

    .line 93
    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    goto :goto_3

    .line 99
    :cond_6
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    move p3, v4

    .line 107
    :goto_3
    if-eqz p3, :cond_7

    .line 108
    .line 109
    goto/16 :goto_5

    .line 110
    .line 111
    :cond_7
    check-cast p0, Ln94;

    .line 112
    .line 113
    packed-switch p1, :pswitch_data_1

    .line 114
    .line 115
    .line 116
    :goto_4
    move v3, v4

    .line 117
    goto/16 :goto_5

    .line 118
    .line 119
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 120
    .line 121
    invoke-static {p2, p0}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    .line 126
    .line 127
    sget-object p1, Lb91;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 128
    .line 129
    invoke-static {p2, p1}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lb91;

    .line 134
    .line 135
    invoke-static {p2}, Lb19;->l(Landroid/os/Parcel;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lx5;->e()V

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 146
    .line 147
    invoke-static {p2, p0}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    .line 152
    .line 153
    sget-object p1, Lv32;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 154
    .line 155
    invoke-static {p2, p1}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Lv32;

    .line 160
    .line 161
    invoke-static {p2}, Lb19;->l(Landroid/os/Parcel;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-static {}, Lx5;->e()V

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 172
    .line 173
    invoke-static {p2, p0}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    .line 178
    .line 179
    sget-object p1, Lp03;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 180
    .line 181
    invoke-static {p2, p1}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lp03;

    .line 186
    .line 187
    invoke-static {p2}, Lb19;->l(Landroid/os/Parcel;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lx5;->e()V

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 198
    .line 199
    invoke-static {p2, p0}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    .line 204
    .line 205
    sget-object p1, Lwa4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 206
    .line 207
    invoke-static {p2, p1}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Lwa4;

    .line 212
    .line 213
    invoke-static {p2}, Lb19;->l(Landroid/os/Parcel;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lx5;->e()V

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 224
    .line 225
    invoke-static {p2, p0}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    .line 230
    .line 231
    sget-object p1, Lj91;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 232
    .line 233
    invoke-static {p2, p1}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    check-cast p1, Lj91;

    .line 238
    .line 239
    invoke-static {p2}, Lb19;->l(Landroid/os/Parcel;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-static {}, Lx5;->e()V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_4

    .line 249
    .line 250
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 251
    .line 252
    invoke-static {p2, p0}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    .line 257
    .line 258
    sget-object p1, Lqf7;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 259
    .line 260
    invoke-static {p2, p1}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    check-cast p1, Lqf7;

    .line 265
    .line 266
    invoke-static {p2}, Lb19;->l(Landroid/os/Parcel;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 273
    .line 274
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 275
    .line 276
    .line 277
    throw p0

    .line 278
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 279
    .line 280
    invoke-static {p2, p1}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 285
    .line 286
    sget-object p3, Lg91;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 287
    .line 288
    invoke-static {p2, p3}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 289
    .line 290
    .line 291
    move-result-object p3

    .line 292
    check-cast p3, Lg91;

    .line 293
    .line 294
    invoke-static {p2}, Lb19;->l(Landroid/os/Parcel;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, p1, p3}, Ln94;->q(Lcom/google/android/gms/common/api/Status;Lg91;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_5

    .line 301
    .line 302
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 303
    .line 304
    invoke-static {p2, p0}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    .line 309
    .line 310
    sget-object p1, Lci6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 311
    .line 312
    invoke-static {p2, p1}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    check-cast p1, Lci6;

    .line 317
    .line 318
    invoke-static {p2}, Lb19;->l(Landroid/os/Parcel;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    invoke-static {}, Lx5;->e()V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_4

    .line 328
    .line 329
    :pswitch_9
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 330
    .line 331
    invoke-static {p2, p1}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 336
    .line 337
    sget-object p3, Ld12;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 338
    .line 339
    invoke-static {p2, p3}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 340
    .line 341
    .line 342
    move-result-object p3

    .line 343
    check-cast p3, Ld12;

    .line 344
    .line 345
    invoke-static {p2}, Lb19;->l(Landroid/os/Parcel;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0, p1, p3}, Ln94;->r(Lcom/google/android/gms/common/api/Status;Ld12;)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_5

    .line 352
    .line 353
    :pswitch_a
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 354
    .line 355
    invoke-static {p2, p0}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    .line 360
    .line 361
    sget-object p1, Lj12;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 362
    .line 363
    invoke-static {p2, p1}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    check-cast p1, Lj12;

    .line 368
    .line 369
    invoke-static {p2}, Lb19;->l(Landroid/os/Parcel;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    invoke-static {}, Lx5;->e()V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_4

    .line 379
    .line 380
    :pswitch_b
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 381
    .line 382
    invoke-static {p2, p0}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    .line 387
    .line 388
    sget-object p1, Ldi6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 389
    .line 390
    invoke-static {p2, p1}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    check-cast p1, Ldi6;

    .line 395
    .line 396
    invoke-static {p2}, Lb19;->l(Landroid/os/Parcel;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    invoke-static {}, Lx5;->e()V

    .line 403
    .line 404
    .line 405
    goto/16 :goto_4

    .line 406
    .line 407
    :pswitch_c
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 408
    .line 409
    invoke-static {p2, p0}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 410
    .line 411
    .line 412
    move-result-object p0

    .line 413
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    .line 414
    .line 415
    sget-object p1, Luy5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 416
    .line 417
    invoke-static {p2, p1}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    check-cast p1, Luy5;

    .line 422
    .line 423
    invoke-static {p2}, Lb19;->l(Landroid/os/Parcel;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    invoke-static {}, Lx5;->e()V

    .line 430
    .line 431
    .line 432
    goto/16 :goto_4

    .line 433
    .line 434
    :pswitch_d
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 435
    .line 436
    invoke-static {p2, p0}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 437
    .line 438
    .line 439
    move-result-object p0

    .line 440
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    .line 441
    .line 442
    sget-object p1, Lk91;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 443
    .line 444
    invoke-static {p2, p1}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    check-cast p1, Lk91;

    .line 449
    .line 450
    invoke-static {p2}, Lb19;->l(Landroid/os/Parcel;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    invoke-static {}, Lx5;->e()V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_4

    .line 460
    .line 461
    :pswitch_e
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 462
    .line 463
    invoke-static {p2, p0}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 464
    .line 465
    .line 466
    move-result-object p0

    .line 467
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    .line 468
    .line 469
    sget-object p1, Lgi6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 470
    .line 471
    invoke-static {p2, p1}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    check-cast p1, Lgi6;

    .line 476
    .line 477
    invoke-static {p2}, Lb19;->l(Landroid/os/Parcel;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    .line 482
    .line 483
    invoke-static {}, Lx5;->e()V

    .line 484
    .line 485
    .line 486
    goto/16 :goto_4

    .line 487
    .line 488
    :pswitch_f
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 489
    .line 490
    invoke-static {p2, p1}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 495
    .line 496
    sget-object p3, Lty5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 497
    .line 498
    invoke-static {p2, p3}, Lsa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 499
    .line 500
    .line 501
    move-result-object p3

    .line 502
    check-cast p3, Lty5;

    .line 503
    .line 504
    invoke-static {p2}, Lb19;->l(Landroid/os/Parcel;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {p0, p1, p3}, Ln94;->s(Lcom/google/android/gms/common/api/Status;Lty5;)V

    .line 508
    .line 509
    .line 510
    :goto_5
    return v3

    .line 511
    :pswitch_10
    if-le p1, v2, :cond_8

    .line 512
    .line 513
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 514
    .line 515
    .line 516
    move-result p4

    .line 517
    if-eqz p4, :cond_9

    .line 518
    .line 519
    goto :goto_6

    .line 520
    :cond_8
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object p4

    .line 524
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lb19;->o(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    :goto_6
    return v3

    .line 532
    :pswitch_11
    if-le p1, v2, :cond_a

    .line 533
    .line 534
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 535
    .line 536
    .line 537
    move-result v4

    .line 538
    goto :goto_7

    .line 539
    :cond_a
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object p3

    .line 543
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    :goto_7
    if-eqz v4, :cond_b

    .line 547
    .line 548
    goto :goto_8

    .line 549
    :cond_b
    invoke-virtual {p0, p2, p1}, Lb19;->j(Landroid/os/Parcel;I)Z

    .line 550
    .line 551
    .line 552
    move-result v3

    .line 553
    :goto_8
    return v3

    .line 554
    :pswitch_12
    if-le p1, v2, :cond_c

    .line 555
    .line 556
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 557
    .line 558
    .line 559
    move-result p3

    .line 560
    if-eqz p3, :cond_d

    .line 561
    .line 562
    goto :goto_9

    .line 563
    :cond_c
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object p3

    .line 567
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    :cond_d
    check-cast p0, Lyy9;

    .line 571
    .line 572
    const/4 p3, 0x2

    .line 573
    if-ne p1, p3, :cond_f

    .line 574
    .line 575
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 576
    .line 577
    invoke-static {p2, p1}, Lxa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 582
    .line 583
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 584
    .line 585
    invoke-static {p2, p3}, Lxa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 586
    .line 587
    .line 588
    move-result-object p3

    .line 589
    check-cast p3, Landroid/os/Bundle;

    .line 590
    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->dataAvail()I

    .line 592
    .line 593
    .line 594
    move-result p2

    .line 595
    if-gtz p2, :cond_e

    .line 596
    .line 597
    iget-object p0, p0, Lyy9;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 598
    .line 599
    invoke-static {p1, p3, p0}, Lz39;->c(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 600
    .line 601
    .line 602
    goto :goto_9

    .line 603
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 604
    .line 605
    invoke-static {p2, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object p1

    .line 609
    invoke-direct {p0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    throw p0

    .line 613
    :cond_f
    move v3, v4

    .line 614
    :goto_9
    return v3

    .line 615
    :pswitch_13
    if-le p1, v2, :cond_10

    .line 616
    .line 617
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 618
    .line 619
    .line 620
    move-result p3

    .line 621
    goto :goto_a

    .line 622
    :cond_10
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object p3

    .line 626
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    move p3, v4

    .line 630
    :goto_a
    if-eqz p3, :cond_11

    .line 631
    .line 632
    goto :goto_b

    .line 633
    :cond_11
    check-cast p0, Lkd9;

    .line 634
    .line 635
    if-ne p1, v3, :cond_13

    .line 636
    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 638
    .line 639
    .line 640
    move-result p1

    .line 641
    sget p3, Lz89;->a:I

    .line 642
    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->dataAvail()I

    .line 644
    .line 645
    .line 646
    move-result p2

    .line 647
    if-gtz p2, :cond_12

    .line 648
    .line 649
    iget-object p0, p0, Lkd9;->b:Lct9;

    .line 650
    .line 651
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 652
    .line 653
    .line 654
    move-result-object p1

    .line 655
    invoke-virtual {p0, p1}, Lct9;->a(Ljava/lang/Object;)V

    .line 656
    .line 657
    .line 658
    goto :goto_b

    .line 659
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 660
    .line 661
    invoke-static {p2, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object p1

    .line 665
    invoke-direct {p0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    throw p0

    .line 669
    :cond_13
    move v3, v4

    .line 670
    :goto_b
    return v3

    .line 671
    :pswitch_14
    if-le p1, v2, :cond_14

    .line 672
    .line 673
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 674
    .line 675
    .line 676
    move-result p4

    .line 677
    if-eqz p4, :cond_15

    .line 678
    .line 679
    goto :goto_c

    .line 680
    :cond_14
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object p4

    .line 684
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    :cond_15
    invoke-virtual {p0, p1, p2, p3}, Lb19;->n(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 688
    .line 689
    .line 690
    move-result v3

    .line 691
    :goto_c
    return v3

    .line 692
    :pswitch_15
    if-le p1, v2, :cond_16

    .line 693
    .line 694
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 695
    .line 696
    .line 697
    move-result p4

    .line 698
    if-eqz p4, :cond_17

    .line 699
    .line 700
    goto :goto_d

    .line 701
    :cond_16
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object p4

    .line 705
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    :cond_17
    invoke-virtual {p0, p1, p2, p3}, Lb19;->m(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 709
    .line 710
    .line 711
    move-result v3

    .line 712
    :goto_d
    return v3

    .line 713
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
    .end packed-switch

    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
    .end packed-switch
.end method

.method public abstract p(Lcom/google/android/gms/common/api/Status;Landroid/app/PendingIntent;)V
.end method
