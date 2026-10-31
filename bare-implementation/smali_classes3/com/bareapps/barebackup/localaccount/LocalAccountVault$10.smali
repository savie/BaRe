.class Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->confirmRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$enrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 646
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$enrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 648
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$000()V

    .line 649
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$enrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    iget-object p1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->code:Ljava/lang/String;

    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$input:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 650
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$activity:Landroid/app/Activity;

    const-string p2, "Recovery code did not match. Save and confirm the code to continue."

    invoke-static {p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$400(Landroid/app/Activity;Ljava/lang/String;)V

    .line 651
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$enrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2100(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    .line 652
    return-void

    .line 655
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$enrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2200(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    goto :goto_0

    .line 656
    :catchall_0
    move-exception p1

    .line 657
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$activity:Landroid/app/Activity;

    const-string p2, "Local Account setup failed"

    const-string v0, "The encrypted vault could not be committed and verified. No Local Account was activated."

    invoke-static {p1, p2, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$100(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :goto_0
    return-void
.end method
