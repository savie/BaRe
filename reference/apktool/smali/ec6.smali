.class public final synthetic Lec6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    .line 1
    iput p1, p0, Lec6;->a:I

    .line 2
    .line 3
    iput-wide p2, p0, Lec6;->b:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lec6;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lec6;->b:J

    .line 7
    .line 8
    check-cast p1, Luf8;

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Luf8$a;->m0(JLuf8;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-wide v0, p0, Lec6;->b:J

    .line 15
    .line 16
    check-cast p1, Lfc6;

    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Lfc6$a;->x(JLfc6;)V

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
