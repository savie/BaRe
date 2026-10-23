.class final Lcom/google/android/recaptcha/internal/zzfr;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field final synthetic zza:Ljava/lang/Exception;

.field final synthetic zzb:Lcom/google/android/recaptcha/internal/zzgd;

.field final synthetic zzc:Lcom/google/android/recaptcha/internal/zzft;

.field private synthetic zzd:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Lcom/google/android/recaptcha/internal/zzgd;Lcom/google/android/recaptcha/internal/zzft;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzfr;->zza:Ljava/lang/Exception;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzfr;->zzb:Lcom/google/android/recaptcha/internal/zzgd;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zzfr;->zzc:Lcom/google/android/recaptcha/internal/zzft;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzfr;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzfr;->zza:Ljava/lang/Exception;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzfr;->zzb:Lcom/google/android/recaptcha/internal/zzgd;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzfr;->zzc:Lcom/google/android/recaptcha/internal/zzft;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0, p2}, Lcom/google/android/recaptcha/internal/zzfr;-><init>(Ljava/lang/Exception;Lcom/google/android/recaptcha/internal/zzgd;Lcom/google/android/recaptcha/internal/zzft;Ljv1;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/google/android/recaptcha/internal/zzfr;->zzd:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzfr;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/recaptcha/internal/zzfr;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzfr;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzfr;->zzd:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lxx1;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzfr;->zza:Ljava/lang/Exception;

    .line 9
    .line 10
    instance-of v1, v0, Lcom/google/android/recaptcha/internal/zzce;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lcom/google/android/recaptcha/internal/zzce;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzce;->zza()Lcom/google/android/recaptcha/internal/zztd;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzfr;->zzb:Lcom/google/android/recaptcha/internal/zzgd;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/recaptcha/internal/zzgd;->zza()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/recaptcha/internal/zztd;->zze(I)Lcom/google/android/recaptcha/internal/zztd;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzfr;->zzb:Lcom/google/android/recaptcha/internal/zzgd;

    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzte;->zzf()Lcom/google/android/recaptcha/internal/zztd;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzgd;->zza()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {v1, v0}, Lcom/google/android/recaptcha/internal/zztd;->zze(I)Lcom/google/android/recaptcha/internal/zztd;

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    invoke-virtual {v1, v0}, Lcom/google/android/recaptcha/internal/zztd;->zzr(I)Lcom/google/android/recaptcha/internal/zztd;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/google/android/recaptcha/internal/zztd;->zzq(I)Lcom/google/android/recaptcha/internal/zztd;

    .line 48
    .line 49
    .line 50
    move-object v0, v1

    .line 51
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzmx;->zzi()Lcom/google/android/recaptcha/internal/zznd;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/google/android/recaptcha/internal/zzte;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzte;->zzl()I

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzte;->zzk()I

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzfr;->zza:Ljava/lang/Exception;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ln81;->c()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzfr;->zza:Ljava/lang/Exception;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzfr;->zzb:Lcom/google/android/recaptcha/internal/zzgd;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/google/android/recaptcha/internal/zzgd;->zzb()Lcom/google/android/recaptcha/internal/zzbn;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-object v1, v1, Lcom/google/android/recaptcha/internal/zzgd;->zza:Lcom/google/android/recaptcha/internal/zzbn;

    .line 88
    .line 89
    if-nez v1, :cond_1

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    :cond_1
    invoke-static {v2, v1}, Lcom/google/android/recaptcha/internal/zzev;->zza(Lcom/google/android/recaptcha/internal/zzbn;Lcom/google/android/recaptcha/internal/zzbn;)Lcom/google/android/recaptcha/internal/zzrl;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzfr;->zzb:Lcom/google/android/recaptcha/internal/zzgd;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/google/android/recaptcha/internal/zzgd;->zzd()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_2

    .line 107
    .line 108
    const-string v2, "recaptcha.m.Main.rge"

    .line 109
    .line 110
    :cond_2
    invoke-static {p1}, Ll73;->t(Lxx1;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzfr;->zzc:Lcom/google/android/recaptcha/internal/zzft;

    .line 117
    .line 118
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzkh;->zzh()Lcom/google/android/recaptcha/internal/zzkh;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzko;->zzd()[B

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    array-length v3, v0

    .line 127
    const/4 v4, 0x0

    .line 128
    invoke-virtual {p1, v0, v4, v3}, Lcom/google/android/recaptcha/internal/zzkh;->zzi([BII)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzkh;->zzh()Lcom/google/android/recaptcha/internal/zzkh;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v1}, Lcom/google/android/recaptcha/internal/zzko;->zzd()[B

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    array-length v3, v1

    .line 141
    invoke-virtual {v0, v1, v4, v3}, Lcom/google/android/recaptcha/internal/zzkh;->zzi([BII)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p0, v2, p1}, Lcom/google/android/recaptcha/internal/zzft;->zze(Lcom/google/android/recaptcha/internal/zzft;Ljava/lang/String;[Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    sget-object p0, Lbe8;->a:Lbe8;

    .line 153
    .line 154
    return-object p0
.end method
