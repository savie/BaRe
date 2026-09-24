.class public final Luo8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

.field public final b:Landroid/widget/TextView;

.field public final c:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

.field public final d:Lzx2;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/RelativeLayout;

.field public final g:Lmo8;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;Lxp3;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Luo8;->a:Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 5
    .line 6
    iget-object v0, p2, Lxp3;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Luo8;->b:Landroid/widget/TextView;

    .line 11
    .line 12
    iget-object v0, p2, Lxp3;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 15
    .line 16
    iput-object v0, p0, Luo8;->c:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 17
    .line 18
    iget-object v1, p2, Lxp3;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lzx2;

    .line 21
    .line 22
    iput-object v1, p0, Luo8;->d:Lzx2;

    .line 23
    .line 24
    iget-object v2, v1, Lzx2;->d:Landroid/widget/ImageView;

    .line 25
    .line 26
    iget-object v3, v1, Lzx2;->e:Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object v3, p0, Luo8;->e:Landroid/widget/TextView;

    .line 29
    .line 30
    iget-object v1, v1, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 31
    .line 32
    iget-object p2, p2, Lxp3;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 35
    .line 36
    iput-object p2, p0, Luo8;->f:Landroid/widget/RelativeLayout;

    .line 37
    .line 38
    new-instance p2, Lmo8;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-direct {p2, p1, v3}, Lmo8;-><init>(Loo8;Z)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Luo8;->g:Lmo8;

    .line 45
    .line 46
    invoke-virtual {p0}, Luo8;->a()V

    .line 47
    .line 48
    .line 49
    const p0, 0x7f08018b

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    .line 54
    .line 55
    const/16 p0, 0x8

    .line 56
    .line 57
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Luo8;->a:Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 2
    .line 3
    const v1, 0x7f1301fc

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Luo8;->b:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    sget-object v1, Lzn4;->a:Lzn4;

    .line 31
    .line 32
    new-instance v1, La11;

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-direct {v1, p0, v0, v3, v2}, La11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 40
    .line 41
    .line 42
    return-void
.end method
