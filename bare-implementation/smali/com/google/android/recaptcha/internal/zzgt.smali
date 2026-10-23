.class public final Lcom/google/android/recaptcha/internal/zzgt;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzgx;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzgt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzgt;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzgt;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/recaptcha/internal/zzgt;->zza:Lcom/google/android/recaptcha/internal/zzgt;

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
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzgd;[Lcom/google/android/recaptcha/internal/zzue;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzce;
        }
    .end annotation

    .line 1
    array-length p0, p3

    .line 2
    const/4 v0, 0x3

    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x4

    .line 6
    if-eq p0, v3, :cond_1

    .line 7
    .line 8
    if-ne p0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v3, v0, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const/4 v5, 0x0

    .line 20
    aget-object v5, p3, v5

    .line 21
    .line 22
    invoke-virtual {v4, v5}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    instance-of v5, v4, Ljava/lang/Integer;

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    if-eq v6, v5, :cond_2

    .line 30
    .line 31
    move-object v4, v2

    .line 32
    :cond_2
    check-cast v4, Ljava/lang/Integer;

    .line 33
    .line 34
    if-eqz v4, :cond_a

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    aget-object v7, p3, v6

    .line 45
    .line 46
    invoke-virtual {v5, v7}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    instance-of v7, v5, Ljava/lang/Integer;

    .line 51
    .line 52
    if-eq v6, v7, :cond_3

    .line 53
    .line 54
    move-object v5, v2

    .line 55
    :cond_3
    check-cast v5, Ljava/lang/Integer;

    .line 56
    .line 57
    if-eqz v5, :cond_9

    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    const/4 v8, 0x2

    .line 68
    aget-object v8, p3, v8

    .line 69
    .line 70
    invoke-virtual {v7, v8}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    instance-of v8, v7, Ljava/lang/String;

    .line 75
    .line 76
    if-eq v6, v8, :cond_4

    .line 77
    .line 78
    move-object v7, v2

    .line 79
    :cond_4
    check-cast v7, Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v7, :cond_8

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzh()Lcom/google/android/recaptcha/internal/zzcg;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-virtual {v8, v7}, Lcom/google/android/recaptcha/internal/zzcg;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    aget-object v0, p3, v0

    .line 96
    .line 97
    invoke-virtual {v8, v0}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    instance-of v8, v0, Ljava/lang/String;

    .line 102
    .line 103
    if-eq v6, v8, :cond_5

    .line 104
    .line 105
    move-object v0, v2

    .line 106
    :cond_5
    check-cast v0, Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzh()Lcom/google/android/recaptcha/internal/zzcg;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v6, v0}, Lcom/google/android/recaptcha/internal/zzcg;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-ne p0, v1, :cond_6

    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    aget-object p3, p3, v3

    .line 125
    .line 126
    invoke-virtual {p0, p3}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    :cond_6
    new-instance p0, Lcom/google/android/recaptcha/internal/zzfz;

    .line 131
    .line 132
    invoke-direct {p0, v5}, Lcom/google/android/recaptcha/internal/zzfz;-><init>(I)V

    .line 133
    .line 134
    .line 135
    :try_start_0
    invoke-static {v7}, Lcom/google/android/recaptcha/internal/zzgc;->zza(Ljava/lang/Object;)Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    filled-new-array {p3}, [Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    new-instance v5, Lcom/google/android/recaptcha/internal/zzga;

    .line 152
    .line 153
    invoke-direct {v5, p0, v0, v2}, Lcom/google/android/recaptcha/internal/zzga;-><init>(Lcom/google/android/recaptcha/internal/zzfz;Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v3, p3, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    invoke-virtual {v1, v4, p3}, Lcom/google/android/recaptcha/internal/zzge;->zze(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {p2, p1, p0}, Lcom/google/android/recaptcha/internal/zzge;->zze(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :catch_0
    move-exception p0

    .line 172
    const/4 p1, 0x6

    .line 173
    const/16 p2, 0x14

    .line 174
    .line 175
    invoke-static {p1, p2, p0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_7
    invoke-static {v3, v1, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_8
    invoke-static {v3, v1, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_9
    invoke-static {v3, v1, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_a
    invoke-static {v3, v1, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method
