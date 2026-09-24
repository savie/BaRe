.class public final Lorg/swiftapps/swiftbackup/settings/LicensesActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic L:I


# instance fields
.field public final K:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu14;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, p0, v1}, Lu14;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lgv7;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/settings/LicensesActivity;->K:Lgv7;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final F()Lqo0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/settings/LicensesActivity;->K:Lgv7;

    .line 5
    .line 6
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lot4;

    .line 11
    .line 12
    iget-object v0, v0, Lot4;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lk28;->setContentView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lot4;

    .line 22
    .line 23
    iget-object v0, v0, Lot4;->b:Lw00;

    .line 24
    .line 25
    iget-object v0, v0, Lw00;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lix0;

    .line 28
    .line 29
    iget-object v0, v0, Lix0;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lnc8;->Z(Z)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v2, Lkn3;

    .line 51
    .line 52
    const/16 v3, 0x8

    .line 53
    .line 54
    invoke-direct {v2, p0, v3}, Lkn3;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    const/16 v3, 0xa

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-static {v0, v4, v1, v2, v3}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/util/List;

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    sget-object v0, Lov2;->a:Lov2;

    .line 69
    .line 70
    :cond_1
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lot4;

    .line 75
    .line 76
    iget-object p1, p1, Lot4;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    .line 78
    const/4 v2, 0x7

    .line 79
    invoke-static {p1, v2}, Lsz8;->b(Landroid/view/View;I)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 83
    .line 84
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 88
    .line 89
    .line 90
    new-instance v2, Lmt4;

    .line 91
    .line 92
    invoke-direct {v2, p0}, Lmt4;-><init>(Lorg/swiftapps/swiftbackup/settings/LicensesActivity;)V

    .line 93
    .line 94
    .line 95
    iget-object p0, v2, Lmt4;->d:Lz60;

    .line 96
    .line 97
    iget-object v3, p0, Lz60;->a:Lz28;

    .line 98
    .line 99
    iget v4, p0, Lz60;->g:I

    .line 100
    .line 101
    add-int/2addr v4, v1

    .line 102
    iput v4, p0, Lz60;->g:I

    .line 103
    .line 104
    iget-object v1, p0, Lz60;->e:Ljava/util/List;

    .line 105
    .line 106
    if-ne v0, v1, :cond_2

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    if-nez v1, :cond_3

    .line 110
    .line 111
    iput-object v0, p0, Lz60;->e:Ljava/util/List;

    .line 112
    .line 113
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iput-object v1, p0, Lz60;->f:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    const/4 v1, 0x0

    .line 124
    invoke-virtual {v3, v1, v0}, Lz28;->n(II)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lz60;->a()V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    iget-object v3, p0, Lz60;->b:Lkm8;

    .line 132
    .line 133
    iget-object v3, v3, Lkm8;->a:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 136
    .line 137
    new-instance v5, Lx60;

    .line 138
    .line 139
    invoke-direct {v5, p0, v1, v0, v4}, Lx60;-><init>(Lz60;Ljava/util/List;Ljava/util/List;I)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 143
    .line 144
    .line 145
    :goto_0
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method
