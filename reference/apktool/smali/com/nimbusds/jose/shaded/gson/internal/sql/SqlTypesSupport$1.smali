.class Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTypesSupport$1;
.super Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTypesSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/bind/DefaultDateTypeAdapter$DateType;-><init>(Ljava/lang/Class;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/util/Date;)Ljava/sql/Date;
    .locals 2

    .line 1
    new-instance p0, Ljava/sql/Date;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Ljava/sql/Date;-><init>(J)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic deserialize(Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/sql/SqlTypesSupport$1;->deserialize(Ljava/util/Date;)Ljava/sql/Date;

    move-result-object p0

    return-object p0
.end method
