.class public final Lcom/microsoft/identity/common/internal/fido/PublicKeyCredentialDescriptor;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final id:Ljava/lang/String;
    .annotation runtime Loi4;
        name = "id"
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Loi4;
        name = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "public-key"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/fido/PublicKeyCredentialDescriptor;->type:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/PublicKeyCredentialDescriptor;->id:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
