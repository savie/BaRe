.class public abstract Lnd6;
.super Lrl0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Binding::",
        "Ljk8;",
        ">",
        "Lrl0<",
        "TBinding;>;"
    }
.end annotation


# instance fields
.field public final c:Ll90;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lrl0;-><init>(I)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lmo3;

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lmo3;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ldi5;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, v0, v2}, Ldi5;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lys4;->c:Lys4;

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljd4;->x(Lys4;Lbt3;)Los4;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-class v1, Lod6;

    .line 25
    .line 26
    invoke-static {v1}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v3, Lw93;

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    invoke-direct {v3, v0, v4}, Lw93;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    new-instance v4, Lj7;

    .line 37
    .line 38
    invoke-direct {v4, v0, v2}, Lj7;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lmd6;

    .line 42
    .line 43
    invoke-direct {v2, p0, v0}, Lmd6;-><init>(Lnd6;Los4;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Ll90;

    .line 47
    .line 48
    invoke-direct {v0, v1, v3, v2, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lnd6;->c:Ll90;

    .line 52
    .line 53
    return-void
.end method

.method public static j(Lnd6;Ljava/util/List;Lxc6;IIZLbh;I)V
    .locals 4

    .line 1
    and-int/lit8 v0, p7, 0x10

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p5, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p7, 0x20

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v0, v2

    .line 15
    :goto_0
    and-int/lit8 p7, p7, 0x40

    .line 16
    .line 17
    if-eqz p7, :cond_2

    .line 18
    .line 19
    const/4 p6, 0x0

    .line 20
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p7

    .line 30
    xor-int/2addr p7, v2

    .line 31
    iget-object v3, p2, Lxc6;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 32
    .line 33
    invoke-static {v3, p7}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Lsz8;->I(Landroid/view/View;)Z

    .line 37
    .line 38
    .line 39
    move-result p7

    .line 40
    if-nez p7, :cond_3

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_3
    const/4 p7, -0x1

    .line 45
    if-eq p3, p7, :cond_4

    .line 46
    .line 47
    iget-object p7, p2, Lxc6;->d:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {p7, p3}, Landroid/widget/TextView;->setText(I)V

    .line 50
    .line 51
    .line 52
    :cond_4
    iget-object p3, p2, Lxc6;->b:Landroid/widget/ImageView;

    .line 53
    .line 54
    if-eqz p4, :cond_5

    .line 55
    .line 56
    move p7, v2

    .line 57
    goto :goto_1

    .line 58
    :cond_5
    move p7, v1

    .line 59
    :goto_1
    invoke-static {p3, p7}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 60
    .line 61
    .line 62
    if-eqz p4, :cond_6

    .line 63
    .line 64
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    .line 66
    .line 67
    :cond_6
    iget-object p3, p2, Lxc6;->c:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 68
    .line 69
    sget p4, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->c1:I

    .line 70
    .line 71
    invoke-virtual {p3, v2}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Lng6;

    .line 75
    .line 76
    .line 77
    move-result-object p4

    .line 78
    check-cast p4, Lcf2;

    .line 79
    .line 80
    if-eqz p4, :cond_7

    .line 81
    .line 82
    iput-boolean v1, p4, Lcf2;->g:Z

    .line 83
    .line 84
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 85
    .line 86
    .line 87
    move-result-object p4

    .line 88
    check-cast p4, Lsa1;

    .line 89
    .line 90
    if-nez p4, :cond_8

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_8
    new-instance p7, Ldd6;

    .line 94
    .line 95
    invoke-direct {p7, p4, v0}, Ldd6;-><init>(Lsa1;Z)V

    .line 96
    .line 97
    .line 98
    invoke-static {p6, p7, p2, p1}, Lnd6;->k(Lbt3;Ldd6;Lxc6;Ljava/util/List;)V

    .line 99
    .line 100
    .line 101
    new-instance p1, Lss;

    .line 102
    .line 103
    const/4 p4, 0x3

    .line 104
    invoke-direct {p1, p0, p4}, Lss;-><init>(Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    iput-object p1, p7, Lgm7;->j:Lqt3;

    .line 108
    .line 109
    new-instance p1, Lkd6;

    .line 110
    .line 111
    invoke-direct {p1, p7, p6, p7, p2}, Lkd6;-><init>(Ldd6;Lbt3;Ldd6;Lxc6;)V

    .line 112
    .line 113
    .line 114
    iput-object p1, p7, Ldd6;->n:Lkd6;

    .line 115
    .line 116
    iput-object p6, p7, Ldd6;->o:Lbt3;

    .line 117
    .line 118
    invoke-virtual {p3, p7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p2, Lxc6;->e:Landroid/widget/TextView;

    .line 122
    .line 123
    invoke-static {p1, p5}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Lsz8;->I(Landroid/view/View;)Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_b

    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Lsa1;

    .line 137
    .line 138
    if-nez p0, :cond_9

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_9
    sget-object p2, Lmp6;->a:Lmp6;

    .line 142
    .line 143
    invoke-static {}, Lmp6;->f()Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-eqz p2, :cond_a

    .line 148
    .line 149
    const p2, 0x7f13059c

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 153
    .line 154
    .line 155
    invoke-static {p0}, Lsz8;->x(Landroid/content/Context;)I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_a
    const p2, 0x7f13049f

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 167
    .line 168
    .line 169
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    .line 175
    .line 176
    :cond_b
    :goto_2
    return-void
.end method

.method public static final k(Lbt3;Ldd6;Lxc6;Ljava/util/List;)V
    .locals 11

    .line 1
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lzc6;

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    const/16 v10, 0x7ca

    .line 13
    .line 14
    const-string v2, "ID_MORE_QUICK_ACTIONS"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const v4, 0x7f13034e

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x0

    .line 24
    invoke-direct/range {v1 .. v10}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, p3}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    :cond_0
    move-object v1, p3

    .line 32
    new-instance v0, Lfm7;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    const/16 v5, 0x1e

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-direct/range {v0 .. v5}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    invoke-virtual {p1, v0, p0}, Lgm7;->w(Lfm7;Z)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget-object p0, p2, Lxc6;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    .line 49
    const/16 p1, 0x8

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final i()Lod6;
    .locals 0

    .line 1
    iget-object p0, p0, Lnd6;->c:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lod6;

    .line 8
    .line 9
    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lnd6;->i()Lod6;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lsa1;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lil0;->G()Lqo0;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iput-object p2, p1, Lod6;->i:Lqo0;

    .line 22
    .line 23
    invoke-virtual {p0}, Lnd6;->i()Lod6;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p1, p1, Lod6;->e:Lgv7;

    .line 28
    .line 29
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lix6;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    new-instance v0, Lk3;

    .line 40
    .line 41
    const/16 v1, 0x13

    .line 42
    .line 43
    invoke-direct {v0, p0, v1}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Ly20;

    .line 47
    .line 48
    const/4 v2, 0x6

    .line 49
    invoke-direct {v1, v2, v0}, Ly20;-><init>(ILmt3;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lnd6;->i()Lod6;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lod6;->k()Lix6;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    new-instance v0, Lcz;

    .line 68
    .line 69
    const/16 v1, 0xe

    .line 70
    .line 71
    invoke-direct {v0, p0, v1}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Ly20;

    .line 75
    .line 76
    invoke-direct {v1, v2, v0}, Ly20;-><init>(ILmt3;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lnd6;->i()Lod6;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object p1, p1, Lod6;->g:Lgv7;

    .line 87
    .line 88
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lix6;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    new-instance v0, Lu10;

    .line 99
    .line 100
    const/16 v1, 0x10

    .line 101
    .line 102
    invoke-direct {v0, p0, v1}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Ly20;

    .line 106
    .line 107
    invoke-direct {v1, v2, v0}, Ly20;-><init>(ILmt3;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lnd6;->i()Lod6;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lod6;->j()Lix6;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    new-instance v0, Lv10;

    .line 126
    .line 127
    const/16 v1, 0x11

    .line 128
    .line 129
    invoke-direct {v0, p0, v1}, Lv10;-><init>(Ljava/lang/Object;I)V

    .line 130
    .line 131
    .line 132
    new-instance p0, Ly20;

    .line 133
    .line 134
    invoke-direct {p0, v2, v0}, Ly20;-><init>(ILmt3;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2, p0}, Lix6;->e(Lfu4;Les5;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method
