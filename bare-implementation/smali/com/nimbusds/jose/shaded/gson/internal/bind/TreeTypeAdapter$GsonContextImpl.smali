.class final Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/shaded/gson/JsonSerializationContext;
.implements Lcom/nimbusds/jose/shaded/gson/JsonDeserializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GsonContextImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;


# direct methods
.method private constructor <init>(Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/nimbusds/jose/shaded/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nimbusds/jose/shaded/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/gson/JsonParseException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/nimbusds/jose/shaded/gson/Gson;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/Gson;->fromJson(Lcom/nimbusds/jose/shaded/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public serialize(Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/nimbusds/jose/shaded/gson/Gson;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/nimbusds/jose/shaded/gson/JsonElement;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;

    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/nimbusds/jose/shaded/gson/Gson;

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/nimbusds/jose/shaded/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
