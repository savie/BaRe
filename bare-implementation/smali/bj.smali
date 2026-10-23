.class public final synthetic Lbj;
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
    iput p2, p0, Lbj;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lbj;->b:Lrj;

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
    .locals 2

    .line 1
    iget v0, p0, Lbj;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lbj;->b:Lrj;

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
    iget-object p0, p0, Lsj;->k:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lol1;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lho;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lrj;->k:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object v1, p0, Lrj;->n:Ljava/util/ArrayList;

    .line 31
    .line 32
    iput-object v0, p0, Lrj;->k:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object v1, p0, Lrj;->n:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0}, Lrj;->J()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lrj;->L:Lgv7;

    .line 40
    .line 41
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lwi;

    .line 46
    .line 47
    iget-object v1, p0, Lrj;->k:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-static {v0, v1}, Lr35;->m(Lr35;Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lrj;->N:Lgv7;

    .line 53
    .line 54
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lwi;

    .line 59
    .line 60
    iget-object p0, p0, Lrj;->n:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-static {v0, p0}, Lr35;->m(Lr35;Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 66
    .line 67
    return-object p0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
