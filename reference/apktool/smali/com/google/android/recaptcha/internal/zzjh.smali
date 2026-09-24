.class public final Lcom/google/android/recaptcha/internal/zzjh;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private zza:Z

.field private zzb:J

.field private zzc:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static zzb()Lcom/google/android/recaptcha/internal/zzjh;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzjh;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzjh;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzjh;->zze()Lcom/google/android/recaptcha/internal/zzjh;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static zzc()Lcom/google/android/recaptcha/internal/zzjh;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzjh;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzjh;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final zzg()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/recaptcha/internal/zzjh;->zza:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lcom/google/android/recaptcha/internal/zzjh;->zzc:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    iget-wide v2, p0, Lcom/google/android/recaptcha/internal/zzjh;->zzb:J

    .line 13
    .line 14
    add-long/2addr v0, v2

    .line 15
    return-wide v0

    .line 16
    :cond_0
    iget-wide v0, p0, Lcom/google/android/recaptcha/internal/zzjh;->zzb:J

    .line 17
    .line 18
    return-wide v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzjh;->zzg()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x4e94914f0000L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    div-long v2, v0, v2

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long p0, v2, v4

    .line 15
    .line 16
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    .line 18
    if-lez p0, :cond_0

    .line 19
    .line 20
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-wide v6, 0x34630b8a000L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    div-long v6, v0, v6

    .line 29
    .line 30
    cmp-long p0, v6, v4

    .line 31
    .line 32
    if-lez p0, :cond_1

    .line 33
    .line 34
    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-wide v6, 0xdf8475800L

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    div-long v6, v0, v6

    .line 43
    .line 44
    cmp-long p0, v6, v4

    .line 45
    .line 46
    if-lez p0, :cond_2

    .line 47
    .line 48
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-wide/32 v6, 0x3b9aca00

    .line 52
    .line 53
    .line 54
    div-long v6, v0, v6

    .line 55
    .line 56
    cmp-long p0, v6, v4

    .line 57
    .line 58
    if-lez p0, :cond_3

    .line 59
    .line 60
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const-wide/32 v6, 0xf4240

    .line 64
    .line 65
    .line 66
    div-long v6, v0, v6

    .line 67
    .line 68
    cmp-long p0, v6, v4

    .line 69
    .line 70
    if-lez p0, :cond_4

    .line 71
    .line 72
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const-wide/16 v6, 0x3e8

    .line 76
    .line 77
    div-long v6, v0, v6

    .line 78
    .line 79
    cmp-long p0, v6, v4

    .line 80
    .line 81
    if-lez p0, :cond_5

    .line 82
    .line 83
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    move-object p0, v2

    .line 87
    :goto_0
    long-to-double v0, v0

    .line 88
    const-wide/16 v3, 0x1

    .line 89
    .line 90
    invoke-virtual {v2, v3, v4, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    long-to-double v2, v2

    .line 95
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 96
    .line 97
    div-double/2addr v0, v2

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v1, "%.4g"

    .line 107
    .line 108
    invoke-static {v4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sget-object v1, Lcom/google/android/recaptcha/internal/zzjg;->zza:[I

    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    aget p0, v1, p0

    .line 119
    .line 120
    packed-switch p0, :pswitch_data_0

    .line 121
    .line 122
    .line 123
    invoke-static {}, Ld6;->n()V

    .line 124
    .line 125
    .line 126
    const/4 p0, 0x0

    .line 127
    return-object p0

    .line 128
    :pswitch_0
    const-string p0, "d"

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :pswitch_1
    const-string p0, "h"

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :pswitch_2
    const-string p0, "min"

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :pswitch_3
    const-string p0, "s"

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :pswitch_4
    const-string p0, "ms"

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :pswitch_5
    const-string p0, "\u03bcs"

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :pswitch_6
    const-string p0, "ns"

    .line 147
    .line 148
    :goto_1
    const-string v1, " "

    .line 149
    .line 150
    invoke-static {v0, v1, p0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzjh;->zzg()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public final zzd()Lcom/google/android/recaptcha/internal/zzjh;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/android/recaptcha/internal/zzjh;->zzb:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/recaptcha/internal/zzjh;->zza:Z

    .line 7
    .line 8
    return-object p0
.end method

.method public final zze()Lcom/google/android/recaptcha/internal/zzjh;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/recaptcha/internal/zzjh;->zza:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    const-string v2, "This stopwatch is already running."

    .line 6
    .line 7
    invoke-static {v0, v2}, Lcom/google/android/recaptcha/internal/zzjf;->zze(ZLjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/google/android/recaptcha/internal/zzjh;->zza:Z

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lcom/google/android/recaptcha/internal/zzjh;->zzc:J

    .line 17
    .line 18
    return-object p0
.end method

.method public final zzf()Lcom/google/android/recaptcha/internal/zzjh;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-boolean v2, p0, Lcom/google/android/recaptcha/internal/zzjh;->zza:Z

    .line 6
    .line 7
    const-string v3, "This stopwatch is already stopped."

    .line 8
    .line 9
    invoke-static {v2, v3}, Lcom/google/android/recaptcha/internal/zzjf;->zze(ZLjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-boolean v2, p0, Lcom/google/android/recaptcha/internal/zzjh;->zza:Z

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/google/android/recaptcha/internal/zzjh;->zzb:J

    .line 16
    .line 17
    iget-wide v4, p0, Lcom/google/android/recaptcha/internal/zzjh;->zzc:J

    .line 18
    .line 19
    sub-long/2addr v0, v4

    .line 20
    add-long/2addr v0, v2

    .line 21
    iput-wide v0, p0, Lcom/google/android/recaptcha/internal/zzjh;->zzb:J

    .line 22
    .line 23
    return-object p0
.end method
