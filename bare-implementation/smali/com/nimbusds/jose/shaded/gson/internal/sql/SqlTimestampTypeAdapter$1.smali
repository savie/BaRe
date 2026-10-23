.class Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTimestampTypeAdapter$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/shaded/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTimestampTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public create(Lcom/nimbusds/jose/shaded/gson/Gson;Lcom/nimbusds/jose/shaded/gson/reflect/TypeToken;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .locals 1
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
    move-result-object p0

    .line 5
    const-class p2, Ljava/sql/Timestamp;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-ne p0, p2, :cond_0

    .line 9
    .line 10
    const-class p0, Ljava/util/Date;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/nimbusds/jose/shaded/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/gson/TypeAdapter;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance p1, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTimestampTypeAdapter;

    .line 17
    .line 18
    invoke-direct {p1, p0, v0}, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTimestampTypeAdapter;-><init>(Lcom/nimbusds/jose/shaded/gson/TypeAdapter;Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTimestampTypeAdapter$1;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    return-object v0
.end method
