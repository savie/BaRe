.class public final Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final codeMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;->codeMarkers:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method public static getInstance()Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager$CodeMarkerHolder;->INSTANCE:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    .line 2
    .line 3
    return-object v0
.end method
