.class final Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener;"
    }
.end annotation


# instance fields
.field final synthetic $continuation:Lo21;

.field final synthetic $methodTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;


# direct methods
.method public constructor <init>(Lo21;Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$1;->$methodTag:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$1;->this$0:Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$1;->$continuation:Lo21;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroid/app/PendingIntent;

    .line 2
    .line 3
    const-string v0, "null_object"

    .line 4
    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$1;->$continuation:Lo21;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$1;->$methodTag:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 12
    .line 13
    const-string v3, "Launching the legacy FIDO2 API PendingIntent."

    .line 14
    .line 15
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$1;->this$0:Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;->getFragment()Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->getFidoLauncher()Lcr3;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    new-instance v0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;

    .line 31
    .line 32
    new-instance v2, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$1$1;

    .line 33
    .line 34
    invoke-direct {v2, v1}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$1$1;-><init>(Lo21;)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$1$2;

    .line 38
    .line 39
    invoke-direct {v3, v1}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$1$2;-><init>(Lo21;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v2, v3, p1}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;-><init>(Lmt3;Lmt3;Landroid/app/PendingIntent;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcr3;->a(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    const-string p0, "fidoLauncher is null, which indicates that the legacy FIDO2 API is being used where it shouldn\'t be."

    .line 50
    .line 51
    invoke-static {v1, v2, v0, p0}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;->createAndThrowException$default(Lo21;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    const-string p0, "Returned PendingIntent from legacy API is null."

    .line 56
    .line 57
    invoke-static {v1, v2, v0, p0}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;->createAndThrowException$default(Lo21;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
