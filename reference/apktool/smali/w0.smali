.class public final Lw0;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lnh4;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw0;->e:I

    .line 2
    .line 3
    const/4 p2, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final D(Lz0;Ln1;)V
    .locals 0

    .line 1
    iget p0, p0, Lw0;->e:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lw1;

    .line 7
    .line 8
    iget-object p0, p1, Lw1;->c:[B

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lw1;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lz0;

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ln1;->a(Lz0;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    return-void

    .line 37
    :pswitch_0
    check-cast p1, Lx0;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final E(Lz0;)I
    .locals 3

    .line 1
    iget v0, p0, Lw0;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lw1;

    .line 7
    .line 8
    iget-object v0, p1, Lw1;->c:[B

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ln1;

    .line 18
    .line 19
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lnh4;

    .line 22
    .line 23
    invoke-direct {v1, p0, v0}, Ln1;-><init>(Lnh4;Ljava/io/ByteArrayOutputStream;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lw1;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lz0;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ln1;->a(Lz0;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    iput-object p0, p1, Lw1;->c:[B

    .line 51
    .line 52
    :cond_1
    iget-object p0, p1, Lw1;->c:[B

    .line 53
    .line 54
    array-length p0, p0

    .line 55
    return p0

    .line 56
    :pswitch_0
    check-cast p1, Lx0;

    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    return p0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
