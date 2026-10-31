.class Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"

# interfaces
.implements Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$recoveryFile:Ljava/io/File;

.field final synthetic val$source:Lorg/json/JSONObject;

.field final synthetic val$vaultFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 436
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$vaultFile:Ljava/io/File;

    iput-object p4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$recoveryFile:Ljava/io/File;

    iput-object p5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$source:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$vaultFile:Ljava/io/File;

    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$recoveryFile:Ljava/io/File;

    iget-object v4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$source:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$input:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$200(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    goto :goto_0

    .line 440
    :catchall_0
    move-exception v0

    .line 441
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 442
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$activity:Landroid/app/Activity;

    const-string v1, "That code didn\'t work. Check it and try again."

    invoke-static {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$300(Landroid/app/Activity;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$vaultFile:Ljava/io/File;

    iget-object v4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$recoveryFile:Ljava/io/File;

    iget-object v5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$source:Lorg/json/JSONObject;

    invoke-static/range {v1 .. v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$400(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 445
    :goto_0
    return-void
.end method
