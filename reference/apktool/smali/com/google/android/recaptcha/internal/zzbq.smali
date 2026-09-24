.class public final Lcom/google/android/recaptcha/internal/zzbq;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzbq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzbq;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzbq;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/recaptcha/internal/zzbq;->zza:Lcom/google/android/recaptcha/internal/zzbq;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza(Lmt3;JJDLmt3;Ljv1;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p9

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/recaptcha/internal/zzbp;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/google/android/recaptcha/internal/zzbp;

    .line 9
    .line 10
    iget v2, v1, Lcom/google/android/recaptcha/internal/zzbp;->zzh:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/google/android/recaptcha/internal/zzbp;->zzh:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/google/android/recaptcha/internal/zzbp;

    .line 23
    .line 24
    move-object/from16 v2, p0

    .line 25
    .line 26
    invoke-direct {v1, v2, v0}, Lcom/google/android/recaptcha/internal/zzbp;-><init>(Lcom/google/android/recaptcha/internal/zzbq;Ljv1;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lcom/google/android/recaptcha/internal/zzbp;->zzf:Ljava/lang/Object;

    .line 30
    .line 31
    iget v2, v1, Lcom/google/android/recaptcha/internal/zzbp;->zzh:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    sget-object v5, Lyx1;->a:Lyx1;

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    if-eq v2, v4, :cond_2

    .line 40
    .line 41
    if-ne v2, v3, :cond_1

    .line 42
    .line 43
    iget-wide v6, v1, Lcom/google/android/recaptcha/internal/zzbp;->zzd:J

    .line 44
    .line 45
    iget-wide v8, v1, Lcom/google/android/recaptcha/internal/zzbp;->zze:D

    .line 46
    .line 47
    iget-wide v10, v1, Lcom/google/android/recaptcha/internal/zzbp;->zzc:J

    .line 48
    .line 49
    iget-object v2, v1, Lcom/google/android/recaptcha/internal/zzbp;->zzb:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Lmt3;

    .line 52
    .line 53
    iget-object v12, v1, Lcom/google/android/recaptcha/internal/zzbp;->zza:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v12, Lmt3;

    .line 56
    .line 57
    invoke-static {v0}, Llg7;->H(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    move-object v14, v12

    .line 61
    move-object v12, v1

    .line 62
    move-object v1, v14

    .line 63
    move-wide v14, v10

    .line 64
    move-wide v10, v8

    .line 65
    move-wide v8, v14

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 68
    .line 69
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    return-object v0

    .line 74
    :cond_2
    iget-wide v6, v1, Lcom/google/android/recaptcha/internal/zzbp;->zzd:J

    .line 75
    .line 76
    iget-wide v8, v1, Lcom/google/android/recaptcha/internal/zzbp;->zze:D

    .line 77
    .line 78
    iget-wide v10, v1, Lcom/google/android/recaptcha/internal/zzbp;->zzc:J

    .line 79
    .line 80
    iget-object v2, v1, Lcom/google/android/recaptcha/internal/zzbp;->zzb:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Lmt3;

    .line 83
    .line 84
    iget-object v12, v1, Lcom/google/android/recaptcha/internal/zzbp;->zza:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v12, Lmt3;

    .line 87
    .line 88
    :try_start_0
    invoke-static {v0}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    invoke-static {v0}, Llg7;->H(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    move-wide/from16 v6, p2

    .line 98
    .line 99
    move-wide/from16 v8, p4

    .line 100
    .line 101
    move-wide/from16 v10, p6

    .line 102
    .line 103
    move-object/from16 v2, p8

    .line 104
    .line 105
    move-object v12, v1

    .line 106
    move-object/from16 v1, p1

    .line 107
    .line 108
    :goto_2
    :try_start_1
    iput-object v1, v12, Lcom/google/android/recaptcha/internal/zzbp;->zza:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object v2, v12, Lcom/google/android/recaptcha/internal/zzbp;->zzb:Ljava/lang/Object;

    .line 111
    .line 112
    iput-wide v8, v12, Lcom/google/android/recaptcha/internal/zzbp;->zzc:J

    .line 113
    .line 114
    iput-wide v10, v12, Lcom/google/android/recaptcha/internal/zzbp;->zze:D

    .line 115
    .line 116
    iput-wide v6, v12, Lcom/google/android/recaptcha/internal/zzbp;->zzd:J

    .line 117
    .line 118
    iput v4, v12, Lcom/google/android/recaptcha/internal/zzbp;->zzh:I

    .line 119
    .line 120
    invoke-interface {v2, v12}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    if-ne v0, v5, :cond_4

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_4
    return-object v0

    .line 128
    :catch_1
    move-exception v0

    .line 129
    move-object v14, v12

    .line 130
    move-object v12, v1

    .line 131
    move-object v1, v14

    .line 132
    move-wide v14, v10

    .line 133
    move-wide v10, v8

    .line 134
    move-wide v8, v14

    .line 135
    :goto_3
    invoke-interface {v12, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    check-cast v13, Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    if-eqz v13, :cond_7

    .line 146
    .line 147
    long-to-double v6, v6

    .line 148
    mul-double/2addr v6, v8

    .line 149
    double-to-long v6, v6

    .line 150
    cmp-long v0, v6, v10

    .line 151
    .line 152
    if-lez v0, :cond_5

    .line 153
    .line 154
    move-wide v6, v10

    .line 155
    :cond_5
    iput-object v12, v1, Lcom/google/android/recaptcha/internal/zzbp;->zza:Ljava/lang/Object;

    .line 156
    .line 157
    iput-object v2, v1, Lcom/google/android/recaptcha/internal/zzbp;->zzb:Ljava/lang/Object;

    .line 158
    .line 159
    iput-wide v10, v1, Lcom/google/android/recaptcha/internal/zzbp;->zzc:J

    .line 160
    .line 161
    iput-wide v8, v1, Lcom/google/android/recaptcha/internal/zzbp;->zze:D

    .line 162
    .line 163
    iput-wide v6, v1, Lcom/google/android/recaptcha/internal/zzbp;->zzd:J

    .line 164
    .line 165
    iput v3, v1, Lcom/google/android/recaptcha/internal/zzbp;->zzh:I

    .line 166
    .line 167
    invoke-static {v6, v7, v1}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-eq v0, v5, :cond_6

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_6
    :goto_4
    return-object v5

    .line 175
    :cond_7
    throw v0
.end method
