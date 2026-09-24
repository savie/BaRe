.class Lcom/nimbusds/jose/shaded/gson/internal/bind/ObjectTypeAdapter$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nimbusds/jose/shaded/gson/internal/bind/ObjectTypeAdapter;->newFactory(Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$toNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/ObjectTypeAdapter$1;->val$toNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public create(Lcom/nimbusds/jose/shaded/gson/Gson;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 2
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
    invoke-virtual {p2}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-class v0, Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    new-instance p2, Lcom/nimbusds/jose/shaded/gson/internal/bind/ObjectTypeAdapter;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/ObjectTypeAdapter$1;->val$toNumberStrategy:Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;

    .line 13
    .line 14
    invoke-direct {p2, p1, p0, v1}, Lcom/nimbusds/jose/shaded/gson/internal/bind/ObjectTypeAdapter;-><init>(Lcom/nimbusds/jose/shaded/gson/Gson;Lcom/nimbusds/jose/shaded/gson/ToNumberStrategy;Lcom/nimbusds/jose/shaded/gson/internal/bind/ObjectTypeAdapter$1;)V

    .line 15
    .line 16
    .line 17
    return-object p2

    .line 18
    :cond_0
    return-object v1
.end method
