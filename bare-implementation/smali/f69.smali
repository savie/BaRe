.class public final Lf69;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lf59;


# instance fields
.field public a:Lnh;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J


# virtual methods
.method public final zza(Ljava/lang/String;)Lf59;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "email"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lmq7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    const-string v1, "passwordHash"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lmq7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    const-string v1, "emailVerified"

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    const-string v1, "displayName"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lmq7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    const-string v1, "photoUrl"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Lmq7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    const-string v1, "providerUserInfo"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lnh;->p(Lorg/json/JSONArray;)Lnh;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, p0, Lf69;->a:Lnh;

    .line 59
    .line 60
    const-string v1, "idToken"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Lmq7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, p0, Lf69;->b:Ljava/lang/String;

    .line 71
    .line 72
    const-string v1, "refreshToken"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v1}, Lmq7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object v1, p0, Lf69;->c:Ljava/lang/String;

    .line 83
    .line 84
    const-string v1, "expiresIn"

    .line 85
    .line 86
    const-wide/16 v2, 0x0

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    iput-wide v0, p0, Lf69;->d:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    return-object p0

    .line 95
    :catch_0
    move-exception p0

    .line 96
    goto :goto_0

    .line 97
    :catch_1
    move-exception p0

    .line 98
    :goto_0
    const-string v0, "f69"

    .line 99
    .line 100
    invoke-static {p0, v0, p1}, Lyc9;->C0(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Ld49;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    throw p0
.end method
