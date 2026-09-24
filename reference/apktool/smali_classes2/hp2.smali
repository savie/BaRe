.class public final synthetic Lhp2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljl0;

.field public final synthetic c:Lfh6;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljl0;Lfh6;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lhp2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lhp2;->b:Ljl0;

    .line 4
    .line 5
    iput-object p2, p0, Lhp2;->c:Lfh6;

    .line 6
    .line 7
    iput-object p3, p0, Lhp2;->d:Ljava/lang/Object;

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
    .locals 6

    .line 1
    iget p1, p0, Lhp2;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lhp2;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lhp2;->c:Lfh6;

    .line 6
    .line 7
    iget-object p0, p0, Lhp2;->b:Ljl0;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lzc6;

    .line 13
    .line 14
    check-cast v1, Lq54;

    .line 15
    .line 16
    check-cast v0, Ls54;

    .line 17
    .line 18
    iget-boolean p1, p0, Lzc6;->k:Z

    .line 19
    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    iget-object p0, v1, Lq54;->u:Lp54;

    .line 23
    .line 24
    iget-object p1, v1, Lq54;->v:Lr54;

    .line 25
    .line 26
    iget-object v1, p1, Lr54;->m:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, v0, Ls54;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    xor-int/lit8 v3, v2, 0x1

    .line 35
    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    move-object v2, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v2, 0x0

    .line 41
    :goto_0
    iput-object v2, p1, Lr54;->m:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v2, Lpb0;

    .line 44
    .line 45
    invoke-direct {v2}, Lpb0;-><init>()V

    .line 46
    .line 47
    .line 48
    const-wide/16 v4, 0xa0

    .line 49
    .line 50
    invoke-virtual {v2, v4, v5}, Lia8;->P(J)V

    .line 51
    .line 52
    .line 53
    sget-object v4, Lr54;->n:Landroid/view/animation/PathInterpolator;

    .line 54
    .line 55
    invoke-virtual {v2, v4}, Lia8;->Q(Landroid/animation/TimeInterpolator;)V

    .line 56
    .line 57
    .line 58
    iget-object v4, p0, Lp54;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    .line 60
    invoke-static {v4, v2}, Lda8;->a(Landroid/view/ViewGroup;Ly98;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lp54;->d:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    invoke-static {p0, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 66
    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-nez p0, :cond_4

    .line 75
    .line 76
    iget-object p0, p1, Lgm7;->e:Lfm7;

    .line 77
    .line 78
    iget-object p0, p0, Lfm7;->a:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const/4 v0, 0x0

    .line 85
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    const/4 v3, -0x1

    .line 90
    if-eqz v2, :cond_2

    .line 91
    .line 92
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ls54;

    .line 97
    .line 98
    iget-object v2, v2, Ls54;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v2, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    move v0, v3

    .line 111
    :goto_2
    if-eq v0, v3, :cond_4

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lhg6;->f(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    invoke-virtual {v1, p0}, Lq54;->r(Lzc6;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_3
    return-void

    .line 121
    :pswitch_0
    check-cast p0, Ljp2;

    .line 122
    .line 123
    check-cast v1, Lip2;

    .line 124
    .line 125
    check-cast v0, Lid2;

    .line 126
    .line 127
    iget-object p0, p0, Ljp2;->k:Lbt3;

    .line 128
    .line 129
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    iget-object p0, v1, Lfh6;->a:Landroid/view/View;

    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    new-instance p1, Lx7;

    .line 138
    .line 139
    const/4 v1, 0x1

    .line 140
    invoke-direct {p1, v0, v1}, Lx7;-><init>(Ljava/lang/Object;I)V

    .line 141
    .line 142
    .line 143
    const-wide/16 v0, 0x1f4

    .line 144
    .line 145
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
