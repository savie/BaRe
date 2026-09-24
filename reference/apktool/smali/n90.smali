.class public final Ln90;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:Len4;

.field public static final c:Lfn4;

.field public static final d:Lfn4;

.field public static final e:Lfn4;

.field public static final f:Lfn4;

.field public static final g:Ljava/util/List;


# instance fields
.field public final a:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Len4;

    .line 2
    .line 3
    const-string v1, "issuer"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lao;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ln90;->b:Len4;

    .line 10
    .line 11
    new-instance v0, Lfn4;

    .line 12
    .line 13
    move-object v3, v2

    .line 14
    const-string v2, "authorization_endpoint"

    .line 15
    .line 16
    invoke-direct {v0, v2, v3}, Lao;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Ln90;->c:Lfn4;

    .line 20
    .line 21
    new-instance v0, Lfn4;

    .line 22
    .line 23
    const-string v4, "token_endpoint"

    .line 24
    .line 25
    invoke-direct {v0, v4, v3}, Lao;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Ln90;->d:Lfn4;

    .line 29
    .line 30
    new-instance v0, Lfn4;

    .line 31
    .line 32
    const-string v4, "end_session_endpoint"

    .line 33
    .line 34
    invoke-direct {v0, v4, v3}, Lao;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Ln90;->e:Lfn4;

    .line 38
    .line 39
    new-instance v0, Lfn4;

    .line 40
    .line 41
    const-string v4, "registration_endpoint"

    .line 42
    .line 43
    invoke-direct {v0, v4, v3}, Lao;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Ln90;->f:Lfn4;

    .line 47
    .line 48
    const-string v0, "authorization_code"

    .line 49
    .line 50
    const-string v3, "implicit"

    .line 51
    .line 52
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    const-string v0, "client_secret_basic"

    .line 60
    .line 61
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    const-string v0, "normal"

    .line 65
    .line 66
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    const-string v3, "jwks_uri"

    .line 70
    .line 71
    const-string v4, "response_types_supported"

    .line 72
    .line 73
    const-string v5, "subject_types_supported"

    .line 74
    .line 75
    const-string v6, "id_token_signing_alg_values_supported"

    .line 76
    .line 77
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Ln90;->g:Ljava/util/List;

    .line 86
    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ln90;->a:Lorg/json/JSONObject;

    .line 8
    .line 9
    sget-object p1, Ln90;->g:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Ln90;->a:Lorg/json/JSONObject;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Ln90;->a:Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Lm90;

    .line 45
    .line 46
    const-string p1, "Missing mandatory configuration field: "

    .line 47
    .line 48
    invoke-static {p1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lm90;->a:Ljava/lang/String;

    .line 56
    .line 57
    throw p0

    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lao;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Ln90;->a:Lorg/json/JSONObject;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p1, Lao;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p1, Lao;->b:Ljava/lang/Object;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object v0, p1, Lao;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1, p0}, Lao;->e(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string p1, "unexpected JSONException"

    .line 31
    .line 32
    invoke-static {p1, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method
