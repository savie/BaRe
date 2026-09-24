.class public final Leq2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lf77;
.implements Liq2;


# instance fields
.field public final synthetic a:I

.field public final b:Lf77;

.field public final c:I


# direct methods
.method public constructor <init>(Lf77;II)V
    .locals 2

    .line 1
    iput p3, p0, Leq2;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "count must be non-negative, but was "

    .line 5
    .line 6
    packed-switch p3, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Leq2;->b:Lf77;

    .line 16
    .line 17
    iput p2, p0, Leq2;->c:I

    .line 18
    .line 19
    if-ltz p2, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {p2, v1}, Lf6;->f(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Leq2;->b:Lf77;

    .line 30
    .line 31
    iput p2, p0, Leq2;->c:I

    .line 32
    .line 33
    if-ltz p2, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {p2, v1}, Lf6;->f(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(I)Lf77;
    .locals 4

    .line 1
    iget v0, p0, Leq2;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Leq2;->b:Lf77;

    .line 5
    .line 6
    iget v3, p0, Leq2;->c:I

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    if-lt p1, v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Leq2;

    .line 15
    .line 16
    invoke-direct {p0, v2, p1, v1}, Leq2;-><init>(Lf77;II)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-object p0

    .line 20
    :pswitch_0
    add-int v0, v3, p1

    .line 21
    .line 22
    if-gez v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Leq2;

    .line 25
    .line 26
    invoke-direct {v0, p0, p1, v1}, Leq2;-><init>(Lf77;II)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance p0, Lpr7;

    .line 31
    .line 32
    invoke-direct {p0, v2, v3, v0}, Lpr7;-><init>(Lf77;II)V

    .line 33
    .line 34
    .line 35
    move-object v0, p0

    .line 36
    :goto_1
    return-object v0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)Lf77;
    .locals 3

    .line 1
    iget v0, p0, Leq2;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Leq2;->b:Lf77;

    .line 4
    .line 5
    iget v2, p0, Leq2;->c:I

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    if-lt p1, v2, :cond_0

    .line 11
    .line 12
    sget-object p0, Lrv2;->a:Lrv2;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Lpr7;

    .line 16
    .line 17
    invoke-direct {p0, v1, p1, v2}, Lpr7;-><init>(Lf77;II)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0

    .line 21
    :pswitch_0
    add-int/2addr v2, p1

    .line 22
    const/4 v0, 0x0

    .line 23
    if-gez v2, :cond_1

    .line 24
    .line 25
    new-instance v1, Leq2;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1, v0}, Leq2;-><init>(Lf77;II)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    new-instance p0, Leq2;

    .line 32
    .line 33
    invoke-direct {p0, v1, v2, v0}, Leq2;-><init>(Lf77;II)V

    .line 34
    .line 35
    .line 36
    move-object v1, p0

    .line 37
    :goto_1
    return-object v1

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget v0, p0, Leq2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ldq2;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Ldq2;-><init>(Leq2;B)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :pswitch_0
    new-instance v0, Ldq2;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Ldq2;-><init>(Leq2;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
