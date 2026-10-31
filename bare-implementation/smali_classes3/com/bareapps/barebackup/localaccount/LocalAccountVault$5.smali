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
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 496
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$vaultFile:Ljava/io/File;

    iput-object p4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$recoveryFile:Ljava/io/File;

    iput-object p5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$previousCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 498
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$000()V

    .line 499
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$vaultFile:Ljava/io/File;

    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$recoveryFile:Ljava/io/File;

    .line 500
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$recoveryFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$recoveryFile:Ljava/io/File;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$vaultFile:Ljava/io/File;

    :goto_0
    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$id:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$600(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    move-object v4, p1

    iget-object v5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;->val$previousCode:Ljava/lang/String;

    .line 499
    invoke-static/range {v0 .. v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$500(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 502
    return-void
.end method
