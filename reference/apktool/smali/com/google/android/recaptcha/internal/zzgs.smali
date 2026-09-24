.class public final Lcom/google/android/recaptcha/internal/zzgs;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzgx;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzgs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzgs;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzgs;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/recaptcha/internal/zzgs;->zza:Lcom/google/android/recaptcha/internal/zzgs;

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
    instance-of v5, v4, Ljava/lang/String;

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
    check-cast v4, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v4, :cond_b

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    aget-object v7, p3, v6

    .line 41
    .line 42
    invoke-virtual {v5, v7}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-static {v5}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eq v6, v7, :cond_3

    .line 51
    .line 52
    move-object v5, v2

    .line 53
    :cond_3
    if-eqz v5, :cond_a

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const/4 v8, 0x2

    .line 60
    aget-object v8, p3, v8

    .line 61
    .line 62
    invoke-virtual {v7, v8}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    instance-of v8, v7, Ljava/lang/String;

    .line 67
    .line 68
    if-eq v6, v8, :cond_4

    .line 69
    .line 70
    move-object v7, v2

    .line 71
    :cond_4
    check-cast v7, Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v7, :cond_9

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzh()Lcom/google/android/recaptcha/internal/zzcg;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v8, v7}, Lcom/google/android/recaptcha/internal/zzcg;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    aget-object v0, p3, v0

    .line 88
    .line 89
    invoke-virtual {v8, v0}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-ne p0, v1, :cond_7

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    aget-object p3, p3, v3

    .line 100
    .line 101
    invoke-virtual {p0, p3}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    instance-of p3, p0, Ljava/lang/Integer;

    .line 106
    .line 107
    if-eq v6, p3, :cond_5

    .line 108
    .line 109
    move-object p0, v2

    .line 110
    :cond_5
    check-cast p0, Ljava/lang/Integer;

    .line 111
    .line 112
    if-eqz p0, :cond_6

    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    goto :goto_1

    .line 119
    :cond_6
    invoke-static {v3, v1, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_7
    const/4 p0, -0x1

    .line 124
    :goto_1
    :try_start_0
    instance-of p3, v5, Ljava/lang/String;

    .line 125
    .line 126
    if-eqz p3, :cond_8

    .line 127
    .line 128
    check-cast v5, Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzh()Lcom/google/android/recaptcha/internal/zzcg;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-virtual {p3, v5}, Lcom/google/android/recaptcha/internal/zzcg;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    :cond_8
    invoke-static {v5}, Lcom/google/android/recaptcha/internal/zzgc;->zza(Ljava/lang/Object;)Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    new-instance v1, Lcom/google/android/recaptcha/internal/zzgr;

    .line 143
    .line 144
    invoke-direct {v1, p2, v4, p0}, Lcom/google/android/recaptcha/internal/zzgr;-><init>(Lcom/google/android/recaptcha/internal/zzgd;Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    filled-new-array {p3}, [Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    new-instance v2, Lcom/google/android/recaptcha/internal/zzfy;

    .line 156
    .line 157
    invoke-direct {v2, v1, v7, v0}, Lcom/google/android/recaptcha/internal/zzfy;-><init>(Lqt3;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-static {p0, p3, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {p2, p1, p0}, Lcom/google/android/recaptcha/internal/zzge;->zze(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :catch_0
    move-exception p0

    .line 173
    const/4 p1, 0x6

    .line 174
    const/16 p2, 0x14

    .line 175
    .line 176
    invoke-static {p1, p2, p0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_9
    invoke-static {v3, v1, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_a
    invoke-static {v3, v1, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_b
    invoke-static {v3, v1, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method
