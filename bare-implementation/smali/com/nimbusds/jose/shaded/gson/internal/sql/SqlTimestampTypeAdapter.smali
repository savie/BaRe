.class Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTimestampTypeAdapter;
.super Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# static fields
.field static final FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;


# instance fields
.field private final dateTypeAdapter:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTimestampTypeAdapter$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTimestampTypeAdapter$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTimestampTypeAdapter;->FACTORY:Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTimestampTypeAdapter;->dateTypeAdapter:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Lcom/nimbusds/jose/shaded/gson/TypeAdapter;Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTimestampTypeAdapter$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTimestampTypeAdapter;-><init>(Lcom/nimbusds/jose/shaded/gson/TypeAdapter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTimestampTypeAdapter;->read(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/sql/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public read(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/sql/Timestamp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTimestampTypeAdapter;->dateTypeAdapter:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;->read(Lcom/nimbusds/jose/shaded/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/Date;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/sql/Timestamp;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-direct {p1, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public bridge synthetic write(Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/sql/Timestamp;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTimestampTypeAdapter;->write(Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public write(Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTimestampTypeAdapter;->dateTypeAdapter:Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;->write(Lcom/nimbusds/jose/shaded/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
