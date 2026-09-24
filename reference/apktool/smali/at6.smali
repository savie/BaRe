.class public final Lat6;
.super Lrt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 8
    iput p1, p0, Lat6;->e:I

    invoke-direct {p0}, Lrt6;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILus6;Lit6;JJ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lat6;->e:I

    .line 3
    .line 4
    invoke-direct/range {p0 .. p7}, Lrt6;-><init>(ILus6;Lit6;JJ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final f(Lzu6;)V
    .locals 1

    .line 1
    iget p0, p0, Lat6;->e:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Low0;->r()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Low0;->t(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-virtual {p1}, Low0;->r()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Low0;->t(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lzu6;)V
    .locals 1

    .line 1
    iget v0, p0, Lat6;->e:I

    .line 2
    .line 3
    iget p0, p0, Lrt6;->c:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Low0;->k(I)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    invoke-virtual {p1, p0}, Lzu6;->u(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    invoke-virtual {p1, p0}, Low0;->k(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lzu6;->v()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lzu6;->w()V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    throw p0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
