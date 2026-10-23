.class public final synthetic Lp10;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p3, p0, Lp10;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp10;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p4, p0, Lp10;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput p2, p0, Lp10;->b:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lp10;->a:I

    .line 2
    .line 3
    iget v0, p0, Lp10;->b:I

    .line 4
    .line 5
    iget-object v1, p0, Lp10;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lp10;->c:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lzc6;

    .line 13
    .line 14
    check-cast v1, Ldd6;

    .line 15
    .line 16
    iget-boolean p1, p0, Lzc6;->f:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    sget-object p1, Lmp6;->a:Lmp6;

    .line 21
    .line 22
    invoke-static {}, Lmp6;->f()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    iget-object p0, v1, Ldd6;->l:Lsa1;

    .line 29
    .line 30
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->N(Lil0;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, v1, Lgm7;->j:Lqt3;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    const/16 v2, 0xdff

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-static {p0, v3, v1, v2}, Lzc6;->q(Lzc6;ZZI)Lzc6;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {p1, p0, v0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void

    .line 54
    :pswitch_0
    check-cast p0, Lr10;

    .line 55
    .line 56
    check-cast v1, Ln10;

    .line 57
    .line 58
    iget-object p0, p0, Lgm7;->j:Lqt3;

    .line 59
    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p0, v1, p1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
