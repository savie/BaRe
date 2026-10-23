.class final Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$2;->$continuation:Lo21;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$2;->$methodTag:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$2;->$continuation:Lo21;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$2;->$methodTag:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, p0, p1}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;->access$createAndThrowException(Lo21;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
