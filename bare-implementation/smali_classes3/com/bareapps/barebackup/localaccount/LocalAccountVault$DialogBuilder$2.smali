.class Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->actionButton(Landroid/app/Dialog;Ljava/lang/CharSequence;ZIILandroid/content/DialogInterface$OnClickListener;)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1293
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;->this$0:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1295
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1296
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;->val$dialog:Landroid/app/Dialog;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1297
    :cond_0
    return-void
.end method
