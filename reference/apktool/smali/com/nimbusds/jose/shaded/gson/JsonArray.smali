.class public final Lcom/nimbusds/jose/shaded/gson/JsonArray;
.super Lcom/nimbusds/jose/shaded/gson/JsonElement;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/shaded/gson/JsonElement;",
        "Ljava/lang/Iterable<",
        "Lcom/nimbusds/jose/shaded/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nimbusds/jose/shaded/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/JsonElement;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/JsonElement;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    return-void
.end method

.method private getAsSingleElement()Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, "Array must have size 1, but has size "

    .line 21
    .line 22
    invoke-static {v0, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method


# virtual methods
.method public add(Lcom/nimbusds/jose/shaded/gson/JsonElement;)V
    .locals 0

    if-nez p1, :cond_0

    .line 21
    sget-object p1, Lcom/nimbusds/jose/shaded/gson/JsonNull;->INSTANCE:Lcom/nimbusds/jose/shaded/gson/JsonNull;

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/nimbusds/jose/shaded/gson/JsonNull;->INSTANCE:Lcom/nimbusds/jose/shaded/gson/JsonNull;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/JsonPrimitive;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/nimbusds/jose/shaded/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    .line 11
    .line 12
    .line 13
    move-object p1, v0

    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public add(Ljava/lang/Character;)V
    .locals 1

    .line 18
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    sget-object p1, Lcom/nimbusds/jose/shaded/gson/JsonNull;->INSTANCE:Lcom/nimbusds/jose/shaded/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/shaded/gson/JsonPrimitive;-><init>(Ljava/lang/Character;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 1

    .line 19
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    sget-object p1, Lcom/nimbusds/jose/shaded/gson/JsonNull;->INSTANCE:Lcom/nimbusds/jose/shaded/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/shaded/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 1

    .line 20
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    sget-object p1, Lcom/nimbusds/jose/shaded/gson/JsonNull;->INSTANCE:Lcom/nimbusds/jose/shaded/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/shaded/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Lcom/nimbusds/jose/shaded/gson/JsonArray;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/shaded/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/internal/NonNullElementWrapperList;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/gson/internal/NonNullElementWrapperList;-><init>(Ljava/util/ArrayList;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public contains(Lcom/nimbusds/jose/shaded/gson/JsonElement;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public deepCopy()Lcom/nimbusds/jose/shaded/gson/JsonArray;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/JsonArray;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/gson/JsonArray;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/nimbusds/jose/shaded/gson/JsonElement;->deepCopy()Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/shaded/gson/JsonArray;->add(Lcom/nimbusds/jose/shaded/gson/JsonElement;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v0

    .line 47
    :cond_1
    new-instance p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/JsonArray;-><init>()V

    .line 50
    .line 51
    .line 52
    return-object p0
.end method

.method public bridge synthetic deepCopy()Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonArray;->deepCopy()Lcom/nimbusds/jose/shaded/gson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eq p1, p0, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Lcom/nimbusds/jose/shaded/gson/JsonArray;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/nimbusds/jose/shaded/gson/JsonArray;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public get(I)Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 8
    .line 9
    return-object p0
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/JsonArray;->getAsSingleElement()Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonElement;->getAsBigDecimal()Ljava/math/BigDecimal;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/JsonArray;->getAsSingleElement()Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonElement;->getAsBigInteger()Ljava/math/BigInteger;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getAsBoolean()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/JsonArray;->getAsSingleElement()Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonElement;->getAsBoolean()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getAsByte()B
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/JsonArray;->getAsSingleElement()Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonElement;->getAsByte()B

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getAsCharacter()C
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/JsonArray;->getAsSingleElement()Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonElement;->getAsCharacter()C

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getAsDouble()D
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/JsonArray;->getAsSingleElement()Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonElement;->getAsDouble()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getAsFloat()F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/JsonArray;->getAsSingleElement()Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonElement;->getAsFloat()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getAsInt()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/JsonArray;->getAsSingleElement()Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonElement;->getAsInt()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getAsLong()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/JsonArray;->getAsSingleElement()Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonElement;->getAsLong()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/JsonArray;->getAsSingleElement()Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getAsShort()S
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/JsonArray;->getAsSingleElement()Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonElement;->getAsShort()S

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/JsonArray;->getAsSingleElement()Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/nimbusds/jose/shaded/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public remove(I)Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 8
    .line 9
    return-object p0
.end method

.method public remove(Lcom/nimbusds/jose/shaded/gson/JsonElement;)Z
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public set(ILcom/nimbusds/jose/shaded/gson/JsonElement;)Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/nimbusds/jose/shaded/gson/JsonNull;->INSTANCE:Lcom/nimbusds/jose/shaded/gson/JsonNull;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 12
    .line 13
    return-object p0
.end method

.method public size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/JsonArray;->elements:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
