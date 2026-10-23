.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1$3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$1:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;Landroidx/appcompat/app/AlertController$RecycleListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1$3;->this$1:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1$3;->val$listView:Landroid/widget/ListView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1$3;->val$listView:Landroid/widget/ListView;

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p3, p2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1$3;->this$1:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$1;->val$certAdapter:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$CertDetailsAdapter;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
