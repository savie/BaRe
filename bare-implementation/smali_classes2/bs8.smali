.class public final Lbs8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

.field public final b:Liu8;

.field public final c:Landroid/widget/TextView;

.field public final d:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

.field public final e:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final f:Lcom/google/android/material/button/MaterialButton;

.field public final g:Lcom/google/android/material/button/MaterialButton;

.field public final h:Lzx2;

.field public final i:Landroid/widget/TextView;

.field public final j:Lus8;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;Lyr8;Liu8;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lbs8;->a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 8
    .line 9
    iput-object p3, p0, Lbs8;->b:Liu8;

    .line 10
    .line 11
    iget-object p1, p2, Lyr8;->k:Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p1, p0, Lbs8;->c:Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object p1, p2, Lyr8;->e:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 16
    .line 17
    iput-object p1, p0, Lbs8;->d:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 18
    .line 19
    iget-object v0, p2, Lyr8;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lbs8;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    .line 23
    iget-object v0, p2, Lyr8;->b:Lcom/google/android/material/button/MaterialButton;

    .line 24
    .line 25
    iput-object v0, p0, Lbs8;->f:Lcom/google/android/material/button/MaterialButton;

    .line 26
    .line 27
    iget-object v0, p2, Lyr8;->c:Lcom/google/android/material/button/MaterialButton;

    .line 28
    .line 29
    iput-object v0, p0, Lbs8;->g:Lcom/google/android/material/button/MaterialButton;

    .line 30
    .line 31
    iget-object p2, p2, Lyr8;->d:Lzx2;

    .line 32
    .line 33
    iput-object p2, p0, Lbs8;->h:Lzx2;

    .line 34
    .line 35
    iget-object v0, p2, Lzx2;->e:Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object v0, p0, Lbs8;->i:Landroid/widget/TextView;

    .line 38
    .line 39
    iget-object v0, p2, Lzx2;->d:Landroid/widget/ImageView;

    .line 40
    .line 41
    iget-object p2, p2, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 42
    .line 43
    invoke-virtual {p3}, Liu8;->j()Lus8;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    iput-object p3, p0, Lbs8;->j:Lus8;

    .line 48
    .line 49
    const/4 p3, 0x0

    .line 50
    invoke-virtual {p0, p3}, Lbs8;->a(Ljava/lang/Integer;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    invoke-virtual {p1, p0}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 55
    .line 56
    .line 57
    const p0, 0x7f08018b

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    .line 62
    .line 63
    const/16 p0, 0x8

    .line 64
    .line 65
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbs8;->a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

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
    iget-object p0, p0, Lbs8;->c:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
