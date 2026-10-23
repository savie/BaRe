.class Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$32$1;
.super Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$32;->create(Lcom/nimbusds/jose/shaded/gson/Gson;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
        "TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$32;

.field final synthetic val$requestedType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$32;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$32$1;->this$0:Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$32;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$32$1;->val$requestedType:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public read(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;",
            ")TT1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$32$1;->this$0:Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$32;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$32;->val$typeAdapter:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;->read(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$32$1;->val$requestedType:Ljava/lang/Class;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$32$1;->val$requestedType:Ljava/lang/Class;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "Expected a "

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p0, " but was "

    .line 51
    .line 52
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p0, "; at path "

    .line 59
    .line 60
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v1, p0}, Lcom/nimbusds/jose/shaded/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1

    .line 74
    :cond_1
    :goto_0
    return-object v0
.end method

.method public write(Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;",
            "TT1;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$32$1;->this$0:Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$32;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TypeAdapters$32;->val$typeAdapter:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;->write(Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
