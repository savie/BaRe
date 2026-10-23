.class public final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$CertDetailsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;",
        ">;"
    }
.end annotation


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const v1, 0x7f0d0047

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :cond_0
    const v1, 0x7f0a048e

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/widget/TextView;

    .line 27
    .line 28
    const v2, 0x7f0a028a

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;->getCertificate()Ljava/security/cert/X509Certificate;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-interface {p0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    check-cast p3, Landroid/widget/ListView;

    .line 70
    .line 71
    const p0, 0x7f0a03b7

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Landroid/widget/RadioButton;

    .line 79
    .line 80
    invoke-virtual {p3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    if-ne p1, p3, :cond_1

    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 88
    .line 89
    .line 90
    return-object p2
.end method
