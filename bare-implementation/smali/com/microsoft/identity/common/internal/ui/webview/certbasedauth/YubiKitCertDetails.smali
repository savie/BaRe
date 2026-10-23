.class public final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mCert:Ljava/security/cert/X509Certificate;

.field private final mSlot:Lvh7;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;Lvh7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;->mCert:Ljava/security/cert/X509Certificate;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;->mSlot:Lvh7;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getCertificate()Ljava/security/cert/X509Certificate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;->mCert:Ljava/security/cert/X509Certificate;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSlot()Lvh7;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;->mSlot:Lvh7;

    .line 2
    .line 3
    return-object p0
.end method
