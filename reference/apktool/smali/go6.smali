.class public final Lgo6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lgo6;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lgo6;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lgo6;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lgo6;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lgo6;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lgo6;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lgo6;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lgo6;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lud9;

    .line 13
    .line 14
    check-cast v2, Lia9;

    .line 15
    .line 16
    check-cast v1, Lkq0;

    .line 17
    .line 18
    invoke-static {p0, v2, v1}, Lud9;->I(Lud9;Lia9;Lkq0;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast p0, Lo21;

    .line 23
    .line 24
    :try_start_0
    iget-object v0, p0, Lo21;->e:Lox1;

    .line 25
    .line 26
    sget-object v3, Llv1;->b:Llv1;

    .line 27
    .line 28
    invoke-interface {v0, v3}, Lox1;->minusKey(Lnx1;)Lox1;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v3, Lfo6;

    .line 33
    .line 34
    check-cast v2, Leo6;

    .line 35
    .line 36
    check-cast v1, Lo41;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-direct {v3, v2, p0, v1, v4}, Lfo6;-><init>(Leo6;Lo21;Lo41;Ljv1;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v3}, Ll73;->B(Lox1;Lqt3;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    invoke-virtual {p0, v0}, Lo21;->n(Ljava/lang/Throwable;)Z

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
