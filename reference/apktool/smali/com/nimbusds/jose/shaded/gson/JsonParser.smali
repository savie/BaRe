.class public final Lcom/nimbusds/jose/shaded/gson/JsonParser;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static parseReader(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonIOException;,
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;
        }
    .end annotation

    .line 1
    const-string v0, " to Json"

    .line 2
    .line 3
    const-string v1, "Failed parsing JSON source: "

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->getStrictness()Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v3, Lcom/nimbusds/jose/shaded/gson/Strictness;->LEGACY_STRICT:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 10
    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    sget-object v3, Lcom/nimbusds/jose/shaded/gson/Strictness;->LENIENT:Lcom/nimbusds/jose/shaded/gson/Strictness;

    .line 14
    .line 15
    invoke-virtual {p0, v3}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/Streams;->parse(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {p0, v2}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v3

    .line 29
    :try_start_1
    new-instance v4, Lcom/nimbusds/jose/shaded/gson/JsonParseException;

    .line 30
    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {v4, v0, v3}, Lcom/nimbusds/jose/shaded/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw v4

    .line 50
    :catch_1
    move-exception v3

    .line 51
    new-instance v4, Lcom/nimbusds/jose/shaded/gson/JsonParseException;

    .line 52
    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {v4, v0, v3}, Lcom/nimbusds/jose/shaded/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :goto_0
    invoke-virtual {p0, v2}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->setStrictness(Lcom/nimbusds/jose/shaded/gson/Strictness;)V

    .line 73
    .line 74
    .line 75
    throw v0
.end method

.method public static parseReader(Ljava/io/Reader;)Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonIOException;,
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;
        }
    .end annotation

    .line 76
    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 77
    invoke-static {v0}, Lcom/nimbusds/jose/shaded/gson/JsonParser;->parseReader(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Lcom/nimbusds/jose/shaded/gson/JsonElement;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->peek()Lcom/nimbusds/jose/shaded/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/shaded/gson/stream/JsonToken;->END_DOCUMENT:Lcom/nimbusds/jose/shaded/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance p0, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;

    const-string v0, "Did not consume the entire document."

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/nimbusds/jose/shaded/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 80
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 81
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/JsonIOException;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 82
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseString(Ljava/lang/String;)Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringReader;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/nimbusds/jose/shaded/gson/JsonParser;->parseReader(Ljava/io/Reader;)Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public parse(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonIOException;,
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-static {p1}, Lcom/nimbusds/jose/shaded/gson/JsonParser;->parseReader(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Lcom/nimbusds/jose/shaded/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public parse(Ljava/io/Reader;)Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonIOException;,
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-static {p1}, Lcom/nimbusds/jose/shaded/gson/JsonParser;->parseReader(Ljava/io/Reader;)Lcom/nimbusds/jose/shaded/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public parse(Ljava/lang/String;)Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/nimbusds/jose/shaded/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
