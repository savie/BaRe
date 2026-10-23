.class public final Lc69;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lf59;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lx89;


# virtual methods
.method public final a()Z
    .locals 7

    .line 1
    const-string v0, "EMAIL_PASSWORD_PROVIDER"

    .line 2
    .line 3
    invoke-static {v0}, Lly8;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lc69;->b:Lx89;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lc69;->b:Lx89;

    .line 20
    .line 21
    iget v1, p0, Lx89;->n:I

    .line 22
    .line 23
    move v4, v2

    .line 24
    :cond_1
    if-ge v4, v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, v4}, Lx89;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    add-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    check-cast v5, Lr59;

    .line 33
    .line 34
    iget-object v6, v5, Lr59;->b:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v5, v5, Lr59;->a:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    move-object v3, v6

    .line 49
    :cond_2
    :goto_0
    if-nez v3, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const-string p0, "ENFORCE"

    .line 53
    .line 54
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_5

    .line 59
    .line 60
    const-string p0, "AUDIT"

    .line 61
    .line 62
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_4

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    :goto_1
    return v2

    .line 70
    :cond_5
    :goto_2
    const/4 p0, 0x1

    .line 71
    return p0
.end method

.method public final zza(Ljava/lang/String;)Lf59;
    .locals 9

    .line 1
    const-string v0, "recaptchaEnforcementState"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "recaptchaKey"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Lmq7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iput-object v2, p0, Lc69;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_7

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_6

    .line 31
    .line 32
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_0
    sget-object v1, Lz59;->f:Lq69;

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    new-array v1, v1, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    move v3, v2

    .line 46
    move v4, v3

    .line 47
    move v5, v4

    .line 48
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-ge v3, v6, :cond_4

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    if-nez v6, :cond_1

    .line 59
    .line 60
    new-instance v6, Lr59;

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    invoke-direct {v6, v7, v7}, Lr59;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const-string v7, "provider"

    .line 68
    .line 69
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v7}, Lmq7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    const-string v8, "enforcementState"

    .line 78
    .line 79
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-static {v6}, Lmq7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    new-instance v8, Lr59;

    .line 88
    .line 89
    invoke-direct {v8, v7, v6}, Lr59;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    move-object v6, v8

    .line 93
    :goto_1
    array-length v7, v1

    .line 94
    add-int/lit8 v8, v4, 0x1

    .line 95
    .line 96
    invoke-static {v7, v8}, Ljb9;->m0(II)I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    array-length v8, v1

    .line 101
    if-gt v7, v8, :cond_2

    .line 102
    .line 103
    if-eqz v5, :cond_3

    .line 104
    .line 105
    :cond_2
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    move v5, v2

    .line 110
    :cond_3
    add-int/lit8 v7, v4, 0x1

    .line 111
    .line 112
    aput-object v6, v1, v4

    .line 113
    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 115
    .line 116
    move v4, v7

    .line 117
    goto :goto_0

    .line 118
    :catch_0
    move-exception p0

    .line 119
    goto :goto_4

    .line 120
    :catch_1
    move-exception p0

    .line 121
    goto :goto_4

    .line 122
    :cond_4
    if-nez v4, :cond_5

    .line 123
    .line 124
    sget-object v0, Lx89;->p:Lx89;

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_5
    new-instance v0, Lx89;

    .line 128
    .line 129
    invoke-direct {v0, v4, v1}, Lx89;-><init>(I[Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    :goto_2
    sget-object v0, Lz59;->f:Lq69;

    .line 134
    .line 135
    sget-object v0, Lx89;->p:Lx89;

    .line 136
    .line 137
    :goto_3
    iput-object v0, p0, Lc69;->b:Lx89;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    :cond_7
    return-object p0

    .line 140
    :goto_4
    const-string v0, "c69"

    .line 141
    .line 142
    invoke-static {p0, v0, p1}, Lyc9;->C0(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Ld49;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    throw p0
.end method
