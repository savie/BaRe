.class public final Lcom/nimbusds/jose/shaded/gson/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/shaded/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public create(Lcom/nimbusds/jose/shaded/gson/Gson;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nimbusds/jose/shaded/gson/Gson;",
            "Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-class v2, Ljava/util/Collection;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-static {v0, v1}, Lcom/nimbusds/jose/shaded/gson/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/shaded/gson/Gson;->getAdapter(Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    .line 32
    .line 33
    invoke-direct {v2, p1, v1, v0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/nimbusds/jose/shaded/gson/Gson;Lcom/nimbusds/jose/shaded/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;

    .line 37
    .line 38
    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->get(Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance p1, Lcom/nimbusds/jose/shaded/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;

    .line 43
    .line 44
    invoke-direct {p1, v2, p0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lcom/nimbusds/jose/shaded/gson/TypeAdapter;Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;)V

    .line 45
    .line 46
    .line 47
    return-object p1
.end method
