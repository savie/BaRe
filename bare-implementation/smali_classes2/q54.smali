.class public final Lq54;
.super Lfh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:Lp54;

.field public final synthetic v:Lr54;


# direct methods
.method public constructor <init>(Lr54;Lp54;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq54;->v:Lr54;

    .line 2
    .line 3
    iget-object p1, p2, Lp54;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lfh6;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lq54;->u:Lp54;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final r(Lzc6;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lzc6;->f:Z

    .line 2
    .line 3
    iget-object v1, p0, Lq54;->v:Lr54;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lmp6;->a:Lmp6;

    .line 8
    .line 9
    invoke-static {}, Lmp6;->f()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p0, v1, Lr54;->l:Lil0;

    .line 16
    .line 17
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->N(Lil0;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lfh6;->b()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v2, -0x1

    .line 30
    if-eq p0, v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-ltz p0, :cond_2

    .line 41
    .line 42
    iget-object v2, v1, Lgm7;->e:Lfm7;

    .line 43
    .line 44
    iget-object v2, v2, Lfm7;->a:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ge p0, v2, :cond_2

    .line 51
    .line 52
    iget-object v2, v1, Lgm7;->j:Lqt3;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1, p0}, Lgm7;->m(I)Ljl0;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Ls54;

    .line 61
    .line 62
    const/16 v1, 0x1bff

    .line 63
    .line 64
    invoke-static {p0, p1, v1}, Ls54;->a(Ls54;Lzc6;I)Ls54;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-interface {v2, p0, v0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method
