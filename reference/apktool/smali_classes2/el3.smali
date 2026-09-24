.class public final synthetic Lel3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

.field public final synthetic b:Lln3;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Lln3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lel3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lel3;->b:Lln3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lel3;->b:Lln3;

    .line 2
    .line 3
    iget-object p0, p0, Lel3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->T:Lln3;

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->T:Lln3;

    .line 11
    .line 12
    :cond_0
    return-void
.end method
