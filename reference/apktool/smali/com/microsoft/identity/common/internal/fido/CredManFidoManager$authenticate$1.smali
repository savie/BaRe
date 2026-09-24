.class final Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;
.super Lkv1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lnd2;
    c = "com.microsoft.identity.common.internal.fido.CredManFidoManager"
    f = "CredManFidoManager.kt"
    l = {
        0x5b,
        0x66
    }
    m = "authenticate"
.end annotation


# instance fields
.field L$0:Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;

.field L$1:Ljava/lang/String;

.field L$2:Ljava/lang/String;

.field L$3:Ljava/util/List;

.field L$4:Ljava/lang/String;

.field L$5:Lqj7;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;Lkv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->this$0:Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkv1;-><init>(Ljv1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->label:I

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->this$0:Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    move-object v6, p0

    .line 18
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lqj7;Lkv1;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
