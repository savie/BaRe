.class public final synthetic Lwi2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lwi2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lwi2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget p1, p0, Lwi2;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lwi2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljh6;

    .line 9
    .line 10
    iput p2, p0, Ljh6;->a:I

    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 14
    .line 15
    sget p1, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sget-object p1, Lzn4;->a:Lzn4;

    .line 22
    .line 23
    new-instance p1, Llf;

    .line 24
    .line 25
    const/16 p2, 0x15

    .line 26
    .line 27
    invoke-direct {p1, p0, p2}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    check-cast p0, Lbt3;

    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :pswitch_2
    check-cast p0, Lvi2;

    .line 43
    .line 44
    sget p1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 45
    .line 46
    invoke-virtual {p0}, Lvi2;->invoke()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
