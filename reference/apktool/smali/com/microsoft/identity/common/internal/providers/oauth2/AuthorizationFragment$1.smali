.class final Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment$1;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
    .locals 2

    .line 1
    const-string v0, "cancel_authorization_request"

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->getOrDefault(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment$1;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->cancelAuthorization(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
