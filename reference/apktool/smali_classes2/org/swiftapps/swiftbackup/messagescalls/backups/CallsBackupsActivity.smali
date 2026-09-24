.class public final Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;
.super Lx01;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic T:I


# instance fields
.field public final P:Ll90;

.field public final Q:Lgv7;

.field public final R:Lgv7;

.field public final S:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lx01;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Luf;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, p0, v1}, Luf;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ll90;

    .line 11
    .line 12
    const-class v2, Lv01;

    .line 13
    .line 14
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lvf;

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    invoke-direct {v3, p0, v4}, Lvf;-><init>(Lil0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lwf;

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    invoke-direct {v4, p0, v5}, Lwf;-><init>(Lil0;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->P:Ll90;

    .line 34
    .line 35
    new-instance v0, Lck;

    .line 36
    .line 37
    const/16 v1, 0xa

    .line 38
    .line 39
    invoke-direct {v0, p0, v1}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lgv7;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->Q:Lgv7;

    .line 48
    .line 49
    new-instance v0, Ldk;

    .line 50
    .line 51
    const/16 v1, 0xc

    .line 52
    .line 53
    invoke-direct {v0, p0, v1}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lgv7;

    .line 57
    .line 58
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->R:Lgv7;

    .line 62
    .line 63
    new-instance v0, Lek;

    .line 64
    .line 65
    invoke-direct {v0, p0, v1}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lgv7;

    .line 69
    .line 70
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->S:Lgv7;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->X()Lv01;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final bridge synthetic U()Lb11;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->X()Lv01;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final X()Lv01;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->P:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lv01;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->Q:Lgv7;

    .line 5
    .line 6
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lni7;

    .line 11
    .line 12
    iget-object v0, v0, Lni7;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

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
    check-cast p1, Lni7;

    .line 22
    .line 23
    iget-object p1, p1, Lni7;->b:Lw00;

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
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lnc8;->Z(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->X()Lv01;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-boolean v1, v1, Lv01;->g:Z

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    const v1, 0x7f13010b

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const v1, 0x7f1301fc

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p1, v1}, Lnc8;->e0(I)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->S:Lgv7;

    .line 65
    .line 66
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 71
    .line 72
    const/4 v1, 0x7

    .line 73
    invoke-static {p1, v1}, Lsz8;->b(Landroid/view/View;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->U()Lb11;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p1, p1, Lb11;->e:Lix6;

    .line 81
    .line 82
    new-instance v1, Lu10;

    .line 83
    .line 84
    invoke-direct {v1, p0, v0}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    new-instance v2, Lo01;

    .line 88
    .line 89
    invoke-direct {v2, v0, v1}, Lo01;-><init>(ILmt3;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p0, v2}, Lix6;->e(Lfu4;Les5;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->X()Lv01;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object p1, p1, Lv01;->f:Lex6;

    .line 100
    .line 101
    new-instance v0, Lhj;

    .line 102
    .line 103
    const/4 v1, 0x5

    .line 104
    invoke-direct {v0, p0, v1}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    new-instance v1, Lo01;

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    invoke-direct {v1, v2, v0}, Lo01;-><init>(ILmt3;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p0, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0f002b

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a0054

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-super {p0, p1}, Lil0;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f0a0054

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lbk;

    .line 14
    .line 15
    const/16 v1, 0x9

    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const v2, 0x7f1301e2

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v2, v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->K(Lio1;ILbt3;Lbk;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-super {p0, p1}, Lil0;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method
