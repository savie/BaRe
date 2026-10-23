.class Lcom/nimbusds/jose/shaded/gson/Gson$FutureTypeAdapter;
.super Lcom/nimbusds/jose/shaded/gson/internal/bind/SerializationDelegatingTypeAdapter;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/shaded/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FutureTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nimbusds/jose/shaded/gson/internal/bind/SerializationDelegatingTypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/SerializationDelegatingTypeAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/Gson$FutureTypeAdapter;->delegate:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 6
    .line 7
    return-void
.end method

.method private delegate()Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/Gson$FutureTypeAdapter;->delegate:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Adapter for type with cyclic dependency has been used before dependency has been resolved"

    .line 7
    .line 8
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method


# virtual methods
.method public getSerializationDelegate()Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/Gson$FutureTypeAdapter;->delegate()Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public read(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/Gson$FutureTypeAdapter;->delegate()Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;->read(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public setDelegate(Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/Gson$FutureTypeAdapter;->delegate:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/Gson$FutureTypeAdapter;->delegate:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, "Delegate is already set"

    .line 9
    .line 10
    invoke-static {p0}, Le6;->e(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public write(Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/Gson$FutureTypeAdapter;->delegate()Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;->write(Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
