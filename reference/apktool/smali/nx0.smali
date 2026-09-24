.class public final Lnx0;
.super Ltn7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lnx0;->c:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-class p1, [B

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ltn7;-><init>(Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    const-class p1, Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0, p1}, Ltn7;-><init>(ILjava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public c(Lc87;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lnx0;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lem4;->c(Lc87;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    check-cast p2, [B

    .line 12
    .line 13
    array-length p0, p2

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 1

    .line 1
    iget p0, p0, Lnx0;->c:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lfk4;->u(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, [B

    .line 13
    .line 14
    iget-object p0, p3, Lc87;->a:Lv77;

    .line 15
    .line 16
    iget-object p0, p0, Ls65;->b:Len0;

    .line 17
    .line 18
    iget-object p0, p0, Len0;->k:Lbl0;

    .line 19
    .line 20
    const/4 p3, 0x0

    .line 21
    array-length v0, p1

    .line 22
    invoke-virtual {p2, p0, p1, p3, v0}, Lfk4;->j(Lbl0;[BII)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 2

    .line 1
    iget v0, p0, Lnx0;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    check-cast p1, [B

    .line 11
    .line 12
    sget-object p0, Lmm4;->f:Lmm4;

    .line 13
    .line 14
    invoke-virtual {p4, p1, p0}, Lrc8;->d(Ljava/lang/Object;Lmm4;)Lnw8;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p4, p2, p0}, Lrc8;->e(Lfk4;Lnw8;)Lnw8;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-object p3, p3, Lc87;->a:Lv77;

    .line 23
    .line 24
    iget-object p3, p3, Ls65;->b:Len0;

    .line 25
    .line 26
    iget-object p3, p3, Len0;->k:Lbl0;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    array-length v1, p1

    .line 30
    invoke-virtual {p2, p3, p1, v0, v1}, Lfk4;->j(Lbl0;[BII)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p4, p2, p0}, Lrc8;->f(Lfk4;Lnw8;)Lnw8;

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
