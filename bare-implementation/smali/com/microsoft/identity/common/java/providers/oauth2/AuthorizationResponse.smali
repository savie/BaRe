.class public abstract Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/providers/oauth2/ISuccessResponse;


# instance fields
.field private final mCode:Ljava/lang/String;

.field private transient mExtraParameters:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mState:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;->mCode:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;->mState:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;->mCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtraParameters()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;->mExtraParameters:Ljava/lang/Iterable;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setExtraParameters(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;->mExtraParameters:Ljava/lang/Iterable;

    .line 2
    .line 3
    return-void
.end method
