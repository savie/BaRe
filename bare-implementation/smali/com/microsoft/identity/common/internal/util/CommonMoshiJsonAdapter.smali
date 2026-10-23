.class public final Lcom/microsoft/identity/common/internal/util/CommonMoshiJsonAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mMoshi:Lnh5;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkh5;

    .line 5
    .line 6
    invoke-direct {v0}, Lkh5;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lnh5;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lnh5;-><init>(Lkh5;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/util/CommonMoshiJsonAdapter;->mMoshi:Lnh5;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/TerminalException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/util/CommonMoshiJsonAdapter;->mMoshi:Lnh5;

    .line 4
    .line 5
    const-class v0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lnh5;->a(Ljava/lang/Class;)Lqi4;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lqi4;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Lcom/microsoft/identity/common/java/exception/TerminalException;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "json_deserialization_failure"

    .line 24
    .line 25
    invoke-direct {p1, p0, v0, v1}, Lcom/microsoft/identity/common/java/exception/TerminalException;-><init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_0
    const-string p0, "json is marked non-null but is null"

    .line 30
    .line 31
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/util/CommonMoshiJsonAdapter;->mMoshi:Lnh5;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v1, Lyh8;->a:Ljava/util/Set;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, v0, v1, v2}, Lnh5;->b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lqi4;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Lqi4;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
