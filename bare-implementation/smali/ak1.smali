.class public final Lak1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsj7;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lak1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lj75;Ldi4;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lak1;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Ld28;

    .line 7
    .line 8
    iget-object p1, p1, Lj75;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lo75;

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ld28;-><init>(Lo75;)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_0
    new-instance p0, Lzj1;

    .line 17
    .line 18
    iget-object p1, p1, Lj75;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lo75;

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lzj1;-><init>(Lo75;)V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
