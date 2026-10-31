.class Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 435
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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 437
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$000()V

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$vaultFile:Ljava/io/File;

    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$recoveryFile:Ljava/io/File;

    iget-object v4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$source:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$300(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    goto :goto_0

    .line 440
    :catchall_0
    move-exception p1

    .line 441
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 442
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$activity:Landroid/app/Activity;

    const-string p2, "That code didn't work. Check it and try again."

    invoke-static {p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$400(Landroid/app/Activity;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$vaultFile:Ljava/io/File;

    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$recoveryFile:Ljava/io/File;

    iget-object v4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;->val$source:Lorg/json/JSONObject;

    invoke-static/range {v0 .. v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$500(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 445
    :goto_0
    return-void
.end method
