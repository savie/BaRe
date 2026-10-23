.class public final Lkl3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

.field public final b:Ljl3;

.field public final c:Ldm3;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Ljl3;Ldm3;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lkl3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 8
    .line 9
    iput-object p2, p0, Lkl3;->b:Ljl3;

    .line 10
    .line 11
    iput-object p3, p0, Lkl3;->c:Ldm3;

    .line 12
    .line 13
    iget-object p0, p2, Ljl3;->q:Landroid/widget/TextView;

    .line 14
    .line 15
    const p2, 0x7f13010b

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
