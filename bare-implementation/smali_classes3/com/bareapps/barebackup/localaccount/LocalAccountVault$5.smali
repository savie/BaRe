.class Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"

# interfaces
.implements Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;


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

    .line 456
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$recoveryFile:Ljava/io/File;

    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$vaultFile:Ljava/io/File;

    iput-object p4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$previousCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 458
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$recoveryFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$recoveryFile:Ljava/io/File;

    iget-object v2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$id:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$500(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 459
    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$vaultFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$vaultFile:Ljava/io/File;

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$500(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_1
    move-object v6, v1

    goto :goto_1

    :cond_2
    move-object v6, v0

    .line 460
    :goto_1
    if-eqz v6, :cond_3

    .line 461
    iget-object v2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$id:Ljava/lang/String;

    iget-object v4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$vaultFile:Ljava/io/File;

    iget-object v5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$recoveryFile:Ljava/io/File;

    iget-object v7, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$previousCode:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$400(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$activity:Landroid/app/Activity;

    const-string v1, "Recovery file unavailable"

    const-string v2, "We can\'t read a recovery file for this account. Your existing files are safe; no new account was created."

    invoke-static {v0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$000(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :goto_2
    return-void
.end method
