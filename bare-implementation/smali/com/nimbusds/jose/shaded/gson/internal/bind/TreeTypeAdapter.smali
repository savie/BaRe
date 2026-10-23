.class public final Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;
.super Lcom/nimbusds/jose/shaded/gson/internal/bind/SerializationDelegatingTypeAdapter;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;,
        Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
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
.field private final context:Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter<",
            "TT;>.GsonContextImpl;"
        }
    .end annotation
.end field

.field private volatile delegate:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/nimbusds/jose/shaded/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/gson/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final gson:Lcom/nimbusds/jose/shaded/gson/Gson;

.field private final nullSafe:Z

.field private final serializer:Lcom/nimbusds/jose/shaded/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/gson/JsonSerializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final skipPastForGetDelegateAdapter:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/shaded/gson/JsonSerializer;Lcom/nimbusds/jose/shaded/gson/JsonDeserializer;Lcom/nimbusds/jose/shaded/gson/Gson;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/shaded/gson/JsonSerializer<",
            "TT;>;",
            "Lcom/nimbusds/jose/shaded/gson/JsonDeserializer<",
            "TT;>;",
            "Lcom/nimbusds/jose/shaded/gson/Gson;",
            "Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken<",
            "TT;>;",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;-><init>(Lcom/nimbusds/jose/shaded/gson/JsonSerializer;Lcom/nimbusds/jose/shaded/gson/JsonDeserializer;Lcom/nimbusds/jose/shaded/gson/Gson;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/shaded/gson/JsonSerializer;Lcom/nimbusds/jose/shaded/gson/JsonDeserializer;Lcom/nimbusds/jose/shaded/gson/Gson;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/shaded/gson/JsonSerializer<",
            "TT;>;",
            "Lcom/nimbusds/jose/shaded/gson/JsonDeserializer<",
            "TT;>;",
            "Lcom/nimbusds/jose/shaded/gson/Gson;",
            "Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken<",
            "TT;>;",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/SerializationDelegatingTypeAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->context:Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/nimbusds/jose/shaded/gson/JsonSerializer;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/nimbusds/jose/shaded/gson/JsonDeserializer;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/nimbusds/jose/shaded/gson/Gson;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->skipPastForGetDelegateAdapter:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 21
    .line 22
    iput-boolean p6, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->nullSafe:Z

    .line 23
    .line 24
    return-void
.end method

.method private delegate()Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->delegate:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/nimbusds/jose/shaded/gson/Gson;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->skipPastForGetDelegateAdapter:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/nimbusds/jose/shaded/gson/Gson;->getDelegateAdapter(Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->delegate:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 17
    .line 18
    return-object v0
.end method

.method public static newFactory(Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p1, p0, v1, v2}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    new-instance v1, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p1, p0, v0, v2}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p1, v1, v2, p0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public getSerializationDelegate()Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/nimbusds/jose/shaded/gson/JsonSerializer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public read(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 2
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
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/nimbusds/jose/shaded/gson/JsonDeserializer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;->read(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/nimbusds/jose/shaded/gson/internal/Streams;->parse(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->nullSafe:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/gson/JsonElement;->isJsonNull()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/nimbusds/jose/shaded/gson/JsonDeserializer;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->context:Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    .line 39
    .line 40
    invoke-interface {v0, p1, v1, p0}, Lcom/nimbusds/jose/shaded/gson/JsonDeserializer;->deserialize(Lcom/nimbusds/jose/shaded/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/nimbusds/jose/shaded/gson/JsonDeserializationContext;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public write(Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2
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
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/nimbusds/jose/shaded/gson/JsonSerializer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;->write(Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v1, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->nullSafe:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;->nullValue()Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter;->context:Lcom/nimbusds/jose/shaded/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    .line 30
    .line 31
    invoke-interface {v0, p2, v1, p0}, Lcom/nimbusds/jose/shaded/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/nimbusds/jose/shaded/gson/JsonSerializationContext;)Lcom/nimbusds/jose/shaded/gson/JsonElement;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/Streams;->write(Lcom/nimbusds/jose/shaded/gson/JsonElement;Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
