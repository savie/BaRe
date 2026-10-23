.class public final Lz80;
.super Ljava/lang/Exception;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic f:I


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Landroid/net/Uri;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4, p6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lz80;->a:I

    .line 5
    .line 6
    iput p2, p0, Lz80;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lz80;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lz80;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lz80;->e:Landroid/net/Uri;

    .line 13
    .line 14
    return-void
.end method

.method public static a(ILjava/lang/String;)Lz80;
    .locals 7

    .line 1
    new-instance v0, Lz80;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v2, p0

    .line 8
    move-object v4, p1

    .line 9
    invoke-direct/range {v0 .. v6}, Lz80;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static b(ILjava/lang/String;)Lz80;
    .locals 7

    .line 1
    new-instance v0, Lz80;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    move v2, p0

    .line 8
    move-object v3, p1

    .line 9
    invoke-direct/range {v0 .. v6}, Lz80;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static c([Lz80;)Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Lk50;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    invoke-direct {v0, v1}, Ldg7;-><init>(I)V

    .line 5
    .line 6
    .line 7
    array-length v1, p0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, p0, v2

    .line 12
    .line 13
    iget-object v4, v3, Lz80;->c:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v4, v3}, Ldg7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static d(ILjava/lang/String;)Lz80;
    .locals 7

    .line 1
    new-instance v0, Lz80;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    move v2, p0

    .line 8
    move-object v3, p1

    .line 9
    invoke-direct/range {v0 .. v6}, Lz80;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static e(Landroid/content/Intent;)Lz80;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "net.openid.appauth.AuthorizationException"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v0, "jsonStr cannot be null or empty"

    .line 19
    .line 20
    invoke-static {p0, v0}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lz80;->f(Lorg/json/JSONObject;)Lz80;

    .line 29
    .line 30
    .line 31
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object p0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string v1, "Intent contains malformed exception data"

    .line 37
    .line 38
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public static f(Lorg/json/JSONObject;)Lz80;
    .locals 8

    .line 1
    const-string v0, "json cannot be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lz80;

    .line 7
    .line 8
    const-string v0, "type"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v0, "code"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const-string v0, "error"

    .line 21
    .line 22
    invoke-static {p0, v0}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const-string v0, "errorDescription"

    .line 27
    .line 28
    invoke-static {p0, v0}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const-string v0, "errorUri"

    .line 33
    .line 34
    invoke-static {p0, v0}, Ljm1;->y(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const/4 v7, 0x0

    .line 39
    invoke-direct/range {v1 .. v7}, Lz80;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    return-object v1
.end method

.method public static g(Lz80;Ljava/lang/Exception;)Lz80;
    .locals 7

    .line 1
    new-instance v0, Lz80;

    .line 2
    .line 3
    iget v1, p0, Lz80;->a:I

    .line 4
    .line 5
    iget v2, p0, Lz80;->b:I

    .line 6
    .line 7
    iget-object v3, p0, Lz80;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lz80;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lz80;->e:Landroid/net/Uri;

    .line 12
    .line 13
    move-object v6, p1

    .line 14
    invoke-direct/range {v0 .. v6}, Lz80;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    instance-of v2, p1, Lz80;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    check-cast p1, Lz80;

    .line 14
    .line 15
    iget v2, p0, Lz80;->a:I

    .line 16
    .line 17
    iget v3, p1, Lz80;->a:I

    .line 18
    .line 19
    if-ne v2, v3, :cond_2

    .line 20
    .line 21
    iget p0, p0, Lz80;->b:I

    .line 22
    .line 23
    iget p1, p1, Lz80;->b:I

    .line 24
    .line 25
    if-ne p0, p1, :cond_2

    .line 26
    .line 27
    return v0

    .line 28
    :cond_2
    :goto_0
    return v1
.end method

.method public final h()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lz80;->i()Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v1, "net.openid.appauth.AuthorizationException"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lz80;->a:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget p0, p0, Lz80;->b:I

    .line 8
    .line 9
    add-int/2addr v0, p0

    .line 10
    return v0
.end method

.method public final i()Lorg/json/JSONObject;
    .locals 4

    .line 1
    const-string v0, "JSONException thrown in violation of contract, ex"

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "type"

    .line 9
    .line 10
    iget v3, p0, Lz80;->a:I

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    .line 14
    .line 15
    const-string v2, "code"

    .line 16
    .line 17
    iget v3, p0, Lz80;->b:I

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    .line 21
    .line 22
    const-string v0, "error"

    .line 23
    .line 24
    iget-object v2, p0, Lz80;->c:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1, v0, v2}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "errorDescription"

    .line 30
    .line 31
    iget-object v2, p0, Lz80;->d:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, v0, v2}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "errorUri"

    .line 37
    .line 38
    iget-object p0, p0, Lz80;->e:Landroid/net/Uri;

    .line 39
    .line 40
    invoke-static {v1, v0, p0}, Ljm1;->K(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :catch_0
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :catch_1
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AuthorizationException: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lz80;->i()Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
