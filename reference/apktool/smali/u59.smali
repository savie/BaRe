.class public final Lu59;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Le59;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lau2;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, Lu59;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Ljava/lang/String;

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    const/4 v4, 0x1

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const/16 v6, 0x5b

    .line 21
    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move v6, v1

    .line 26
    :goto_0
    if-ge v6, v3, :cond_2

    .line 27
    .line 28
    aget-object v7, v2, v6

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    if-le v8, v4, :cond_1

    .line 35
    .line 36
    const-string v8, ","

    .line 37
    .line 38
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    add-int/lit8 v6, v6, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const-string v2, "] "

    .line 48
    .line 49
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    const/16 v3, 0x17

    .line 57
    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    filled-new-array {v0, v5}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-gt v2, v3, :cond_3

    .line 67
    .line 68
    move v1, v4

    .line 69
    :cond_3
    if-eqz v1, :cond_5

    .line 70
    .line 71
    const/4 v1, 0x2

    .line 72
    :goto_2
    const/4 v2, 0x7

    .line 73
    if-gt v1, v2, :cond_4

    .line 74
    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_4

    .line 80
    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    return-void

    .line 85
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string v1, "tag \"%s\" is longer than the %d character maximum"

    .line 88
    .line 89
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0
.end method

.method public constructor <init>(Lau2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lu59;->c:Lau2;

    .line 8
    .line 9
    iget-object v0, p1, Lau2;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lly8;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lu59;->a:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p1, p1, Lau2;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1}, Lly8;->e(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lu59;->b:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p2, p0, Lu59;->d:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p3, p0, Lu59;->e:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lb8;->c:I

    .line 2
    .line 3
    iget-object v0, p0, Lu59;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lly8;->e(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    new-instance v2, Lb8;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lb8;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-object v2, v1

    .line 16
    :goto_0
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v0, v2, Lb8;->a:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_1
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v1, v2, Lb8;->b:Ljava/lang/String;

    .line 25
    .line 26
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    .line 27
    .line 28
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "email"

    .line 32
    .line 33
    iget-object v4, p0, Lu59;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const-string v3, "oobCode"

    .line 41
    .line 42
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    :cond_2
    if-eqz v1, :cond_3

    .line 46
    .line 47
    const-string v0, "tenantId"

    .line 48
    .line 49
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Lu59;->d:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    const-string v1, "idToken"

    .line 57
    .line 58
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    :cond_4
    iget-object p0, p0, Lu59;->e:Ljava/lang/String;

    .line 62
    .line 63
    if-eqz p0, :cond_5

    .line 64
    .line 65
    const-string v0, "captchaResp"

    .line 66
    .line 67
    invoke-static {v2, v0, p0}, Lyc9;->E0(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_5
    const-string p0, "clientType"

    .line 72
    .line 73
    const-string v0, "CLIENT_TYPE_ANDROID"

    .line 74
    .line 75
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
