.class public final Lcom/microsoft/identity/common/internal/fido/PublicKeyCredentialRequestOptions;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final allowCredentials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/fido/PublicKeyCredentialDescriptor;",
            ">;"
        }
    .end annotation

    .annotation runtime Loi4;
        name = "allowCredentials"
    .end annotation
.end field

.field public final challenge:Ljava/lang/String;
    .annotation runtime Loi4;
        name = "challenge"
    .end annotation
.end field

.field public final rpId:Ljava/lang/String;
    .annotation runtime Loi4;
        name = "rpId"
    .end annotation
.end field

.field public final userVerification:Ljava/lang/String;
    .annotation runtime Loi4;
        name = "userVerification"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/PublicKeyCredentialRequestOptions;->challenge:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/fido/PublicKeyCredentialRequestOptions;->rpId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/fido/PublicKeyCredentialRequestOptions;->allowCredentials:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/fido/PublicKeyCredentialRequestOptions;->userVerification:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method
