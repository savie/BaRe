.class public final synthetic Lvc3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lhg6;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lhg6;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p4, p0, Lvc3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lvc3;->c:Lhg6;

    .line 4
    .line 5
    iput-object p2, p0, Lvc3;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput p3, p0, Lvc3;->b:I

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
    .locals 2

    .line 1
    iget p1, p0, Lvc3;->a:I

    .line 2
    .line 3
    iget v0, p0, Lvc3;->b:I

    .line 4
    .line 5
    iget-object v1, p0, Lvc3;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lvc3;->c:Lhg6;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lg05;

    .line 13
    .line 14
    check-cast v1, Lis4;

    .line 15
    .line 16
    invoke-virtual {v1}, Lis4;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lgm7;->t(Ljava/util/Set;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lgm7;->j:Lqt3;

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p0, v1, p1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_0
    check-cast p0, Lh54;

    .line 40
    .line 41
    check-cast v1, Ls54;

    .line 42
    .line 43
    iget-object p0, p0, Lgm7;->j:Lqt3;

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p0, v1, p1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :pswitch_1
    check-cast p0, Lxc3;

    .line 56
    .line 57
    check-cast v1, Luc3;

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    invoke-virtual {p0, v1, v0, p1}, Lxc3;->n(Luc3;IZ)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
