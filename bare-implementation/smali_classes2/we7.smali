.class public final Lwe7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljs8;


# instance fields
.field public final a:Lwq3;

.field public final b:Lmt3;

.field public final c:Lbt3;

.field public final d:Lbt3;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    new-instance v0, Lwq3;

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    new-instance v2, Lq9;

    .line 6
    .line 7
    const/16 v3, 0xc

    .line 8
    .line 9
    invoke-direct {v2, v3}, Lq9;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sget-object v3, Lys4;->a:Lys4;

    .line 13
    .line 14
    invoke-static {v3, v2}, Ljd4;->x(Lys4;Lbt3;)Los4;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v4, Lxq4;

    .line 19
    .line 20
    const/16 v5, 0x9

    .line 21
    .line 22
    invoke-direct {v4, v2, v5}, Lxq4;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Ld76;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-direct {v2, v4, v5}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v2}, Ljd4;->x(Lys4;Lbt3;)Los4;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Lli;

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    invoke-direct {v3, v2, v5}, Lli;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lc76;->a:Lc76;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    iput v1, v0, Lwq3;->a:I

    .line 47
    .line 48
    iput-object v4, v0, Lwq3;->b:Ljava/lang/Object;

    .line 49
    .line 50
    iput-object v3, v0, Lwq3;->c:Ljava/lang/Object;

    .line 51
    .line 52
    iput-object v2, v0, Lwq3;->d:Ljava/lang/Object;

    .line 53
    .line 54
    new-instance v5, Loh1;

    .line 55
    .line 56
    new-instance v7, Lls8;

    .line 57
    .line 58
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    const/4 v11, 0x0

    .line 62
    const/16 v12, 0x8

    .line 63
    .line 64
    const/4 v6, 0x1

    .line 65
    const-class v8, Lls8;

    .line 66
    .line 67
    const-string v9, "map"

    .line 68
    .line 69
    const-string v10, "map(Ljava/util/List;)Ljava/util/List;"

    .line 70
    .line 71
    invoke-direct/range {v5 .. v12}, Loh1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Lel;

    .line 75
    .line 76
    const/16 v2, 0x13

    .line 77
    .line 78
    invoke-direct {v1, v2}, Lel;-><init>(I)V

    .line 79
    .line 80
    .line 81
    new-instance v2, Lzk;

    .line 82
    .line 83
    const/16 v3, 0xf

    .line 84
    .line 85
    invoke-direct {v2, v3}, Lzk;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lwe7;->a:Lwq3;

    .line 92
    .line 93
    iput-object v5, p0, Lwe7;->b:Lmt3;

    .line 94
    .line 95
    iput-object v1, p0, Lwe7;->c:Lbt3;

    .line 96
    .line 97
    iput-object v2, p0, Lwe7;->d:Lbt3;

    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public final read()Lis8;
    .locals 4

    .line 1
    iget-object v0, p0, Lwe7;->c:Lbt3;

    .line 2
    .line 3
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget-object p0, Lds8;->SHIZUKU_STOPPED:Lds8;

    .line 17
    .line 18
    new-instance v0, Lgs8;

    .line 19
    .line 20
    sget-object v2, Lks8;->SHIZUKU_BINDER:Lks8;

    .line 21
    .line 22
    invoke-direct {v0, p0, v2, v1}, Lgs8;-><init>(Lds8;Lks8;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lwe7;->d:Lbt3;

    .line 27
    .line 28
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    sget-object p0, Lds8;->SHIZUKU_PERMISSION_DENIED:Lds8;

    .line 41
    .line 42
    new-instance v0, Lgs8;

    .line 43
    .line 44
    sget-object v2, Lks8;->SHIZUKU_BINDER:Lks8;

    .line 45
    .line 46
    invoke-direct {v0, p0, v2, v1}, Lgs8;-><init>(Lds8;Lks8;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_1
    iget-object v0, p0, Lwe7;->a:Lwq3;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-virtual {v0}, Lwq3;->c()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2

    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    new-instance v0, Lxv0;

    .line 62
    .line 63
    sget-object v2, Lds8;->RESULT_DECODE_FAILED:Lds8;

    .line 64
    .line 65
    invoke-direct {v0, v2, v1}, Lxv0;-><init>(Lds8;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_2
    :try_start_1
    new-instance v3, Lyv0;

    .line 70
    .line 71
    iget-object v0, v0, Lwq3;->d:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Lmt3;

    .line 74
    .line 75
    invoke-interface {v0, v2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Ljava/util/List;

    .line 80
    .line 81
    invoke-direct {v3, v0}, Lyv0;-><init>(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .line 83
    .line 84
    move-object v0, v3

    .line 85
    goto :goto_3

    .line 86
    :catch_0
    move-exception v0

    .line 87
    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    goto :goto_2

    .line 90
    :goto_0
    new-instance v2, Lxv0;

    .line 91
    .line 92
    sget-object v3, Lds8;->RESULT_DECODE_FAILED:Lds8;

    .line 93
    .line 94
    invoke-direct {v2, v3, v0}, Lxv0;-><init>(Lds8;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :goto_1
    move-object v0, v2

    .line 98
    goto :goto_3

    .line 99
    :goto_2
    new-instance v2, Lxv0;

    .line 100
    .line 101
    sget-object v3, Lds8;->RESULT_DECODE_FAILED:Lds8;

    .line 102
    .line 103
    invoke-direct {v2, v3, v0}, Lxv0;-><init>(Lds8;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catch_2
    move-exception v0

    .line 108
    invoke-static {v0}, Lwq3;->b(Ljava/lang/Throwable;)Lxv0;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    goto :goto_3

    .line 113
    :catch_3
    move-exception v0

    .line 114
    invoke-static {v0}, Lwq3;->b(Ljava/lang/Throwable;)Lxv0;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :goto_3
    instance-of v2, v0, Lyv0;

    .line 119
    .line 120
    if-eqz v2, :cond_3

    .line 121
    .line 122
    check-cast v0, Lyv0;

    .line 123
    .line 124
    :try_start_2
    new-instance v1, Lhs8;

    .line 125
    .line 126
    iget-object p0, p0, Lwe7;->b:Lmt3;

    .line 127
    .line 128
    iget-object v0, v0, Lyv0;->a:Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {p0, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Ljava/util/List;

    .line 135
    .line 136
    sget-object v0, Lks8;->SHIZUKU_BINDER:Lks8;

    .line 137
    .line 138
    invoke-direct {v1, p0, v0}, Lhs8;-><init>(Ljava/util/List;Lks8;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_4

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :catch_4
    move-exception p0

    .line 143
    sget-object v0, Lds8;->MAPPING_FAILED:Lds8;

    .line 144
    .line 145
    new-instance v1, Lgs8;

    .line 146
    .line 147
    sget-object v2, Lks8;->SHIZUKU_BINDER:Lks8;

    .line 148
    .line 149
    invoke-direct {v1, v0, v2, p0}, Lgs8;-><init>(Lds8;Lks8;Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :catch_5
    move-exception p0

    .line 154
    sget-object v0, Lds8;->MAPPING_FAILED:Lds8;

    .line 155
    .line 156
    new-instance v1, Lgs8;

    .line 157
    .line 158
    sget-object v2, Lks8;->SHIZUKU_BINDER:Lks8;

    .line 159
    .line 160
    invoke-direct {v1, v0, v2, p0}, Lgs8;-><init>(Lds8;Lks8;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_3
    instance-of p0, v0, Lxv0;

    .line 165
    .line 166
    if-eqz p0, :cond_4

    .line 167
    .line 168
    check-cast v0, Lxv0;

    .line 169
    .line 170
    iget-object p0, v0, Lxv0;->a:Lds8;

    .line 171
    .line 172
    iget-object v0, v0, Lxv0;->b:Ljava/lang/Throwable;

    .line 173
    .line 174
    new-instance v1, Lgs8;

    .line 175
    .line 176
    sget-object v2, Lks8;->SHIZUKU_BINDER:Lks8;

    .line 177
    .line 178
    invoke-direct {v1, p0, v2, v0}, Lgs8;-><init>(Lds8;Lks8;Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    :goto_4
    return-object v1

    .line 182
    :cond_4
    invoke-static {}, Lq;->j()V

    .line 183
    .line 184
    .line 185
    return-object v1
.end method
