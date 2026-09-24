.class public final Lfv2;
.super Lxg7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lfv2;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Collection;
    .locals 3

    .line 1
    iget p0, p0, Lfv2;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "b"

    .line 7
    .line 8
    const-string v0, "strong"

    .line 9
    .line 10
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_0
    const-string p0, "cite"

    .line 20
    .line 21
    const-string v0, "dfn"

    .line 22
    .line 23
    const-string v1, "i"

    .line 24
    .line 25
    const-string v2, "em"

    .line 26
    .line 27
    filled-new-array {v1, v2, p0, v0}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lj75;Ldi4;Lq64;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Lfv2;->a:I

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p0, p1, Lj75;->k:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lky3;

    .line 10
    .line 11
    const-class v0, Lar7;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lky3;->a(Ljava/lang/Class;)Lsj7;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p0, p1, p2}, Lsj7;->a(Lj75;Ldi4;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    :goto_0
    return-object p3

    .line 25
    :pswitch_0
    iget-object p0, p1, Lj75;->k:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lky3;

    .line 28
    .line 29
    const-class v0, Ldv2;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lky3;->a(Ljava/lang/Class;)Lsj7;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-interface {p0, p1, p2}, Lsj7;->a(Lj75;Ldi4;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    :goto_1
    return-object p3

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
