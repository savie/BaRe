.class public final Lqi7;
.super Lfo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final B:[I


# instance fields
.field public A:Z

.field public final z:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x7f04053c

    .line 2
    .line 3
    .line 4
    const v1, 0x7f04053f

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lqi7;->B:[I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/material/snackbar/SnackbarContentLayout;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lfo0;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string p2, "accessibility"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 15
    .line 16
    iput-object p1, p0, Lqi7;->z:Landroid/view/accessibility/AccessibilityManager;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final h(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 1
    const v0, 0x7f1303e6

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lfo0;->h:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lfo0;->i:Leo0;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    iput-boolean v3, p0, Lqi7;->A:Z

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lqi;

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    invoke-direct {v0, v2, p0, p1}, Lqi;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    const/16 p1, 0x8

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    iput-boolean v2, p0, Lqi7;->A:Z

    .line 58
    .line 59
    return-void
.end method

.method public final i()V
    .locals 7

    .line 1
    invoke-static {}, Le38;->d()Le38;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lqi7;->z:Landroid/view/accessibility/AccessibilityManager;

    .line 6
    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    iget-boolean v3, p0, Lqi7;->A:Z

    .line 10
    .line 11
    const/4 v4, 0x4

    .line 12
    const/4 v5, 0x0

    .line 13
    const/16 v6, 0x1d

    .line 14
    .line 15
    if-lt v2, v6, :cond_1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    move v2, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v5

    .line 22
    :goto_0
    or-int/lit8 v2, v2, 0x3

    .line 23
    .line 24
    invoke-virtual {v1, v5, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/4 v1, -0x2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v1, v5

    .line 40
    :goto_1
    iget-object p0, p0, Lfo0;->s:Lao0;

    .line 41
    .line 42
    iget-object v2, v0, Le38;->b:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v2

    .line 45
    :try_start_0
    invoke-virtual {v0, p0}, Le38;->e(Lao0;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    iget-object p0, v0, Le38;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Lri7;

    .line 54
    .line 55
    iput v1, p0, Lri7;->b:I

    .line 56
    .line 57
    iget-object v1, v0, Le38;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Landroid/os/Handler;

    .line 60
    .line 61
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, v0, Le38;->d:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Lri7;

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Le38;->h(Lri7;)V

    .line 69
    .line 70
    .line 71
    monitor-exit v2

    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    iget-object v3, v0, Le38;->e:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v3, Lri7;

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    iget-object v3, v3, Lri7;->a:Ljava/lang/ref/WeakReference;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-ne v3, p0, :cond_4

    .line 88
    .line 89
    const/4 v5, 0x1

    .line 90
    :cond_4
    if-eqz v5, :cond_5

    .line 91
    .line 92
    iget-object p0, v0, Le38;->e:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p0, Lri7;

    .line 95
    .line 96
    iput v1, p0, Lri7;->b:I

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    new-instance v3, Lri7;

    .line 100
    .line 101
    invoke-direct {v3, v1, p0}, Lri7;-><init>(ILao0;)V

    .line 102
    .line 103
    .line 104
    iput-object v3, v0, Le38;->e:Ljava/lang/Object;

    .line 105
    .line 106
    :goto_2
    iget-object p0, v0, Le38;->d:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p0, Lri7;

    .line 109
    .line 110
    if-eqz p0, :cond_6

    .line 111
    .line 112
    invoke-virtual {v0, p0, v4}, Le38;->b(Lri7;I)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_6

    .line 117
    .line 118
    monitor-exit v2

    .line 119
    return-void

    .line 120
    :cond_6
    const/4 p0, 0x0

    .line 121
    iput-object p0, v0, Le38;->d:Ljava/lang/Object;

    .line 122
    .line 123
    invoke-virtual {v0}, Le38;->i()V

    .line 124
    .line 125
    .line 126
    monitor-exit v2

    .line 127
    return-void

    .line 128
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    throw p0
.end method
