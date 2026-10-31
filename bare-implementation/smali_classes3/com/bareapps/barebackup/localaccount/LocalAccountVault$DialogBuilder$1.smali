.class Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$1;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;)V
    .locals 0

    .line 1251
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$1;->this$0:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1252
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$000()V

    return-void
.end method
