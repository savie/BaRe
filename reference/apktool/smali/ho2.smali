.class public final synthetic Lho2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lho2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lho2;->b:Ljava/lang/String;

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
    iget v0, p0, Lho2;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lho2;->b:Ljava/lang/String;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lay4;

    .line 9
    .line 10
    invoke-static {p0, p1}, Lay4$a;->B(Ljava/lang/String;Lay4;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p1, Lwx4;

    .line 15
    .line 16
    invoke-static {p0, p1}, Lwx4$a;->F(Ljava/lang/String;Lwx4;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    check-cast p1, Lsw4;

    .line 21
    .line 22
    invoke-static {p0, p1}, Lsw4$a;->n(Ljava/lang/String;Lsw4;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_2
    check-cast p1, Lmo2;

    .line 27
    .line 28
    invoke-static {p0, p1}, Lmo2$a;->N(Ljava/lang/String;Lmo2;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
