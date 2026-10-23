.class public final Lcs8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

.field public final b:Liu8;

.field public final c:Landroid/widget/TextView;

.field public final d:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

.field public final e:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final f:Lcom/google/android/material/button/MaterialButton;

.field public final g:Lzx2;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/widget/ImageView;

.field public final j:Lcom/google/android/material/button/MaterialButton;

.field public final k:Lgv7;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;Lyr8;Liu8;)V
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
    iput-object p1, p0, Lcs8;->a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 8
    .line 9
    iput-object p3, p0, Lcs8;->b:Liu8;

    .line 10
    .line 11
    iget-object p1, p2, Lyr8;->k:Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p1, p0, Lcs8;->c:Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object p1, p2, Lyr8;->e:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 16
    .line 17
    iput-object p1, p0, Lcs8;->d:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 18
    .line 19
    iget-object p3, p2, Lyr8;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 20
    .line 21
    iput-object p3, p0, Lcs8;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    .line 23
    iget-object p3, p2, Lyr8;->b:Lcom/google/android/material/button/MaterialButton;

    .line 24
    .line 25
    iget-object v0, p2, Lyr8;->c:Lcom/google/android/material/button/MaterialButton;

    .line 26
    .line 27
    iput-object v0, p0, Lcs8;->f:Lcom/google/android/material/button/MaterialButton;

    .line 28
    .line 29
    iget-object p2, p2, Lyr8;->d:Lzx2;

    .line 30
    .line 31
    iput-object p2, p0, Lcs8;->g:Lzx2;

    .line 32
    .line 33
    iget-object v0, p2, Lzx2;->e:Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object v0, p0, Lcs8;->h:Landroid/widget/TextView;

    .line 36
    .line 37
    iget-object v0, p2, Lzx2;->d:Landroid/widget/ImageView;

    .line 38
    .line 39
    iput-object v0, p0, Lcs8;->i:Landroid/widget/ImageView;

    .line 40
    .line 41
    iget-object p2, p2, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 42
    .line 43
    iput-object p2, p0, Lcs8;->j:Lcom/google/android/material/button/MaterialButton;

    .line 44
    .line 45
    new-instance v1, Lqb5;

    .line 46
    .line 47
    const/16 v2, 0xd

    .line 48
    .line 49
    invoke-direct {v1, p0, v2}, Lqb5;-><init>(Ljava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lgv7;

    .line 53
    .line 54
    invoke-direct {v2, v1}, Lgv7;-><init>(Lbt3;)V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcs8;->k:Lgv7;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v1}, Lcs8;->a(Ljava/lang/Integer;)V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    invoke-virtual {p1, p0}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 65
    .line 66
    .line 67
    const/16 p0, 0x8

    .line 68
    .line 69
    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    const p1, 0x7f080213

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcs8;->a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 2
    .line 3
    const v1, 0x7f1305b6

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
    iget-object p0, p0, Lcs8;->c:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
