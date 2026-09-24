.class final enum Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy$2;
.super Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;
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
    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILcom/nimbusds/jose/shaded/gson/LongSerializationPolicy$1;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/nimbusds/jose/shaded/gson/JsonNull;->INSTANCE:Lcom/nimbusds/jose/shaded/gson/JsonNull;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p0, Lcom/nimbusds/jose/shaded/gson/JsonPrimitive;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method
