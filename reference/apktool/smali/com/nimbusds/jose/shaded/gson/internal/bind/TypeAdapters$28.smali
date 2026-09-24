.class Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$28;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters;->newFactory(Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$28;->val$type:Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$28;->val$typeAdapter:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public create(Lcom/nimbusds/jose/shaded/gson/Gson;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 0
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
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$28;->val$type:Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$28;->val$typeAdapter:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method
