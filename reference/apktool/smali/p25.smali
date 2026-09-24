.class public final Lp25;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lb35;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lc35;


# direct methods
.method public synthetic constructor <init>(Lc35;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lp25;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp25;->c:Lc35;

    .line 4
    .line 5
    iput-object p2, p0, Lp25;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lp25;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lp25;->c:Lc35;

    .line 7
    .line 8
    iget-object p0, p0, Lp25;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lc35;->k(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lp25;->c:Lc35;

    .line 15
    .line 16
    iget-object p0, p0, Lp25;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lc35;->l(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
