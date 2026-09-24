.class public final Lcom/google/android/recaptcha/internal/zzef;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzcn;


# instance fields
.field private final zza:Lcom/google/android/recaptcha/internal/zzdt;

.field private zzb:Lcom/google/android/recaptcha/internal/zzcm;

.field private zzc:Lcom/google/android/recaptcha/internal/zzsc;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzdt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzef;->zza:Lcom/google/android/recaptcha/internal/zzdt;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzcm;->zzd()Lcom/google/android/recaptcha/internal/zzcl;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzef;->zzb:Lcom/google/android/recaptcha/internal/zzcm;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;JLjv1;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    instance-of v3, v2, Lcom/google/android/recaptcha/internal/zzed;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lcom/google/android/recaptcha/internal/zzed;

    .line 13
    .line 14
    iget v4, v3, Lcom/google/android/recaptcha/internal/zzed;->zzd:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lcom/google/android/recaptcha/internal/zzed;->zzd:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lcom/google/android/recaptcha/internal/zzed;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lcom/google/android/recaptcha/internal/zzed;-><init>(Lcom/google/android/recaptcha/internal/zzef;Ljv1;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lcom/google/android/recaptcha/internal/zzed;->zzb:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Lcom/google/android/recaptcha/internal/zzed;->zzd:I

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    sget-object v8, Lyx1;->a:Lyx1;

    .line 39
    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    if-eq v4, v6, :cond_2

    .line 43
    .line 44
    if-ne v4, v5, :cond_1

    .line 45
    .line 46
    iget-object v0, v3, Lcom/google/android/recaptcha/internal/zzed;->zzf:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v1, v3, Lcom/google/android/recaptcha/internal/zzed;->zze:Lcom/google/android/recaptcha/internal/zzef;

    .line 49
    .line 50
    :try_start_0
    invoke-static {v2}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/recaptcha/internal/zzbd; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v7

    .line 61
    :cond_2
    iget-wide v0, v3, Lcom/google/android/recaptcha/internal/zzed;->zza:D

    .line 62
    .line 63
    iget-object v4, v3, Lcom/google/android/recaptcha/internal/zzed;->zzg:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 64
    .line 65
    iget-object v6, v3, Lcom/google/android/recaptcha/internal/zzed;->zzf:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v9, v3, Lcom/google/android/recaptcha/internal/zzed;->zze:Lcom/google/android/recaptcha/internal/zzef;

    .line 68
    .line 69
    :try_start_1
    invoke-static {v2}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/android/recaptcha/internal/zzbd; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    .line 71
    .line 72
    move-wide v15, v0

    .line 73
    move-object v0, v9

    .line 74
    move-wide v9, v15

    .line 75
    move-object v1, v6

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-static {v2}, Llg7;->H(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :try_start_2
    iget-object v2, v0, Lcom/google/android/recaptcha/internal/zzef;->zzb:Lcom/google/android/recaptcha/internal/zzcm;

    .line 81
    .line 82
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzcm;->zzb()Lcom/google/android/recaptcha/internal/zzcj;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-static {v2, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_6

    .line 91
    .line 92
    move-wide/from16 v9, p3

    .line 93
    .line 94
    long-to-double v9, v9

    .line 95
    iget-object v2, v0, Lcom/google/android/recaptcha/internal/zzef;->zza:Lcom/google/android/recaptcha/internal/zzdt;

    .line 96
    .line 97
    const-wide v11, 0x3fdccccccccccccdL    # 0.45

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    mul-double/2addr v11, v9

    .line 103
    iput-object v0, v3, Lcom/google/android/recaptcha/internal/zzed;->zze:Lcom/google/android/recaptcha/internal/zzef;

    .line 104
    .line 105
    iput-object v1, v3, Lcom/google/android/recaptcha/internal/zzed;->zzf:Ljava/lang/String;

    .line 106
    .line 107
    move-object/from16 v4, p2

    .line 108
    .line 109
    iput-object v4, v3, Lcom/google/android/recaptcha/internal/zzed;->zzg:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 110
    .line 111
    const-wide v13, 0x3fe199999999999aL    # 0.55

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    mul-double/2addr v9, v13

    .line 117
    iput-wide v9, v3, Lcom/google/android/recaptcha/internal/zzed;->zza:D

    .line 118
    .line 119
    iput v6, v3, Lcom/google/android/recaptcha/internal/zzed;->zzd:I

    .line 120
    .line 121
    double-to-long v11, v11

    .line 122
    invoke-virtual {v2, v1, v11, v12, v3}, Lcom/google/android/recaptcha/internal/zzdt;->zzl(Ljava/lang/String;JLjv1;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    if-eq v2, v8, :cond_5

    .line 127
    .line 128
    :goto_1
    check-cast v2, Lcom/google/android/recaptcha/internal/zzsi;

    .line 129
    .line 130
    iget-object v6, v0, Lcom/google/android/recaptcha/internal/zzef;->zza:Lcom/google/android/recaptcha/internal/zzdt;

    .line 131
    .line 132
    iget-object v11, v0, Lcom/google/android/recaptcha/internal/zzef;->zzc:Lcom/google/android/recaptcha/internal/zzsc;

    .line 133
    .line 134
    if-nez v11, :cond_4

    .line 135
    .line 136
    move-object v11, v7

    .line 137
    :cond_4
    invoke-virtual {v6, v4, v2, v11}, Lcom/google/android/recaptcha/internal/zzdt;->zzi(Lcom/google/android/recaptcha/RecaptchaAction;Lcom/google/android/recaptcha/internal/zzsi;Lcom/google/android/recaptcha/internal/zzsc;)Lcom/google/android/recaptcha/internal/zzsp;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iget-object v4, v0, Lcom/google/android/recaptcha/internal/zzef;->zza:Lcom/google/android/recaptcha/internal/zzdt;

    .line 142
    .line 143
    double-to-long v9, v9

    .line 144
    iput-object v0, v3, Lcom/google/android/recaptcha/internal/zzed;->zze:Lcom/google/android/recaptcha/internal/zzef;

    .line 145
    .line 146
    iput-object v1, v3, Lcom/google/android/recaptcha/internal/zzed;->zzf:Ljava/lang/String;

    .line 147
    .line 148
    iput-object v7, v3, Lcom/google/android/recaptcha/internal/zzed;->zzg:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 149
    .line 150
    iput v5, v3, Lcom/google/android/recaptcha/internal/zzed;->zzd:I

    .line 151
    .line 152
    move-object/from16 p2, v1

    .line 153
    .line 154
    move-object/from16 p1, v2

    .line 155
    .line 156
    move-object/from16 p5, v3

    .line 157
    .line 158
    move-object/from16 p0, v4

    .line 159
    .line 160
    move-wide/from16 p3, v9

    .line 161
    .line 162
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/recaptcha/internal/zzdt;->zzm(Lcom/google/android/recaptcha/internal/zzsp;Ljava/lang/String;JLjv1;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    move-object/from16 v1, p2

    .line 167
    .line 168
    if-eq v2, v8, :cond_5

    .line 169
    .line 170
    move-object v15, v1

    .line 171
    move-object v1, v0

    .line 172
    move-object v0, v15

    .line 173
    :goto_2
    check-cast v2, Lcom/google/android/recaptcha/internal/zzsr;

    .line 174
    .line 175
    iget-object v1, v1, Lcom/google/android/recaptcha/internal/zzef;->zza:Lcom/google/android/recaptcha/internal/zzdt;

    .line 176
    .line 177
    invoke-virtual {v1, v0, v2}, Lcom/google/android/recaptcha/internal/zzdt;->zzq(Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzsr;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Lcom/google/android/recaptcha/internal/zzsr;->zzj()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    return-object v0

    .line 185
    :cond_5
    return-object v8

    .line 186
    :cond_6
    new-instance v0, Lcom/google/android/recaptcha/internal/zzbd;

    .line 187
    .line 188
    sget-object v1, Lcom/google/android/recaptcha/internal/zzbb;->zzb:Lcom/google/android/recaptcha/internal/zzbb;

    .line 189
    .line 190
    sget-object v2, Lcom/google/android/recaptcha/internal/zzba;->zzar:Lcom/google/android/recaptcha/internal/zzba;

    .line 191
    .line 192
    invoke-direct {v0, v1, v2, v7}, Lcom/google/android/recaptcha/internal/zzbd;-><init>(Lcom/google/android/recaptcha/internal/zzbb;Lcom/google/android/recaptcha/internal/zzba;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v0
    :try_end_2
    .catch Lcom/google/android/recaptcha/internal/zzbd; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    new-instance v1, Lcom/google/android/recaptcha/internal/zzbd;

    .line 198
    .line 199
    sget-object v2, Lcom/google/android/recaptcha/internal/zzbb;->zzb:Lcom/google/android/recaptcha/internal/zzbb;

    .line 200
    .line 201
    sget-object v3, Lcom/google/android/recaptcha/internal/zzba;->zzaz:Lcom/google/android/recaptcha/internal/zzba;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/recaptcha/internal/zzbd;-><init>(Lcom/google/android/recaptcha/internal/zzbb;Lcom/google/android/recaptcha/internal/zzba;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v1

    .line 211
    :catch_1
    move-exception v0

    .line 212
    throw v0
.end method

.method public final zzb(JLjv1;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p3, Lcom/google/android/recaptcha/internal/zzee;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/google/android/recaptcha/internal/zzee;

    .line 7
    .line 8
    iget v1, v0, Lcom/google/android/recaptcha/internal/zzee;->zzd:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/google/android/recaptcha/internal/zzee;->zzd:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/google/android/recaptcha/internal/zzee;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/google/android/recaptcha/internal/zzee;-><init>(Lcom/google/android/recaptcha/internal/zzef;Ljv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/google/android/recaptcha/internal/zzee;->zzb:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcom/google/android/recaptcha/internal/zzee;->zzd:I

    .line 28
    .line 29
    sget-object v2, Lbe8;->a:Lbe8;

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    sget-object v5, Lyx1;->a:Lyx1;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    if-eq v1, v4, :cond_2

    .line 38
    .line 39
    if-ne v1, v3, :cond_1

    .line 40
    .line 41
    iget-object p0, v0, Lcom/google/android/recaptcha/internal/zzee;->zze:Lcom/google/android/recaptcha/internal/zzef;

    .line 42
    .line 43
    :try_start_0
    invoke-static {p3}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/recaptcha/internal/zzbd; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0

    .line 57
    :cond_2
    iget-wide p0, v0, Lcom/google/android/recaptcha/internal/zzee;->zza:D

    .line 58
    .line 59
    iget-object p2, v0, Lcom/google/android/recaptcha/internal/zzee;->zze:Lcom/google/android/recaptcha/internal/zzef;

    .line 60
    .line 61
    :try_start_1
    invoke-static {p3}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/android/recaptcha/internal/zzbd; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .line 63
    .line 64
    move-wide v10, p0

    .line 65
    move-object p0, p2

    .line 66
    move-wide p1, v10

    .line 67
    goto :goto_1

    .line 68
    :catch_1
    move-exception p1

    .line 69
    move-object p0, p2

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    invoke-static {p3}, Llg7;->H(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object p3, p0, Lcom/google/android/recaptcha/internal/zzef;->zzb:Lcom/google/android/recaptcha/internal/zzcm;

    .line 75
    .line 76
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzcm;->zzb()Lcom/google/android/recaptcha/internal/zzcj;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {p3, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    if-nez p3, :cond_6

    .line 85
    .line 86
    iget-object p3, p0, Lcom/google/android/recaptcha/internal/zzef;->zzb:Lcom/google/android/recaptcha/internal/zzcm;

    .line 87
    .line 88
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzcm;->zza()Lcom/google/android/recaptcha/internal/zzci;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {p3, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    if-eqz p3, :cond_4

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_4
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzcm;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zzef;->zzb:Lcom/google/android/recaptcha/internal/zzcm;

    .line 104
    .line 105
    long-to-double p1, p1

    .line 106
    :try_start_2
    iget-object p3, p0, Lcom/google/android/recaptcha/internal/zzef;->zza:Lcom/google/android/recaptcha/internal/zzdt;

    .line 107
    .line 108
    const-wide v6, 0x3fe3333333333333L    # 0.6

    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    mul-double/2addr v6, p1

    .line 114
    iput-object p0, v0, Lcom/google/android/recaptcha/internal/zzee;->zze:Lcom/google/android/recaptcha/internal/zzef;

    .line 115
    .line 116
    const-wide v8, 0x3fd999999999999aL    # 0.4

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    mul-double/2addr p1, v8

    .line 122
    iput-wide p1, v0, Lcom/google/android/recaptcha/internal/zzee;->zza:D

    .line 123
    .line 124
    iput v4, v0, Lcom/google/android/recaptcha/internal/zzee;->zzd:I

    .line 125
    .line 126
    double-to-long v6, v6

    .line 127
    invoke-virtual {p3, v6, v7, v0}, Lcom/google/android/recaptcha/internal/zzdt;->zzo(JLjv1;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    if-eq p3, v5, :cond_5

    .line 132
    .line 133
    :goto_1
    check-cast p3, Lcom/google/android/recaptcha/internal/zzsc;

    .line 134
    .line 135
    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zzef;->zzc:Lcom/google/android/recaptcha/internal/zzsc;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzef;->zza:Lcom/google/android/recaptcha/internal/zzdt;

    .line 138
    .line 139
    double-to-long p1, p1

    .line 140
    iput-object p0, v0, Lcom/google/android/recaptcha/internal/zzee;->zze:Lcom/google/android/recaptcha/internal/zzef;

    .line 141
    .line 142
    iput v3, v0, Lcom/google/android/recaptcha/internal/zzee;->zzd:I

    .line 143
    .line 144
    invoke-virtual {v1, p3, p1, p2, v0}, Lcom/google/android/recaptcha/internal/zzdt;->zzn(Lcom/google/android/recaptcha/internal/zzsc;JLjv1;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-eq p1, v5, :cond_5

    .line 149
    .line 150
    :goto_2
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzcm;->zzb()Lcom/google/android/recaptcha/internal/zzcj;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzef;->zzb:Lcom/google/android/recaptcha/internal/zzcm;
    :try_end_2
    .catch Lcom/google/android/recaptcha/internal/zzbd; {:try_start_2 .. :try_end_2} :catch_0

    .line 155
    .line 156
    return-object v2

    .line 157
    :cond_5
    return-object v5

    .line 158
    :goto_3
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzcm;->zza()Lcom/google/android/recaptcha/internal/zzci;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzef;->zzb:Lcom/google/android/recaptcha/internal/zzcm;

    .line 163
    .line 164
    throw p1

    .line 165
    :cond_6
    :goto_4
    return-object v2
.end method
