.class public final synthetic Lyi;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lrj;


# direct methods
.method public synthetic constructor <init>(Lrj;I)V
    .locals 0

    .line 1
    iput p2, p0, Lyi;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lyi;->b:Lrj;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lyi;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lyi;->b:Lrj;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lrj;->H()Lsj;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-object p0, p0, Lsj;->d:Landroid/widget/ImageView;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_0
    invoke-virtual {p0}, Lrj;->H()Lsj;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object p0, p0, Lsj;->f:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 20
    .line 21
    return-object p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
