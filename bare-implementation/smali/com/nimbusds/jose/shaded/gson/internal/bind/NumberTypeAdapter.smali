.class public final Lcom/nimbusds/jose/shaded/gson/internal/bind/NumberTypeAdapter;
.super Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAZILY_PARSED_NUMBER_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;


# instance fields
.field private final toNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lcom/nimbusds/jose/shaded/gson/ToNumberPolicy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/NumberTypeAdapter;->newFactory(Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/nimbusds/jose/shaded/gson/internal/bind/NumberTypeAdapter;->LAZILY_PARSED_NUMBER_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/NumberTypeAdapter;->toNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 5
    .line 6
    return-void
.end method

.method public static getFactory(Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lcom/nimbusds/jose/shaded/gson/ToNumberPolicy;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/NumberTypeAdapter;->LAZILY_PARSED_NUMBER_FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/NumberTypeAdapter;->newFactory(Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private static newFactory(Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/internal/bind/NumberTypeAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/NumberTypeAdapter;-><init>(Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/NumberTypeAdapter$1;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/NumberTypeAdapter$1;-><init>(Lcom/nimbusds/jose/shaded/gson/internal/bind/NumberTypeAdapter;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public read(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->peek()Lcom/nimbusds/jose/shaded/gson/stream/JsonToken;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/nimbusds/jose/shaded/gson/internal/bind/NumberTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Expecting number, got: "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "; at path "

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/NumberTypeAdapter;->toNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 56
    .line 57
    invoke-interface {p0, p1}, Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;->readNumber(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/lang/Number;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_2
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->nextNull()V

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    return-object p0
.end method

.method public bridge synthetic read(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/bind/NumberTypeAdapter;->read(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public write(Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/internal/bind/NumberTypeAdapter;->write(Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;Ljava/lang/Number;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
