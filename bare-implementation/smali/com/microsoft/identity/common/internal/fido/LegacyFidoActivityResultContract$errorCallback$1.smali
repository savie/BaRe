.class final Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract$errorCallback$1;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgs4;",
        "Lmt3;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract$errorCallback$1;->this$0:Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiException;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract$errorCallback$1;->this$0:Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;->access$getTAG$p(Lcom/microsoft/identity/common/internal/fido/LegacyFidoActivityResultContract;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 13
    .line 14
    const-string p1, "Error callback not set."

    .line 15
    .line 16
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lbe8;->a:Lbe8;

    .line 20
    .line 21
    return-object p0
.end method
