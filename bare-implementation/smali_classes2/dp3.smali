.class public final synthetic Ldp3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkp3;


# direct methods
.method public synthetic constructor <init>(Lkp3;I)V
    .locals 0

    .line 1
    iput p2, p0, Ldp3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ldp3;->b:Lkp3;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Ldp3;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Ldp3;->b:Lkp3;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance p1, Landroid/content/Intent;

    .line 13
    .line 14
    const-class v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 15
    .line 16
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x137b

    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    invoke-virtual {p0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Lak;

    .line 30
    .line 31
    const/16 v1, 0x13

    .line 32
    .line 33
    invoke-direct {v0, p0, v1}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-static {p1, v1, v0, p0}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
