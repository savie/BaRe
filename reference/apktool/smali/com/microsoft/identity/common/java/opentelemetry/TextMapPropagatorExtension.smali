.class public abstract Lcom/microsoft/identity/common/java/opentelemetry/TextMapPropagatorExtension;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static extract(Ljava/util/HashMap;)Lt40;
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/TextMapPropagatorExtension$2;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    :try_start_1
    new-array v1, v1, [Lq18;

    .line 17
    .line 18
    sget-object v2, Lsn8;->g:Lsn8;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v2, v1, v3

    .line 22
    .line 23
    sget-object v2, Lpn8;->b:Lpn8;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    aput-object v2, v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    .line 28
    :try_start_2
    invoke-static {v1}, Lq18;->d([Lq18;)Lq18;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {}, Lt40;->a()Lt40;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v1, v2, p0, v0}, Lq18;->c(Lt40;Ljava/lang/Object;Lp18;)Lt40;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    invoke-static {}, Lt40;->a()Lt40;

    .line 44
    .line 45
    .line 46
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    return-object p0

    .line 48
    :catch_1
    move-exception p0

    .line 49
    :goto_1
    const-string v0, "TextMapPropagatorExtension:extract"

    .line 50
    .line 51
    const-string v1, "Failed to extract context"

    .line 52
    .line 53
    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return-object p0
.end method

.method public static inject(Lt40;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt40;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lt40;->a()Lt40;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/TextMapPropagatorExtension$1;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    :try_start_1
    new-array v2, v2, [Lq18;

    .line 20
    .line 21
    sget-object v3, Lsn8;->g:Lsn8;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v3, v2, v4

    .line 25
    .line 26
    sget-object v3, Lpn8;->b:Lpn8;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    aput-object v3, v2, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    .line 31
    :try_start_2
    invoke-static {v2}, Lq18;->d([Lq18;)Lq18;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2, p0, v0, v1}, Lq18;->a(Lt40;Ljava/util/HashMap;Lr18;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :catch_1
    move-exception p0

    .line 42
    :goto_1
    const-string v0, "TextMapPropagatorExtension:inject"

    .line 43
    .line 44
    const-string v1, "Failed to inject context"

    .line 45
    .line 46
    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    new-instance p0, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    return-object p0
.end method
