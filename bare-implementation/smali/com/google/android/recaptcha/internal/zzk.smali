.class final Lcom/google/android/recaptcha/internal/zzk;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field zza:I

.field final synthetic zzb:Lcom/google/android/recaptcha/internal/zzl;

.field final synthetic zzc:Lcom/google/android/recaptcha/internal/zzek;

.field final synthetic zzd:J

.field final synthetic zze:Lcom/google/android/recaptcha/internal/zzsc;

.field private synthetic zzf:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzl;Lcom/google/android/recaptcha/internal/zzek;JLcom/google/android/recaptcha/internal/zzsc;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzk;->zzb:Lcom/google/android/recaptcha/internal/zzl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzk;->zzc:Lcom/google/android/recaptcha/internal/zzek;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/google/android/recaptcha/internal/zzk;->zzd:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/google/android/recaptcha/internal/zzk;->zze:Lcom/google/android/recaptcha/internal/zzsc;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p6}, Lws7;-><init>(ILjv1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzk;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzk;->zzb:Lcom/google/android/recaptcha/internal/zzl;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzk;->zzc:Lcom/google/android/recaptcha/internal/zzek;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/google/android/recaptcha/internal/zzk;->zzd:J

    .line 8
    .line 9
    iget-object v5, p0, Lcom/google/android/recaptcha/internal/zzk;->zze:Lcom/google/android/recaptcha/internal/zzsc;

    .line 10
    .line 11
    move-object v6, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/android/recaptcha/internal/zzk;-><init>(Lcom/google/android/recaptcha/internal/zzl;Lcom/google/android/recaptcha/internal/zzek;JLcom/google/android/recaptcha/internal/zzsc;Ljv1;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lcom/google/android/recaptcha/internal/zzk;->zzf:Ljava/lang/Object;

    .line 16
    .line 17
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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzk;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/recaptcha/internal/zzk;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzk;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzk;->zza:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzk;->zzf:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/google/android/recaptcha/internal/zzen;

    .line 9
    .line 10
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzk;->zzf:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lxx1;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzk;->zzb:Lcom/google/android/recaptcha/internal/zzl;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzk;->zzc:Lcom/google/android/recaptcha/internal/zzek;

    .line 25
    .line 26
    invoke-static {v0, v2}, Lcom/google/android/recaptcha/internal/zzl;->zze(Lcom/google/android/recaptcha/internal/zzl;Lcom/google/android/recaptcha/internal/zzek;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzk;->zzc:Lcom/google/android/recaptcha/internal/zzek;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzek;->zzd()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Lcom/google/android/recaptcha/internal/zzek;->zzc(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zzek;

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x1e

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/google/android/recaptcha/internal/zzek;->zzf(I)Lcom/google/android/recaptcha/internal/zzen;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzk;->zzb:Lcom/google/android/recaptcha/internal/zzl;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/google/android/recaptcha/internal/zzl;->zzd()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    move-object v6, v4

    .line 70
    check-cast v6, Lcom/google/android/recaptcha/internal/zze;

    .line 71
    .line 72
    iget-wide v7, p0, Lcom/google/android/recaptcha/internal/zzk;->zzd:J

    .line 73
    .line 74
    iget-object v9, p0, Lcom/google/android/recaptcha/internal/zzk;->zze:Lcom/google/android/recaptcha/internal/zzsc;

    .line 75
    .line 76
    new-instance v5, Lcom/google/android/recaptcha/internal/zzj;

    .line 77
    .line 78
    const/4 v10, 0x0

    .line 79
    invoke-direct/range {v5 .. v10}, Lcom/google/android/recaptcha/internal/zzj;-><init>(Lcom/google/android/recaptcha/internal/zze;JLcom/google/android/recaptcha/internal/zzsc;Ljv1;)V

    .line 80
    .line 81
    .line 82
    const/4 v4, 0x3

    .line 83
    invoke-static {p1, v1, v5, v4}, Ll73;->e(Lxx1;Lrx1;Lqt3;I)Lkg2;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const/4 p1, 0x0

    .line 92
    new-array p1, p1, [Ljg2;

    .line 93
    .line 94
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, [Ljg2;

    .line 99
    .line 100
    array-length v2, p1

    .line 101
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, [Ljg2;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzk;->zzf:Ljava/lang/Object;

    .line 108
    .line 109
    const/4 v2, 0x1

    .line 110
    iput v2, p0, Lcom/google/android/recaptcha/internal/zzk;->zza:I

    .line 111
    .line 112
    array-length v2, p1

    .line 113
    if-nez v2, :cond_2

    .line 114
    .line 115
    sget-object p0, Lov2;->a:Lov2;

    .line 116
    .line 117
    :goto_1
    move-object p1, p0

    .line 118
    goto :goto_2

    .line 119
    :cond_2
    new-instance v2, Lze0;

    .line 120
    .line 121
    invoke-direct {v2, p1}, Lze0;-><init>([Ljg2;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, p0}, Lze0;->a(Lws7;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    goto :goto_1

    .line 129
    :goto_2
    sget-object p0, Lyx1;->a:Lyx1;

    .line 130
    .line 131
    if-eq p1, p0, :cond_6

    .line 132
    .line 133
    move-object p0, v0

    .line 134
    :goto_3
    check-cast p1, Ljava/util/List;

    .line 135
    .line 136
    if-eqz p1, :cond_3

    .line 137
    .line 138
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_3

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Len6;

    .line 160
    .line 161
    iget-object v0, v0, Len6;->a:Ljava/lang/Object;

    .line 162
    .line 163
    instance-of v0, v0, Lbn6;

    .line 164
    .line 165
    if-nez v0, :cond_4

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzen;->zza()V

    .line 168
    .line 169
    .line 170
    sget-object p0, Lbe8;->a:Lbe8;

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_5
    :goto_4
    new-instance p1, Lcom/google/android/recaptcha/internal/zzbd;

    .line 174
    .line 175
    sget-object v0, Lcom/google/android/recaptcha/internal/zzbb;->zzb:Lcom/google/android/recaptcha/internal/zzbb;

    .line 176
    .line 177
    sget-object v2, Lcom/google/android/recaptcha/internal/zzba;->zzY:Lcom/google/android/recaptcha/internal/zzba;

    .line 178
    .line 179
    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/recaptcha/internal/zzbd;-><init>(Lcom/google/android/recaptcha/internal/zzbb;Lcom/google/android/recaptcha/internal/zzba;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzen;->zzb(Lcom/google/android/recaptcha/internal/zzbd;)V

    .line 183
    .line 184
    .line 185
    new-instance p0, Lbn6;

    .line 186
    .line 187
    invoke-direct {p0, p1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    :goto_5
    new-instance p1, Len6;

    .line 191
    .line 192
    invoke-direct {p1, p0}, Len6;-><init>(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    return-object p1

    .line 196
    :cond_6
    return-object p0
.end method
