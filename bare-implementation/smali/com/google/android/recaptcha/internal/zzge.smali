.class public final Lcom/google/android/recaptcha/internal/zzge;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzge;->zza:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzge;->zzb:Ljava/util/Set;

    .line 17
    .line 18
    return-void
.end method

.method private final zzh(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-static {p1, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/google/android/recaptcha/internal/zzue;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzce;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzue;->zzS()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x6

    .line 13
    const/4 v5, 0x4

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x5

    .line 18
    invoke-static {v5, p0, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :pswitch_0
    return-object v2

    .line 22
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzue;->zzP()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzue;->zzf()D

    .line 28
    .line 29
    .line 30
    move-result-wide p0

    .line 31
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzue;->zzg()F

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzue;->zzl()J

    .line 46
    .line 47
    .line 48
    move-result-wide p0

    .line 49
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_5
    invoke-static {v5, v4, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    return-object v2

    .line 58
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzue;->zzk()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzue;->zzj()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    const/16 p1, -0x8000

    .line 72
    .line 73
    if-lt p0, p1, :cond_0

    .line 74
    .line 75
    const/16 p1, 0x7fff

    .line 76
    .line 77
    if-gt p0, p1, :cond_0

    .line 78
    .line 79
    int-to-short p0, p0

    .line 80
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :cond_0
    invoke-static {v5, v4, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    return-object v2

    .line 89
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzue;->zzO()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-ne p1, v3, :cond_1

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_1
    invoke-static {v5, v4, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    return-object v2

    .line 112
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzue;->zzM()Lcom/google/android/recaptcha/internal/zzle;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzle;->zzl()[B

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    array-length p1, p0

    .line 121
    if-ne p1, v3, :cond_2

    .line 122
    .line 123
    aget-byte p0, p0, v0

    .line 124
    .line 125
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    :cond_2
    invoke-static {v5, v4, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    return-object v2

    .line 134
    :pswitch_a
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzue;->zzQ()Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_b
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzge;->zza:Ljava/util/Map;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzue;->zzi()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :cond_3
    throw v2

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzge;->zza:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final zzc()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzge;->zza:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzd(ILjava/lang/Object;)V
    .locals 0

    .line 1
    const/16 p1, 0xad

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzge;->zze(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzge;->zzb:Ljava/util/Set;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zze(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzge;->zza:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zzf(Ljava/util/List;)[Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/recaptcha/internal/zzge;->zzh(Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    invoke-static {p0, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzgc;->zza(Ljava/lang/Object;)Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    new-array p0, p0, [Ljava/lang/Class;

    .line 40
    .line 41
    invoke-interface {p1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, [Ljava/lang/Class;

    .line 46
    .line 47
    return-object p0
.end method

.method public final zzg(Ljava/util/List;)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/recaptcha/internal/zzge;->zzh(Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    new-array p1, p1, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
