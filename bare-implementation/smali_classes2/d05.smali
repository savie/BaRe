.class public final synthetic Ld05;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/locale/LocaleActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/locale/LocaleActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld05;->a:Lorg/swiftapps/swiftbackup/locale/LocaleActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, Ld05;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Ld05;->a:Lorg/swiftapps/swiftbackup/locale/LocaleActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->M:Lgv7;

    .line 4
    .line 5
    check-cast p1, Lfm7;

    .line 6
    .line 7
    sget v2, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->P:I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, p1, Lfm7;->a:Ljava/util/List;

    .line 13
    .line 14
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->N:Lg05;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v3, p1, v4}, Lgm7;->w(Lfm7;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->N()Ln05;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iget-boolean v5, v5, Ln05;->f:Z

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->N()Ln05;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iput-boolean v4, p0, Ln05;->f:Z

    .line 33
    .line 34
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 39
    .line 40
    invoke-virtual {v3}, Lgm7;->b()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    add-int/lit8 p1, p1, -0x1

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_0
    iget-boolean p0, p0, Ld05;->b:Z

    .line 51
    .line 52
    if-eqz p0, :cond_4

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_4

    .line 59
    .line 60
    iget-object p0, p1, Lfm7;->b:Ljava/util/Set;

    .line 61
    .line 62
    invoke-static {p0}, Lel1;->T0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Ljava/lang/String;

    .line 67
    .line 68
    if-eqz p0, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/4 v2, -0x1

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lis4;

    .line 93
    .line 94
    invoke-virtual {v0}, Lis4;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    move v4, v2

    .line 109
    :goto_1
    if-eq v4, v2, :cond_4

    .line 110
    .line 111
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 116
    .line 117
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 121
    .line 122
    return-object p0
.end method
