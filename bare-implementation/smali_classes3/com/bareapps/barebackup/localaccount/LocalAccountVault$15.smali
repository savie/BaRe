.class Lcom/bareapps/barebackup/localaccount/LocalAccountVault$15;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showProductDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$primaryAction:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1113
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$15;->val$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$15;->val$primaryAction:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1115
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$15;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1116
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$15;->val$primaryAction:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;

    invoke-interface {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;->run()V

    .line 1117
    return-void
.end method
