.class public final Lto8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

.field public final b:Lpp8;

.field public final c:Landroid/widget/TextView;

.field public final d:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

.field public final e:Lzx2;

.field public final f:Landroid/widget/TextView;

.field public final g:Lcom/google/android/material/button/MaterialButton;

.field public final h:Landroid/widget/RelativeLayout;

.field public final i:Lmo8;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;Lxp3;Lpp8;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lto8;->a:Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 8
    .line 9
    iput-object p3, p0, Lto8;->b:Lpp8;

    .line 10
    .line 11
    iget-object p3, p2, Lxp3;->f:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p3, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p3, p0, Lto8;->c:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object p3, p2, Lxp3;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p3, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 20
    .line 21
    iput-object p3, p0, Lto8;->d:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 22
    .line 23
    iget-object v0, p2, Lxp3;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lzx2;

    .line 26
    .line 27
    iput-object v0, p0, Lto8;->e:Lzx2;

    .line 28
    .line 29
    iget-object v1, v0, Lzx2;->d:Landroid/widget/ImageView;

    .line 30
    .line 31
    iget-object v2, v0, Lzx2;->e:Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object v2, p0, Lto8;->f:Landroid/widget/TextView;

    .line 34
    .line 35
    iget-object v0, v0, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 36
    .line 37
    iput-object v0, p0, Lto8;->g:Lcom/google/android/material/button/MaterialButton;

    .line 38
    .line 39
    iget-object p2, p2, Lxp3;->e:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    iput-object p2, p0, Lto8;->h:Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    new-instance p2, Lmo8;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-direct {p2, p1, v0}, Lmo8;-><init>(Loo8;Z)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lto8;->i:Lmo8;

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lto8;->a(Ljava/lang/Integer;)V

    .line 55
    .line 56
    .line 57
    const p0, 0x7f080114

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, v0}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lto8;->a:Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 2
    .line 3
    const v1, 0x7f13010b

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
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, " ("

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, ")"

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_0
    iget-object p0, p0, Lto8;->c:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
