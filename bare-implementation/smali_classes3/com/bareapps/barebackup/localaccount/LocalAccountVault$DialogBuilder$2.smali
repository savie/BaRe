.class Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1260
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;->this$0:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1262
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1263
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;->this$0:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->access$2400(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;->this$0:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->access$2400(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1264
    :cond_0
    return-void
.end method
