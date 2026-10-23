.class public final synthetic Lep3;
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
    iput p2, p0, Lep3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lep3;->b:Lkp3;

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
    .locals 4

    .line 1
    iget p1, p0, Lep3;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lep3;->b:Lkp3;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance p1, Lkn3;

    .line 15
    .line 16
    invoke-direct {p1, p0, v1}, Lkn3;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0, p1, v1}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    invoke-virtual {p0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v2, Lbk;

    .line 28
    .line 29
    const/16 v3, 0x17

    .line 30
    .line 31
    invoke-direct {v2, p0, v3}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0, v2, v1}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
