.class public final Lm58;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ll58;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "token_type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljm1;->t(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "token type must not be empty if defined"

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lm58;->b:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "access_token"

    .line 15
    .line 16
    invoke-static {p1, v0}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string v1, "access token cannot be empty if specified"

    .line 23
    .line 24
    invoke-static {v0, v1}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iput-object v0, p0, Lm58;->c:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "expires_at"

    .line 30
    .line 31
    invoke-static {p1, v0}, Ljm1;->p(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lm58;->d:Ljava/lang/Long;

    .line 36
    .line 37
    const-string v0, "expires_in"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    add-long/2addr v0, v2

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lm58;->d:Ljava/lang/Long;

    .line 65
    .line 66
    :cond_1
    const-string v0, "refresh_token"

    .line 67
    .line 68
    invoke-static {p1, v0}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    const-string v1, "refresh token must not be empty if defined"

    .line 75
    .line 76
    invoke-static {v0, v1}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iput-object v0, p0, Lm58;->f:Ljava/lang/String;

    .line 80
    .line 81
    const-string v0, "id_token"

    .line 82
    .line 83
    invoke-static {p1, v0}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    const-string v1, "id token must not be empty if defined"

    .line 90
    .line 91
    invoke-static {v0, v1}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    iput-object v0, p0, Lm58;->e:Ljava/lang/String;

    .line 95
    .line 96
    const-string v0, "scope"

    .line 97
    .line 98
    invoke-static {p1, v0}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lm58;->g:Ljava/lang/String;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    const-string v1, " +"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-nez v0, :cond_5

    .line 119
    .line 120
    const/4 v0, 0x0

    .line 121
    new-array v0, v0, [Ljava/lang/String;

    .line 122
    .line 123
    :cond_5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, Lsz8;->J(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p0, Lm58;->g:Ljava/lang/String;

    .line 132
    .line 133
    :goto_0
    sget-object v0, Ln58;->i:Ljava/util/HashSet;

    .line 134
    .line 135
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 136
    .line 137
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_7

    .line 149
    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-nez v4, :cond_6

    .line 161
    .line 162
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_7
    sget-object p1, Ln58;->i:Ljava/util/HashSet;

    .line 175
    .line 176
    invoke-static {v1, p1}, Lji8;->e(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iput-object p1, p0, Lm58;->h:Ljava/util/Map;

    .line 181
    .line 182
    return-void
.end method
