.class Lcom/nimbusds/jose/shaded/gson/internal/bind/ReflectiveTypeAdapterFactory$1;
.super Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nimbusds/jose/shaded/gson/internal/bind/ReflectiveTypeAdapterFactory;->create(Lcom/nimbusds/jose/shaded/gson/Gson;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nimbusds/jose/shaded/gson/internal/bind/ReflectiveTypeAdapterFactory;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/shaded/gson/internal/bind/ReflectiveTypeAdapterFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->this$0:Lcom/nimbusds/jose/shaded/gson/internal/bind/ReflectiveTypeAdapterFactory;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
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
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->skipValue()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "AnonymousOrNonStaticLocalClassAdapter"

    .line 2
    .line 3
    return-object p0
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
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->nullValue()Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;

    .line 2
    .line 3
    .line 4
    return-void
.end method
