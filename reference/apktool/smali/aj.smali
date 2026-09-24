.class public final synthetic Laj;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lrj;


# direct methods
.method public synthetic constructor <init>(Lrj;I)V
    .locals 0

    .line 1
    iput p2, p0, Laj;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Laj;->b:Lrj;

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
    .locals 3

    .line 1
    iget v0, p0, Laj;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Laj;->b:Lrj;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lrj;->H()Lsj;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-object p0, p0, Lsj;->p:Landroid/widget/TextView;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lrj;->f:Lji;

    .line 16
    .line 17
    iget-boolean v1, p0, Lrj;->p:Z

    .line 18
    .line 19
    invoke-static {v0, v1}, Lni;->b(Lji;Z)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lrj;->k:Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-boolean v1, p0, Lrj;->q:Z

    .line 26
    .line 27
    iget-boolean v2, p0, Lrj;->r:Z

    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Lni;->a(Lji;ZZ)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lrj;->n:Ljava/util/ArrayList;

    .line 34
    .line 35
    sget-object v0, Lzn4;->a:Lzn4;

    .line 36
    .line 37
    new-instance v0, Lbj;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-direct {v0, p0, v1}, Lbj;-><init>(Lrj;I)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lbe8;->a:Lbe8;

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
