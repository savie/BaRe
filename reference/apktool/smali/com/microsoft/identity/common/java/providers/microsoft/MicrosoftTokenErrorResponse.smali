.class public Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;
.super Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mCorrelationId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "correlation_id"
    .end annotation
.end field

.field private mErrorCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ly77;
        value = "error_codes"
    .end annotation
.end field

.field private mOAuthErrorMetadata:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "oAuth_metadata"
    .end annotation
.end field

.field private mTimeStamp:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "timestamp"
    .end annotation
.end field

.field private mTraceId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "trace_id"
    .end annotation
.end field


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
