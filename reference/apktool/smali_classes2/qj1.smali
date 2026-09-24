.class public final synthetic Lqj1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljh6;


# direct methods
.method public synthetic constructor <init>(Ljh6;I)V
    .locals 0

    .line 1
    iput p2, p0, Lqj1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lqj1;->b:Ljh6;

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
    iget p1, p0, Lqj1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lqj1;->b:Ljh6;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 9
    .line 10
    iput p2, p0, Ljh6;->a:I

    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    iput p2, p0, Ljh6;->a:I

    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
