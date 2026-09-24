.class final Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCanceledListener;


# instance fields
.field final synthetic $continuation:Lo21;

.field final synthetic $methodTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo21;Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$3;->$continuation:Lo21;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$3;->$methodTag:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 3

    .line 1
    const-string v0, "get_pending_intent_canceled"

    .line 2
    .line 3
    const-string v1, "The operation to get a PendingIntent from the legacy FIDO2 API was canceled."

    .line 4
    .line 5
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$3;->$continuation:Lo21;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$3;->$methodTag:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v2, p0, v0, v1}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;->createAndThrowException$default(Lo21;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
