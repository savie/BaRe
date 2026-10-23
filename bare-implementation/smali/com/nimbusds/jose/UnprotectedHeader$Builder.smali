.class public Lcom/nimbusds/jose/UnprotectedHeader$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/UnprotectedHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/nimbusds/jose/util/JSONObjectUtils;->newJSONObject()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/nimbusds/jose/UnprotectedHeader$Builder;->params:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public build()Lcom/nimbusds/jose/UnprotectedHeader;
    .locals 2

    .line 1
    new-instance v0, Lcom/nimbusds/jose/UnprotectedHeader;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/nimbusds/jose/UnprotectedHeader$Builder;->params:Ljava/util/Map;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, v1}, Lcom/nimbusds/jose/UnprotectedHeader;-><init>(Ljava/util/Map;Lcom/nimbusds/jose/UnprotectedHeader$1;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/UnprotectedHeader$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/UnprotectedHeader$Builder;->params:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "kid"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/UnprotectedHeader$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/UnprotectedHeader$Builder;->params:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
