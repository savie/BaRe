.class final Lcom/google/android/recaptcha/internal/zzer;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field final synthetic zza:Lcom/google/android/recaptcha/internal/zzes;

.field final synthetic zzb:Lcom/google/android/recaptcha/internal/zztx;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzes;Lcom/google/android/recaptcha/internal/zztx;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzer;->zza:Lcom/google/android/recaptcha/internal/zzes;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzer;->zzb:Lcom/google/android/recaptcha/internal/zztx;

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
    new-instance p1, Lcom/google/android/recaptcha/internal/zzer;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzer;->zza:Lcom/google/android/recaptcha/internal/zzes;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzer;->zzb:Lcom/google/android/recaptcha/internal/zztx;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lcom/google/android/recaptcha/internal/zzer;-><init>(Lcom/google/android/recaptcha/internal/zzes;Lcom/google/android/recaptcha/internal/zztx;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzer;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/recaptcha/internal/zzer;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzer;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzer;->zzb:Lcom/google/android/recaptcha/internal/zztx;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzer;->zza:Lcom/google/android/recaptcha/internal/zzes;

    .line 7
    .line 8
    const-class v0, Lcom/google/android/recaptcha/internal/zzeo;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-static {p0}, Lcom/google/android/recaptcha/internal/zzes;->zzb(Lcom/google/android/recaptcha/internal/zzes;)Lcom/google/android/recaptcha/internal/zzei;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/recaptcha/internal/zzej;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzko;->zzd()[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzkh;->zzg()Lcom/google/android/recaptcha/internal/zzkh;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    array-length v3, p1

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {v2, p1, v4, v3}, Lcom/google/android/recaptcha/internal/zzkh;->zzi([BII)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-direct {v1, p1, v2, v3, v4}, Lcom/google/android/recaptcha/internal/zzej;-><init>(Ljava/lang/String;JI)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lcom/google/android/recaptcha/internal/zzes;->zzb(Lcom/google/android/recaptcha/internal/zzes;)Lcom/google/android/recaptcha/internal/zzei;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v2, Landroid/content/ContentValues;

    .line 45
    .line 46
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v3, "ss"

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/google/android/recaptcha/internal/zzej;->zzc()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v3, "ts"

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/google/android/recaptcha/internal/zzej;->zzb()J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v1, "ce"

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-virtual {p1, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 79
    .line 80
    .line 81
    invoke-static {p0}, Lcom/google/android/recaptcha/internal/zzes;->zzb(Lcom/google/android/recaptcha/internal/zzes;)Lcom/google/android/recaptcha/internal/zzei;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzei;->zzb()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    add-int/lit16 p1, p1, -0x1f4

    .line 90
    .line 91
    if-lez p1, :cond_0

    .line 92
    .line 93
    invoke-static {p0}, Lcom/google/android/recaptcha/internal/zzes;->zzb(Lcom/google/android/recaptcha/internal/zzes;)Lcom/google/android/recaptcha/internal/zzei;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/google/android/recaptcha/internal/zzei;->zzd()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v1, p1}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p0}, Lcom/google/android/recaptcha/internal/zzes;->zzb(Lcom/google/android/recaptcha/internal/zzes;)Lcom/google/android/recaptcha/internal/zzei;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1, p1}, Lcom/google/android/recaptcha/internal/zzei;->zza(Ljava/util/List;)I

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    goto :goto_1

    .line 115
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/google/android/recaptcha/internal/zzes;->zzb(Lcom/google/android/recaptcha/internal/zzes;)Lcom/google/android/recaptcha/internal/zzei;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzei;->zzb()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    const/16 v1, 0x14

    .line 124
    .line 125
    if-lt p1, v1, :cond_1

    .line 126
    .line 127
    invoke-static {p0}, Lcom/google/android/recaptcha/internal/zzes;->zze(Lcom/google/android/recaptcha/internal/zzes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    :cond_1
    monitor-exit v0

    .line 131
    sget-object p0, Lbe8;->a:Lbe8;

    .line 132
    .line 133
    return-object p0

    .line 134
    :goto_1
    monitor-exit v0

    .line 135
    throw p0
.end method
