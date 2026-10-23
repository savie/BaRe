.class public abstract Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final INVALID:Lsd0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/NoopTraceFlags;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/NoopTraceState;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "00000000000000000000000000000000"

    .line 13
    .line 14
    const-string v4, "0000000000000000"

    .line 15
    .line 16
    invoke-static {v3, v4, v0, v1, v2}, Lsd0;->a(Ljava/lang/String;Ljava/lang/String;Lz88;La98;Z)Lsd0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->INVALID:Lsd0;

    .line 21
    .line 22
    return-void
.end method

.method public static current()Lqj7;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lqj7;->current()Lqj7;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    const-string v1, "SpanExtension:getCurrentSpan"

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/NoopSpan;

    .line 17
    .line 18
    sget-object v1, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->INVALID:Lsd0;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/opentelemetry/NoopSpan;-><init>(Lrj7;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static fromContext(Lt40;)Lqj7;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Lqj7;->c(Lt40;)Lqj7;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string v0, "SpanExtension:fromContext"

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Lcom/microsoft/identity/common/java/opentelemetry/NoopSpan;

    .line 19
    .line 20
    sget-object v0, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->INVALID:Lsd0;

    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/opentelemetry/NoopSpan;-><init>(Lrj7;)V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const-string p0, "context is marked non-null but is null"

    .line 27
    .line 28
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public static makeCurrentSpan(Lqj7;)Lv57;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lt40;->a()Lt40;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p0, v0}, Lva4;->a(Lt40;)Lt40;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lxs4;->b:Lev1;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Lev1;->a(Lt40;)Lv57;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception p0

    .line 21
    :goto_0
    const-string v0, "SpanExtension:makeCurrentSpan"

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;->INSTANCE:Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    const-string p0, "span is marked non-null but is null"

    .line 34
    .line 35
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method
