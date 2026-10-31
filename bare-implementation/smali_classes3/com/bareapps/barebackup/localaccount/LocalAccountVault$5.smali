.class Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showNewAccountConfirmation(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$previousCode:Ljava/lang/String;

.field final synthetic val$recoveryFile:Ljava/io/File;

.field final synthetic val$vaultFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 503
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$recoveryFile:Ljava/io/File;

    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$vaultFile:Ljava/io/File;

    iput-object p4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$previousCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 505
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$000()V

    .line 506
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$recoveryFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$recoveryFile:Ljava/io/File;

    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$id:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$700(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 507
    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$vaultFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$vaultFile:Ljava/io/File;

    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$id:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$700(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    :cond_1
    move-object v4, p2

    goto :goto_1

    :cond_2
    move-object v4, p1

    .line 508
    :goto_1
    if-eqz v4, :cond_3

    .line 509
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$vaultFile:Ljava/io/File;

    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$recoveryFile:Ljava/io/File;

    iget-object v5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$previousCode:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$600(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2

    .line 511
    :cond_3
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$activity:Landroid/app/Activity;

    const-string v0, "local_account_restore_failed_title"

    invoke-static {p2, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$100(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$activity:Landroid/app/Activity;

    .line 512
    const-string v1, "local_account_recovery_data_read_failed"

    invoke-static {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$100(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-static {p1, p2, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$200(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :goto_2
    return-void
.end method
