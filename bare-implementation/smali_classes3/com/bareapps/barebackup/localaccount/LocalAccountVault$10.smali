.class Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"

# interfaces
.implements Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;


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

    .line 630
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$enrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$enrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    iget-object v0, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->code:Ljava/lang/String;

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$activity:Landroid/app/Activity;

    const-string v1, "That code doesn\'t match yet. Check what you saved and try again."

    invoke-static {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$300(Landroid/app/Activity;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$enrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$1900(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    .line 635
    return-void

    .line 638
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$enrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2100(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    goto :goto_0

    .line 639
    :catchall_0
    move-exception v0

    .line 640
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;->val$activity:Landroid/app/Activity;

    const-string v1, "Setup didn\'t finish"

    const-string v2, "B\u039bR\u2630 couldn\'t safely save and verify your Local Account. Nothing was activated. Please try again."

    invoke-static {v0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$000(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :goto_0
    return-void
.end method
