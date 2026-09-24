.class public final synthetic Lmj2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lmj2;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lmj2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lmj2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lmj2;->d:Ljava/lang/Object;

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
    iget p1, p0, Lmj2;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lmj2;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lmj2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lmj2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lee5;

    .line 13
    .line 14
    check-cast v1, Ly37;

    .line 15
    .line 16
    check-cast v0, Lz37;

    .line 17
    .line 18
    iget-object p0, p0, Lgm7;->j:Lqt3;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lfh6;->b()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p0, v1, p1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :pswitch_0
    check-cast p0, Lpj2;

    .line 35
    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    check-cast v0, Lwj2;

    .line 39
    .line 40
    iget-object p1, p0, Lpj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 41
    .line 42
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    new-instance v2, Lev;

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-direct {v2, v3, p0, v0}, Lev;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1, v2}, Ltu0;->y(Lil0;Ljava/lang/String;Lmt3;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
