.class public final synthetic Lxr5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lv64$c;


# direct methods
.method public synthetic constructor <init>(Lv64$c;I)V
    .locals 0

    .line 1
    iput p2, p0, Lxr5;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lxr5;->b:Lv64$c;

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
    .locals 1

    .line 1
    iget v0, p0, Lxr5;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lxr5;->b:Lv64$c;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lxf8;

    .line 9
    .line 10
    invoke-static {p0, p1}, Lxf8$a;->C(Lv64$c;Lxf8;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p1, Lyr5;

    .line 15
    .line 16
    invoke-static {p0, p1}, Lyr5$a;->C(Lv64$c;Lyr5;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
