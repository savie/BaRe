.class public final Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;
.super Ler6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic f0:I


# instance fields
.field public final X:Ll90;

.field public final Y:Lgv7;

.field public final Z:Lgv7;

.field public final a0:Lgv7;

.field public final b0:Lgv7;

.field public final c0:Lgv7;

.field public final d0:Lgv7;

.field public e0:Lw45;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ler6;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lgl0;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lgl0;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ll90;

    .line 12
    .line 13
    const-class v3, Lyo7;

    .line 14
    .line 15
    invoke-static {v3}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    new-instance v4, Luf;

    .line 20
    .line 21
    const/16 v5, 0xc

    .line 22
    .line 23
    invoke-direct {v4, p0, v5}, Luf;-><init>(Lil0;I)V

    .line 24
    .line 25
    .line 26
    new-instance v5, Lvf;

    .line 27
    .line 28
    const/16 v6, 0xa

    .line 29
    .line 30
    invoke-direct {v5, p0, v6}, Lvf;-><init>(Lil0;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3, v4, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->X:Ll90;

    .line 37
    .line 38
    new-instance v0, Las4;

    .line 39
    .line 40
    const/16 v2, 0x10

    .line 41
    .line 42
    invoke-direct {v0, p0, v2}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Lgv7;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Y:Lgv7;

    .line 51
    .line 52
    new-instance v0, Lb7;

    .line 53
    .line 54
    const/16 v2, 0x1b

    .line 55
    .line 56
    invoke-direct {v0, v2}, Lb7;-><init>(I)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lgv7;

    .line 60
    .line 61
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Z:Lgv7;

    .line 65
    .line 66
    new-instance v0, Lyi5;

    .line 67
    .line 68
    invoke-direct {v0, p0, v1}, Lyi5;-><init>(Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lgv7;

    .line 72
    .line 73
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->a0:Lgv7;

    .line 77
    .line 78
    new-instance v0, Lto5;

    .line 79
    .line 80
    invoke-direct {v0, p0, v6}, Lto5;-><init>(Ljava/lang/Object;I)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Lgv7;

    .line 84
    .line 85
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->b0:Lgv7;

    .line 89
    .line 90
    new-instance v0, Lhs4;

    .line 91
    .line 92
    const/16 v1, 0xd

    .line 93
    .line 94
    invoke-direct {v0, p0, v1}, Lhs4;-><init>(Ljava/lang/Object;I)V

    .line 95
    .line 96
    .line 97
    new-instance v1, Lgv7;

    .line 98
    .line 99
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->c0:Lgv7;

    .line 103
    .line 104
    new-instance v0, Lus5;

    .line 105
    .line 106
    const/4 v1, 0x7

    .line 107
    invoke-direct {v0, p0, v1}, Lus5;-><init>(Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Lgv7;

    .line 111
    .line 112
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 113
    .line 114
    .line 115
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->d0:Lgv7;

    .line 116
    .line 117
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Y()Lyo7;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final Y()Lyo7;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->X:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lyo7;

    .line 8
    .line 9
    return-object p0
.end method

.method public final Z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->d0:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->c0:Lgv7;

    .line 10
    .line 11
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lqo7;

    .line 16
    .line 17
    invoke-virtual {v1}, Lgm7;->l()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lso7;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v1, v1, Lso7;->a:Lzn7;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, v1, Lzn7;->a:Lq63;

    .line 36
    .line 37
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Z:Lgv7;

    .line 38
    .line 39
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lzn7;

    .line 44
    .line 45
    iget-object v2, v2, Lzn7;->a:Lq63;

    .line 46
    .line 47
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v1, 0x0

    .line 56
    :goto_1
    invoke-static {v0, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lsz8;->I(Landroid/view/View;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    const/16 v3, 0xff

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    const/16 v3, 0x80

    .line 76
    .line 77
    :goto_2
    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 88
    .line 89
    .line 90
    new-instance v2, Lio7;

    .line 91
    .line 92
    invoke-direct {v2, v1, p0}, Lio7;-><init>(ZLorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Y:Lgv7;

    .line 5
    .line 6
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Loo7;

    .line 11
    .line 12
    iget-object v0, v0, Loo7;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

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
    move-result-object p1

    .line 21
    check-cast p1, Loo7;

    .line 22
    .line 23
    iget-object p1, p1, Loo7;->b:Lw00;

    .line 24
    .line 25
    iget-object p1, p1, Lw00;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lix0;

    .line 28
    .line 29
    iget-object p1, p1, Lix0;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v0, 0x1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lnc8;->Z(Z)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->a0:Lgv7;

    .line 47
    .line 48
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 53
    .line 54
    invoke-static {p1}, Lsz8;->c0(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->b0:Lgv7;

    .line 58
    .line 59
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 64
    .line 65
    const/4 v1, 0x7

    .line 66
    invoke-static {p1, v1}, Lsz8;->b(Landroid/view/View;I)V

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->c0:Lgv7;

    .line 77
    .line 78
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lqo7;

    .line 83
    .line 84
    new-instance v2, Lii4;

    .line 85
    .line 86
    invoke-direct {v2, v0, v1, p0}, Lii4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iput-object v2, v1, Lgm7;->j:Lqt3;

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Z()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Y()Lyo7;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object p1, p1, Lyo7;->e:Lex6;

    .line 102
    .line 103
    new-instance v0, Lv10;

    .line 104
    .line 105
    const/16 v1, 0x15

    .line 106
    .line 107
    invoke-direct {v0, p0, v1}, Lv10;-><init>(Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Lj01;

    .line 111
    .line 112
    const/4 v2, 0x2

    .line 113
    invoke-direct {v1, v2, v0}, Lj01;-><init>(ILmt3;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p0, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Y()Lyo7;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object p1, p1, Lyo7;->f:Lix6;

    .line 124
    .line 125
    new-instance v0, Lpx;

    .line 126
    .line 127
    const/16 v1, 0x11

    .line 128
    .line 129
    invoke-direct {v0, p0, v1}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 130
    .line 131
    .line 132
    new-instance v1, Lj01;

    .line 133
    .line 134
    invoke-direct {v1, v2, v0}, Lj01;-><init>(ILmt3;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 138
    .line 139
    .line 140
    sget-object p1, Leo7;->c:Lix6;

    .line 141
    .line 142
    new-instance v0, Lzs;

    .line 143
    .line 144
    const/16 v1, 0xf

    .line 145
    .line 146
    invoke-direct {v0, p0, v1}, Lzs;-><init>(Ljava/lang/Object;I)V

    .line 147
    .line 148
    .line 149
    new-instance v1, Lj01;

    .line 150
    .line 151
    invoke-direct {v1, v2, v0}, Lj01;-><init>(ILmt3;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method
