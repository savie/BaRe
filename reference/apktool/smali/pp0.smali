.class public final Lpp0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Ljo1;


# static fields
.field public static final n:[Lmp0;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lmp0;

    .line 3
    .line 4
    sput-object v0, Lpp0;->n:[Lmp0;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lca2;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lpp0;->a:Ljava/lang/Object;

    .line 141
    iput-object p2, p0, Lpp0;->b:Ljava/lang/Object;

    .line 142
    iput-object p3, p0, Lpp0;->c:Ljava/lang/Object;

    .line 143
    iput-object p4, p0, Lpp0;->d:Ljava/lang/Object;

    .line 144
    iput-object p5, p0, Lpp0;->e:Ljava/lang/Object;

    .line 145
    iput-object p6, p0, Lpp0;->f:Ljava/lang/Object;

    .line 146
    iput-object p7, p0, Lpp0;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lun1;Ljo1;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v3, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v4, Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v5, p1, Lun1;->c:Ljava/util/Set;

    .line 30
    .line 31
    iget-object p1, p1, Lun1;->g:Ljava/util/Set;

    .line 32
    .line 33
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_5

    .line 42
    .line 43
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lji2;

    .line 48
    .line 49
    iget v7, v6, Lji2;->c:I

    .line 50
    .line 51
    iget v8, v6, Lji2;->b:I

    .line 52
    .line 53
    if-nez v7, :cond_0

    .line 54
    .line 55
    const/4 v9, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 v9, 0x0

    .line 58
    :goto_1
    iget-object v6, v6, Lji2;->a:Lnc6;

    .line 59
    .line 60
    const/4 v10, 0x2

    .line 61
    if-eqz v9, :cond_2

    .line 62
    .line 63
    if-ne v8, v10, :cond_1

    .line 64
    .line 65
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    if-ne v7, v10, :cond_3

    .line 74
    .line 75
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    if-ne v8, v10, :cond_4

    .line 80
    .line 81
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-nez v5, :cond_6

    .line 94
    .line 95
    const-class v5, Lrb6;

    .line 96
    .line 97
    invoke-static {v5}, Lnc6;->a(Ljava/lang/Class;)Lnc6;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lpp0;->a:Ljava/lang/Object;

    .line 109
    .line 110
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iput-object v0, p0, Lpp0;->b:Ljava/lang/Object;

    .line 115
    .line 116
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p0, Lpp0;->c:Ljava/lang/Object;

    .line 121
    .line 122
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, p0, Lpp0;->d:Ljava/lang/Object;

    .line 127
    .line 128
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iput-object v0, p0, Lpp0;->e:Ljava/lang/Object;

    .line 133
    .line 134
    iput-object p1, p0, Lpp0;->f:Ljava/lang/Object;

    .line 135
    .line 136
    iput-object p2, p0, Lpp0;->k:Ljava/lang/Object;

    .line 137
    .line 138
    return-void
.end method

.method public constructor <init>(Lwo0;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lpp0;->c:Ljava/lang/Object;

    .line 149
    iput-object p1, p0, Lpp0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lnc6;)Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lpp0;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lpp0;->k:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljo1;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Ljo1;->a(Lnc6;)Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, "Attempting to request an undeclared dependency Set<"

    .line 21
    .line 22
    const-string v0, ">."

    .line 23
    .line 24
    invoke-static {p1, v0, p0}, Le6;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public b(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lpp0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-static {p1}, Lnc6;->a(Ljava/lang/Class;)Lnc6;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lpp0;->k:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljo1;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljo1;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-class v1, Lrb6;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    new-instance p1, Lym6;

    .line 33
    .line 34
    iget-object p0, p0, Lpp0;->f:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Ljava/util/Set;

    .line 37
    .line 38
    check-cast v0, Lrb6;

    .line 39
    .line 40
    invoke-direct {p1, p0, v0}, Lym6;-><init>(Ljava/util/Set;Lrb6;)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_1
    new-instance p0, Lmn1;

    .line 45
    .line 46
    const-string v0, "Attempting to request an undeclared dependency "

    .line 47
    .line 48
    const-string v1, "."

    .line 49
    .line 50
    invoke-static {p1, v0, v1}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public c(Ljava/lang/Class;)Lga6;
    .locals 0

    .line 1
    invoke-static {p1}, Lnc6;->a(Ljava/lang/Class;)Lnc6;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lpp0;->f(Lnc6;)Lga6;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public d(Lnc6;)Lga6;
    .locals 1

    .line 1
    iget-object v0, p0, Lpp0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lpp0;->k:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljo1;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Ljo1;->d(Lnc6;)Lga6;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, "Attempting to request an undeclared dependency Provider<Set<"

    .line 21
    .line 22
    const-string v0, ">>."

    .line 23
    .line 24
    invoke-static {p1, v0, p0}, Le6;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public e(Lnc6;)Llu5;
    .locals 1

    .line 1
    iget-object v0, p0, Lpp0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lpp0;->k:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljo1;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Ljo1;->e(Lnc6;)Llu5;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, "Attempting to request an undeclared dependency Deferred<"

    .line 21
    .line 22
    const-string v0, ">."

    .line 23
    .line 24
    invoke-static {p1, v0, p0}, Le6;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public f(Lnc6;)Lga6;
    .locals 1

    .line 1
    iget-object v0, p0, Lpp0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lpp0;->k:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljo1;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Ljo1;->f(Lnc6;)Lga6;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, "Attempting to request an undeclared dependency Provider<"

    .line 21
    .line 22
    const-string v0, ">."

    .line 23
    .line 24
    invoke-static {p1, v0, p0}, Le6;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public g(Lnc6;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lpp0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lpp0;->k:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljo1;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Ljo1;->g(Lnc6;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, "Attempting to request an undeclared dependency "

    .line 21
    .line 22
    const-string v0, "."

    .line 23
    .line 24
    invoke-static {p1, v0, p0}, Le6;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lpp0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;

    .line 4
    .line 5
    return-object p0
.end method

.method public h(Ljava/lang/Class;)Llu5;
    .locals 0

    .line 1
    invoke-static {p1}, Lnc6;->a(Ljava/lang/Class;)Lnc6;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lpp0;->e(Lnc6;)Llu5;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public i()Lnp0;
    .locals 5

    .line 1
    iget-object v0, p0, Lpp0;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lod;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lpp0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lv77;

    .line 10
    .line 11
    sget-object v1, Lu65;->G:Lu65;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ls65;->i(Lu65;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lpp0;->f:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lod;

    .line 22
    .line 23
    iget-object v1, p0, Lpp0;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lv77;

    .line 26
    .line 27
    sget-object v2, Lu65;->H:Lu65;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ls65;->i(Lu65;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0}, Lod;->r0()Ljava/lang/reflect/Member;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-static {v0, v1}, Lu81;->d(Ljava/lang/reflect/Member;Z)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lpp0;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Ljava/util/List;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object v0, p0, Lpp0;->c:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    new-array v1, v1, [Lmp0;

    .line 64
    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, [Lmp0;

    .line 70
    .line 71
    iget-object v1, p0, Lpp0;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Lv77;

    .line 74
    .line 75
    sget-object v2, Lu65;->G:Lu65;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ls65;->i(Lu65;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    array-length v1, v0

    .line 84
    const/4 v2, 0x0

    .line 85
    :goto_0
    if-ge v2, v1, :cond_4

    .line 86
    .line 87
    aget-object v3, v0, v2

    .line 88
    .line 89
    iget-object v4, p0, Lpp0;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v4, Lv77;

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Lmp0;->h(Lv77;)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    :goto_1
    iget-object v0, p0, Lpp0;->k:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Llr5;

    .line 102
    .line 103
    if-nez v0, :cond_3

    .line 104
    .line 105
    const/4 p0, 0x0

    .line 106
    return-object p0

    .line 107
    :cond_3
    sget-object v0, Lpp0;->n:[Lmp0;

    .line 108
    .line 109
    :cond_4
    iget-object v1, p0, Lpp0;->d:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v1, [Lmp0;

    .line 112
    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    array-length v1, v1

    .line 116
    iget-object v2, p0, Lpp0;->c:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v2, Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-ne v1, v2, :cond_5

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 128
    .line 129
    iget-object v1, p0, Lpp0;->c:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v1, Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iget-object p0, p0, Lpp0;->d:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast p0, [Lmp0;

    .line 144
    .line 145
    array-length p0, p0

    .line 146
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    const-string v1, "Mismatch between `properties` size (%d), `filteredProperties` (%s): should have as many (or `null` for latter)"

    .line 155
    .line 156
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v0

    .line 164
    :cond_6
    :goto_2
    new-instance v1, Lnp0;

    .line 165
    .line 166
    iget-object v2, p0, Lpp0;->a:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v2, Lwo0;

    .line 169
    .line 170
    iget-object v2, v2, Lwo0;->a:Lgc8;

    .line 171
    .line 172
    iget-object v3, p0, Lpp0;->d:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v3, [Lmp0;

    .line 175
    .line 176
    invoke-direct {v1, v2, p0, v0, v3}, Lop0;-><init>(Lgc8;Lpp0;[Lmp0;[Lmp0;)V

    .line 177
    .line 178
    .line 179
    return-object v1
.end method
