.class public final synthetic Lix;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lix;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lix;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lix;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lix;->b:Ljava/lang/String;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Llh6;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 17
    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    new-instance v2, Lia9;

    .line 22
    .line 23
    invoke-direct {v2}, Lia9;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p0, v2, Lia9;->b:Ljava/lang/String;

    .line 27
    .line 28
    sget-object p0, Lwq0;->g:Ldq0;

    .line 29
    .line 30
    new-instance v3, Lkq0;

    .line 31
    .line 32
    invoke-direct {v3, v0, v1}, Lkq0;-><init>(Llh6;Ljava/util/concurrent/CountDownLatch;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2, v3}, Ldq0;->a(Lia9;Lkq0;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 39
    .line 40
    .line 41
    iget-object p0, v0, Llh6;->a:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lyq0;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string p0, "Purchase token must be set"

    .line 47
    .line 48
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    :goto_0
    return-object p0

    .line 53
    :pswitch_0
    const-string v0, " "

    .line 54
    .line 55
    const-string v1, ""

    .line 56
    .line 57
    invoke-static {p0, v0, v1}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
