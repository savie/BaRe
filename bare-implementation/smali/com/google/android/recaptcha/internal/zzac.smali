.class final Lcom/google/android/recaptcha/internal/zzac;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field zza:Ljava/lang/Object;

.field zzb:I

.field final synthetic zzc:Lcom/google/android/recaptcha/internal/zzae;

.field final synthetic zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzae;Ljava/lang/String;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzac;->zzc:Lcom/google/android/recaptcha/internal/zzae;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzac;->zzd:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzac;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzac;->zzc:Lcom/google/android/recaptcha/internal/zzae;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzac;->zzd:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lcom/google/android/recaptcha/internal/zzac;-><init>(Lcom/google/android/recaptcha/internal/zzae;Ljava/lang/String;Ljv1;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzac;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/recaptcha/internal/zzac;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzac;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzac;->zzb:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lyx1;->a:Lyx1;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzac;->zza:Ljava/lang/Object;

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    check-cast v3, Lcom/google/android/recaptcha/internal/zzy;

    .line 13
    .line 14
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    check-cast v3, Lcom/google/android/recaptcha/internal/zzen;

    .line 20
    .line 21
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzac;->zzc:Lcom/google/android/recaptcha/internal/zzae;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzac;->zzd:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/google/android/recaptcha/internal/zzz;->zzb(Lcom/google/android/recaptcha/internal/zzy;Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zzen;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    :try_start_1
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzac;->zzc:Lcom/google/android/recaptcha/internal/zzae;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzae;->zzg(Lcom/google/android/recaptcha/internal/zzae;)Lcom/google/android/recaptcha/internal/zzan;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzae;->zzh(Lcom/google/android/recaptcha/internal/zzae;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object v3, p0, Lcom/google/android/recaptcha/internal/zzac;->zza:Ljava/lang/Object;

    .line 49
    .line 50
    iput v1, p0, Lcom/google/android/recaptcha/internal/zzac;->zzb:I

    .line 51
    .line 52
    invoke-virtual {v0, p1, p0}, Lcom/google/android/recaptcha/internal/zzan;->zzc(Ljava/lang/String;Ljv1;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eq p1, v2, :cond_8

    .line 57
    .line 58
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/google/android/recaptcha/internal/zzen;->zza()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzac;->zzc:Lcom/google/android/recaptcha/internal/zzae;

    .line 64
    .line 65
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzti;->zzf()Lcom/google/android/recaptcha/internal/zztf;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzth;->zzf()Lcom/google/android/recaptcha/internal/zztg;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4, p1}, Lcom/google/android/recaptcha/internal/zztg;->zzw(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zztg;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/google/android/recaptcha/internal/zzmx;->zzi()Lcom/google/android/recaptcha/internal/zznd;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lcom/google/android/recaptcha/internal/zzth;

    .line 81
    .line 82
    invoke-virtual {v1, p1}, Lcom/google/android/recaptcha/internal/zztf;->zzf(Lcom/google/android/recaptcha/internal/zzth;)Lcom/google/android/recaptcha/internal/zztf;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/google/android/recaptcha/internal/zzmx;->zzi()Lcom/google/android/recaptcha/internal/zznd;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/google/android/recaptcha/internal/zzti;

    .line 90
    .line 91
    invoke-static {v0, p1}, Lcom/google/android/recaptcha/internal/zzz;->zza(Lcom/google/android/recaptcha/internal/zzy;Lcom/google/android/recaptcha/internal/zzti;)Lcom/google/android/recaptcha/internal/zzaa;

    .line 92
    .line 93
    .line 94
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    return-object p0

    .line 96
    :goto_1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzbd;

    .line 97
    .line 98
    sget-object v1, Lcom/google/android/recaptcha/internal/zzbb;->zzb:Lcom/google/android/recaptcha/internal/zzbb;

    .line 99
    .line 100
    sget-object v4, Lcom/google/android/recaptcha/internal/zzba;->zzaa:Lcom/google/android/recaptcha/internal/zzba;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/recaptcha/internal/zzbd;-><init>(Lcom/google/android/recaptcha/internal/zzbb;Lcom/google/android/recaptcha/internal/zzba;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v0}, Lcom/google/android/recaptcha/internal/zzen;->zzb(Lcom/google/android/recaptcha/internal/zzbd;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzac;->zzc:Lcom/google/android/recaptcha/internal/zzae;

    .line 113
    .line 114
    iput-object v3, p0, Lcom/google/android/recaptcha/internal/zzac;->zza:Ljava/lang/Object;

    .line 115
    .line 116
    const/4 v0, 0x2

    .line 117
    iput v0, p0, Lcom/google/android/recaptcha/internal/zzac;->zzb:I

    .line 118
    .line 119
    instance-of p0, p1, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    .line 120
    .line 121
    if-eqz p0, :cond_7

    .line 122
    .line 123
    check-cast p1, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityException;->getErrorCode()I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    const/16 p1, -0x64

    .line 130
    .line 131
    if-eq p0, p1, :cond_6

    .line 132
    .line 133
    const/16 p1, -0xc

    .line 134
    .line 135
    if-eq p0, p1, :cond_5

    .line 136
    .line 137
    const/4 p1, -0x3

    .line 138
    if-eq p0, p1, :cond_4

    .line 139
    .line 140
    const/4 p1, -0x2

    .line 141
    if-eq p0, p1, :cond_3

    .line 142
    .line 143
    const/4 p1, -0x1

    .line 144
    if-eq p0, p1, :cond_2

    .line 145
    .line 146
    packed-switch p0, :pswitch_data_0

    .line 147
    .line 148
    .line 149
    packed-switch p0, :pswitch_data_1

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :pswitch_0
    const/16 v0, 0x20

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :pswitch_1
    const/16 v0, 0x21

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :pswitch_2
    const/16 v0, 0x22

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :pswitch_3
    const/16 v0, 0x23

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :pswitch_4
    const/16 v0, 0x24

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :pswitch_5
    const/16 v0, 0x29

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :pswitch_6
    const/16 v0, 0x2a

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :pswitch_7
    const/16 v0, 0x2b

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :pswitch_8
    const/16 v0, 0x34

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :pswitch_9
    const/16 v0, 0x35

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :pswitch_a
    const/16 v0, 0x36

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_2
    const/16 v0, 0x1c

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_3
    const/16 v0, 0x1d

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_4
    const/16 v0, 0x1e

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_5
    const/16 v0, 0x27

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_6
    const/16 v0, 0x2c

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_7
    const/16 v0, 0x2d

    .line 202
    .line 203
    :goto_2
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzte;->zzf()Lcom/google/android/recaptcha/internal/zztd;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-virtual {p0, v0}, Lcom/google/android/recaptcha/internal/zztd;->zzq(I)Lcom/google/android/recaptcha/internal/zztd;

    .line 208
    .line 209
    .line 210
    const/16 p1, 0xf

    .line 211
    .line 212
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zztd;->zzr(I)Lcom/google/android/recaptcha/internal/zztd;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzmx;->zzi()Lcom/google/android/recaptcha/internal/zznd;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    if-eq p1, v2, :cond_8

    .line 220
    .line 221
    :goto_3
    check-cast p1, Lcom/google/android/recaptcha/internal/zzte;

    .line 222
    .line 223
    new-instance p0, Lcom/google/android/recaptcha/internal/zzw;

    .line 224
    .line 225
    invoke-interface {v3}, Lcom/google/android/recaptcha/internal/zzy;->zza()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zznd;->zzr()Lcom/google/android/recaptcha/internal/zzmx;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Lcom/google/android/recaptcha/internal/zztd;

    .line 234
    .line 235
    invoke-interface {v3}, Lcom/google/android/recaptcha/internal/zzy;->zza()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-virtual {p1, v1}, Lcom/google/android/recaptcha/internal/zztd;->zzf(I)Lcom/google/android/recaptcha/internal/zztd;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzmx;->zzi()Lcom/google/android/recaptcha/internal/zznd;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    check-cast p1, Lcom/google/android/recaptcha/internal/zzte;

    .line 247
    .line 248
    invoke-direct {p0, v0, p1}, Lcom/google/android/recaptcha/internal/zzw;-><init>(ILcom/google/android/recaptcha/internal/zzte;)V

    .line 249
    .line 250
    .line 251
    return-object p0

    .line 252
    :cond_8
    return-object v2

    .line 253
    :pswitch_data_0
    .packed-switch -0x13
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :pswitch_data_1
    .packed-switch -0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
