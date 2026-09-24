.class public final Lwq4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lu14;

.field public final b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public final d:Lql1;

.field public final e:Lpb7;


# direct methods
.method public constructor <init>(ZLvq;Lu14;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lwq4;->a:Lu14;

    .line 5
    .line 6
    iget-object p3, p2, Lvq;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p3, Lcom/google/android/material/card/MaterialCardView;

    .line 9
    .line 10
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    iget-object v0, p2, Lvq;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    iput-object v0, p0, Lwq4;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    iget-object p2, p2, Lvq;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    iput-object p2, p0, Lwq4;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    new-instance v1, Lql1;

    .line 27
    .line 28
    sget-object v2, Lsl1;->e:Lgv7;

    .line 29
    .line 30
    sget-object v2, Lsl1;->f:Lgv7;

    .line 31
    .line 32
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/util/List;

    .line 37
    .line 38
    invoke-direct {v1, v2, p1}, Lql1;-><init>(Ljava/util/List;Z)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lwq4;->d:Lql1;

    .line 42
    .line 43
    new-instance v2, Lpb7;

    .line 44
    .line 45
    invoke-direct {v2, p1}, Lpb7;-><init>(Z)V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lwq4;->e:Lpb7;

    .line 49
    .line 50
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-direct {p1, p3, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 57
    .line 58
    .line 59
    const/16 p1, 0xa

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 62
    .line 63
    .line 64
    new-instance v4, Le7;

    .line 65
    .line 66
    const/16 v5, 0x12

    .line 67
    .line 68
    invoke-direct {v4, p0, v5}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    iput-object v4, v1, Lql1;->h:Le7;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 77
    .line 78
    invoke-direct {v0, p3, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 85
    .line 86
    .line 87
    new-instance p1, Lgj;

    .line 88
    .line 89
    const/16 p3, 0x17

    .line 90
    .line 91
    invoke-direct {p1, p0, p3}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 92
    .line 93
    .line 94
    iput-object p1, v2, Lpb7;->h:Lgj;

    .line 95
    .line 96
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
