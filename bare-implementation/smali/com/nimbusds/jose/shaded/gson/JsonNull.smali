.class public final Lcom/nimbusds/jose/shaded/gson/JsonNull;
.super Lcom/nimbusds/jose/shaded/gson/JsonElement;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final INSTANCE:Lcom/nimbusds/jose/shaded/gson/JsonNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/JsonNull;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/gson/JsonNull;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/nimbusds/jose/shaded/gson/JsonNull;->INSTANCE:Lcom/nimbusds/jose/shaded/gson/JsonNull;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/JsonElement;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonNull;->deepCopy()Lcom/nimbusds/jose/shaded/gson/JsonNull;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public deepCopy()Lcom/nimbusds/jose/shaded/gson/JsonNull;
    .locals 0

    .line 6
    sget-object p0, Lcom/nimbusds/jose/shaded/gson/JsonNull;->INSTANCE:Lcom/nimbusds/jose/shaded/gson/JsonNull;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/nimbusds/jose/shaded/gson/JsonNull;

    .line 2
    .line 3
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    const-class p0, Lcom/nimbusds/jose/shaded/gson/JsonNull;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
