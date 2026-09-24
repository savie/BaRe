.class public final Lzu0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lzu0;

.field public static final b:Lgv7;

.field public static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzu0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lzu0;->a:Lzu0;

    .line 7
    .line 8
    new-instance v0, Lcl;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, v1}, Lcl;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lgv7;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lzu0;->b:Lgv7;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lzu0;->c:Ljava/lang/Object;

    .line 27
    .line 28
    return-void
.end method

.method public static a()Luj;
    .locals 9

    .line 1
    new-instance v0, Luj;

    .line 2
    .line 3
    new-instance v5, Lxj;

    .line 4
    .line 5
    const-string v1, "F4VMpkH2uaGIaof7jI2XklIEUZFigL3z"

    .line 6
    .line 7
    invoke-direct {v5, v1}, Lxj;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/16 v8, 0x60

    .line 12
    .line 13
    const-string v1, "https://account.box.com/api/oauth2/authorize"

    .line 14
    .line 15
    const-string v2, "https://api.box.com/oauth2/token"

    .line 16
    .line 17
    const-string v3, "dfqjenwobgs7mdm0sj7dq3n6cpp8bz3h"

    .line 18
    .line 19
    const-string v4, "org.swiftapps.swiftbackup.box://oauth"

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-direct/range {v0 .. v8}, Luj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxj;Ljava/util/Map;Ljava/util/List;I)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static b()Lmv0;
    .locals 4

    .line 1
    invoke-static {}, Lzu0;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lmv0;

    .line 14
    .line 15
    new-instance v1, Ldl;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-direct {v1, v2}, Ldl;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lel;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Lel;-><init>(I)V

    .line 24
    .line 25
    .line 26
    sget-object v2, Lzu0;->b:Lgv7;

    .line 27
    .line 28
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lokhttp3/OkHttpClient;

    .line 33
    .line 34
    invoke-direct {v0, v1, v3, v2}, Lmv0;-><init>(Ldl;Lel;Lokhttp3/OkHttpClient;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    const-string v0, "Box is not connected"

    .line 39
    .line 40
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    return-object v0
.end method

.method public static c()Lsv0;
    .locals 7

    .line 1
    invoke-static {}, Lzu0;->b()Lmv0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "/2.0/users/me"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lmv0;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "fields"

    .line 16
    .line 17
    const-string v3, "id,login,space_amount,space_used"

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lmv0;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->b()V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lokhttp3/Request;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x6

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static {v0, v2, v3, v1}, Lmv0;->h(Lmv0;Lokhttp3/Request;Ljv0;I)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "id"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move-object v1, v3

    .line 61
    :goto_0
    if-eqz v1, :cond_6

    .line 62
    .line 63
    const-string v2, "login"

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move-object v2, v3

    .line 80
    :goto_1
    const-string v4, "space_amount"

    .line 81
    .line 82
    invoke-static {v0, v4}, Lmv0;->l(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const-string v5, "space_used"

    .line 87
    .line 88
    invoke-static {v0, v5}, Lmv0;->l(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v5, Lsv0;

    .line 93
    .line 94
    invoke-direct {v5, v1, v2, v4, v0}, Lsv0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 95
    .line 96
    .line 97
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 98
    .line 99
    const-string v4, "editor"

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    const-string v6, "box_user_id"

    .line 104
    .line 105
    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    .line 111
    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_2

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_2
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 122
    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    const-string v1, "box_user_login"

    .line 126
    .line 127
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    .line 133
    .line 134
    return-object v5

    .line 135
    :cond_3
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v3

    .line 139
    :cond_4
    :goto_2
    return-object v5

    .line 140
    :cond_5
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v3

    .line 144
    :cond_6
    const-string v0, "Box user response did not contain id"

    .line 145
    .line 146
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-object v3
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "box_access_token"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "prefs"

    .line 14
    .line 15
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    move-object v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    return-object v1
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "box_refresh_token"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "prefs"

    .line 14
    .line 15
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    move-object v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    return-object v1
.end method

.method public static f()Z
    .locals 9

    .line 1
    const-string v0, "prefs"

    .line 2
    .line 3
    invoke-static {}, Lzu0;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_0
    const-string v1, "box_last_refresh_millis"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    :try_start_0
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    invoke-interface {v5, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :catch_0
    move-wide v5, v3

    .line 35
    :goto_0
    const-string v1, "box_expires_millis"

    .line 36
    .line 37
    :try_start_1
    sget-object v7, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 38
    .line 39
    if-eqz v7, :cond_2

    .line 40
    .line 41
    invoke-interface {v7, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    :catch_1
    move-wide v0, v3

    .line 51
    :goto_1
    cmp-long v2, v5, v3

    .line 52
    .line 53
    if-lez v2, :cond_5

    .line 54
    .line 55
    cmp-long v2, v0, v3

    .line 56
    .line 57
    if-gtz v2, :cond_3

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v7

    .line 64
    sub-long/2addr v7, v5

    .line 65
    const-wide/32 v5, 0xea60

    .line 66
    .line 67
    .line 68
    sub-long/2addr v0, v5

    .line 69
    cmp-long v2, v0, v3

    .line 70
    .line 71
    if-gez v2, :cond_4

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    move-wide v3, v0

    .line 75
    :goto_2
    cmp-long v0, v7, v3

    .line 76
    .line 77
    if-ltz v0, :cond_5

    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    return v0

    .line 81
    :cond_5
    :goto_3
    const/4 v0, 0x0

    .line 82
    return v0
.end method

.method public static h(Lzu0;Lvj;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p0, p1, Lvj;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p1, Lvj;->c:Ljava/lang/String;

    .line 8
    .line 9
    const-string v3, "box_access_token"

    .line 10
    .line 11
    invoke-static {v3, p0}, Lcz4;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string p0, "box_refresh_token"

    .line 24
    .line 25
    invoke-static {p0, v2}, Lcz4;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    iget-object p0, p1, Lvj;->b:Ljava/lang/Long;

    .line 29
    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide p0

    .line 36
    sub-long/2addr p0, v0

    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    cmp-long v4, p0, v2

    .line 40
    .line 41
    if-gez v4, :cond_2

    .line 42
    .line 43
    move-wide p0, v2

    .line 44
    :cond_2
    const-string v2, "box_expires_millis"

    .line 45
    .line 46
    invoke-static {p0, p1, v2}, Lcz4;->g(JLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    const-string p0, "box_last_refresh_millis"

    .line 50
    .line 51
    invoke-static {v0, v1, p0}, Lcz4;->g(JLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final g()Lvj;
    .locals 3

    .line 1
    invoke-static {}, Lzu0;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lzu0;->a()Luj;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 12
    .line 13
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2, v0}, Luj;->c(Landroid/content/Context;Ljava/lang/String;)Lvj;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p0, v0}, Lzu0;->h(Lzu0;Lvj;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    const-string p0, "Box refresh token is missing"

    .line 26
    .line 27
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method
