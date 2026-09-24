.class public abstract Lmq8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static final a(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-ge v1, v2, :cond_e

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    move v5, v0

    .line 19
    move v6, v5

    .line 20
    move v4, v1

    .line 21
    :goto_1
    const/16 v7, 0x5c

    .line 22
    .line 23
    if-ge v4, v2, :cond_5

    .line 24
    .line 25
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/16 v9, 0x22

    .line 30
    .line 31
    if-eq v8, v9, :cond_2

    .line 32
    .line 33
    if-eq v8, v7, :cond_1

    .line 34
    .line 35
    const/16 v9, 0x2b

    .line 36
    .line 37
    if-eq v8, v9, :cond_0

    .line 38
    .line 39
    const/16 v9, 0x2c

    .line 40
    .line 41
    if-eq v8, v9, :cond_0

    .line 42
    .line 43
    move v5, v0

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    if-nez v5, :cond_3

    .line 46
    .line 47
    if-nez v6, :cond_3

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    xor-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    if-nez v5, :cond_3

    .line 54
    .line 55
    xor-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    :cond_3
    :goto_2
    if-eq v8, v7, :cond_4

    .line 58
    .line 59
    move v5, v0

    .line 60
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    const/4 v4, -0x1

    .line 64
    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-ltz v4, :cond_6

    .line 69
    .line 70
    move-object v3, v2

    .line 71
    :cond_6
    if-eqz v3, :cond_7

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    goto :goto_4

    .line 78
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    :goto_4
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const/16 v3, 0x3d

    .line 87
    .line 88
    const/4 v4, 0x6

    .line 89
    invoke-static {v3, v0, v4, v1}, Lnq7;->g0(CIILjava/lang/CharSequence;)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-lez v3, :cond_d

    .line 94
    .line 95
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v4}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    const-string v5, "CN"

    .line 108
    .line 109
    const/4 v6, 0x1

    .line 110
    invoke-static {v4, v5, v6}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-nez v5, :cond_8

    .line 115
    .line 116
    const-string v5, "2.5.4.3"

    .line 117
    .line 118
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_d

    .line 123
    .line 124
    :cond_8
    add-int/2addr v3, v6

    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {p0}, Lnq7;->s0(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 148
    .line 149
    .line 150
    move v2, v0

    .line 151
    move v3, v2

    .line 152
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-ge v2, v4, :cond_b

    .line 157
    .line 158
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v3, :cond_9

    .line 163
    .line 164
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    move v3, v0

    .line 168
    goto :goto_6

    .line 169
    :cond_9
    if-ne v4, v7, :cond_a

    .line 170
    .line 171
    move v3, v6

    .line 172
    goto :goto_6

    .line 173
    :cond_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_b
    if-eqz v3, :cond_c

    .line 180
    .line 181
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    return-object p0

    .line 189
    :cond_d
    add-int/lit8 v1, v2, 0x1

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_e
    return-object v3
.end method

.method public static final b(Lokhttp3/OkHttpClient$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljl2;

    .line 10
    .line 11
    new-instance v2, Lot9;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, v2, Lot9;->a:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p2, v2, Lot9;->b:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljl2;-><init>(Lot9;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "digest"

    .line 29
    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    new-instance v1, Llq8;

    .line 42
    .line 43
    invoke-direct {v1, p1, p2}, Llq8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "basic"

    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    new-instance v1, Ldn2;

    .line 60
    .line 61
    invoke-direct {v1, v2}, Ldn2;-><init>(Ljava/util/LinkedHashMap;)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Llz0;

    .line 65
    .line 66
    invoke-direct {v2, v1, v0}, Llz0;-><init>(Ldn2;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/Authenticator;

    .line 70
    .line 71
    new-instance v1, Lch8;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    new-instance v1, Lr36;

    .line 82
    .line 83
    invoke-direct {v1, p1, p2}, Lr36;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    new-instance p1, Lg80;

    .line 90
    .line 91
    invoke-direct {p1, v0}, Lg80;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    return-void
.end method
