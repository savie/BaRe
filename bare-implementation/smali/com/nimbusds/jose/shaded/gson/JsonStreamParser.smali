.class public final Lcom/nimbusds/jose/shaded/gson/JsonStreamParser;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/nimbusds/jose/shaded/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final parser:Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/JsonStreamParser;->parser:Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;

    .line 10
    .line 11
    sget-object p1, Lcom/nimbusds/jose/shaded/gson/Strictness;->LENIENT:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 24
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/gson/JsonStreamParser;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonStreamParser;->parser:Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->peek()Lcom/nimbusds/jose/shaded/gson/stream/JsonToken;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v1, Lcom/nimbusds/jose/shaded/gson/stream/JsonToken;->END_DOCUMENT:Lcom/nimbusds/jose/shaded/gson/stream/JsonToken;
    :try_end_0
    .catch Lcom/nimbusds/jose/shaded/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-eq p0, v1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 18
    return p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_3

    .line 21
    :catch_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :catch_1
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :goto_1
    new-instance v1, Lcom/nimbusds/jose/shaded/gson/JsonIOException;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/nimbusds/jose/shaded/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw v1

    .line 31
    :goto_2
    new-instance v1, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0
.end method

.method public next()Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonParseException;
        }
    .end annotation

    .line 1
    const-string v0, "Failed parsing JSON source to Json"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonStreamParser;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonStreamParser;->parser:Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/Streams;->parse(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    new-instance v1, Lcom/nimbusds/jose/shaded/gson/JsonParseException;

    .line 21
    .line 22
    invoke-direct {v1, v0, p0}, Lcom/nimbusds/jose/shaded/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v1

    .line 26
    :goto_1
    new-instance v1, Lcom/nimbusds/jose/shaded/gson/JsonParseException;

    .line 27
    .line 28
    invoke-direct {v1, v0, p0}, Lcom/nimbusds/jose/shaded/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_0
    invoke-static {}, Lm0;->d()V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonStreamParser;->next()Lcom/nimbusds/jose/shaded/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
