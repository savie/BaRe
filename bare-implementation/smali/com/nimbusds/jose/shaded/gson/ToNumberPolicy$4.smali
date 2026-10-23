.class final enum Lcom/nimbusds/jose/shaded/gson/ToNumberPolicy$4;
.super Lcom/nimbusds/jose/shaded/gson/ToNumberPolicy;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/shaded/gson/ToNumberPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/shaded/gson/ToNumberPolicy;-><init>(Ljava/lang/String;ILcom/nimbusds/jose/shaded/gson/ToNumberPolicy$1;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic readNumber(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/gson/ToNumberPolicy$4;->readNumber(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public readNumber(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/math/BigDecimal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/NumberLimits;->parseBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Lcom/nimbusds/jose/shaded/gson/JsonParseException;

    .line 12
    .line 13
    const-string v2, "Cannot parse "

    .line 14
    .line 15
    const-string v3, "; at path "

    .line 16
    .line 17
    invoke-static {v2, p0, v3}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v1, p0, v0}, Lcom/nimbusds/jose/shaded/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw v1
.end method
