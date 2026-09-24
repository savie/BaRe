.class public abstract Landroidx/fragment/app/z;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final A:Lor3;

.field public final B:Llv1;

.field public C:Lu9;

.field public D:Lu9;

.field public E:Lu9;

.field public F:Ljava/util/ArrayDeque;

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Ljava/util/ArrayList;

.field public M:Ljava/util/ArrayList;

.field public N:Ljava/util/ArrayList;

.field public O:Landroidx/fragment/app/a0;

.field public final P:Lw8;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Landroidx/fragment/app/e0;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Landroidx/fragment/app/w;

.field public g:Lzs5;

.field public h:Landroidx/fragment/app/a;

.field public i:Z

.field public final j:Landroidx/fragment/app/x;

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final l:Ljava/util/Map;

.field public final m:Ljava/util/Map;

.field public final n:Ljava/util/ArrayList;

.field public final o:Lw00;

.field public final p:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final q:Lhr3;

.field public final r:Lir3;

.field public final s:Ljr3;

.field public final t:Lkr3;

.field public final u:Lnr3;

.field public v:I

.field public w:Landroidx/fragment/app/t;

.field public x:Lms8;

.field public y:Landroidx/fragment/app/o;

.field public z:Landroidx/fragment/app/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroidx/fragment/app/e0;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/fragment/app/e0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Landroidx/fragment/app/w;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Landroidx/fragment/app/w;-><init>(Landroidx/fragment/app/z;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/fragment/app/z;->f:Landroidx/fragment/app/w;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Landroidx/fragment/app/z;->i:Z

    .line 37
    .line 38
    new-instance v0, Landroidx/fragment/app/x;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Landroidx/fragment/app/x;-><init>(Landroidx/fragment/app/z;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Landroidx/fragment/app/z;->j:Landroidx/fragment/app/x;

    .line 44
    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Landroidx/fragment/app/z;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    .line 52
    new-instance v0, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Landroidx/fragment/app/z;->l:Ljava/util/Map;

    .line 62
    .line 63
    new-instance v0, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Landroidx/fragment/app/z;->m:Ljava/util/Map;

    .line 73
    .line 74
    new-instance v0, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Landroidx/fragment/app/z;->n:Ljava/util/ArrayList;

    .line 88
    .line 89
    new-instance v0, Lw00;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Lw00;-><init>(Landroidx/fragment/app/z;)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Landroidx/fragment/app/z;->o:Lw00;

    .line 95
    .line 96
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Landroidx/fragment/app/z;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 102
    .line 103
    new-instance v0, Lhr3;

    .line 104
    .line 105
    invoke-direct {v0, p0}, Lhr3;-><init>(Landroidx/fragment/app/z;)V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Landroidx/fragment/app/z;->q:Lhr3;

    .line 109
    .line 110
    new-instance v0, Lir3;

    .line 111
    .line 112
    invoke-direct {v0, p0}, Lir3;-><init>(Landroidx/fragment/app/z;)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Landroidx/fragment/app/z;->r:Lir3;

    .line 116
    .line 117
    new-instance v0, Ljr3;

    .line 118
    .line 119
    invoke-direct {v0, p0}, Ljr3;-><init>(Landroidx/fragment/app/z;)V

    .line 120
    .line 121
    .line 122
    iput-object v0, p0, Landroidx/fragment/app/z;->s:Ljr3;

    .line 123
    .line 124
    new-instance v0, Lkr3;

    .line 125
    .line 126
    invoke-direct {v0, p0}, Lkr3;-><init>(Landroidx/fragment/app/z;)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Landroidx/fragment/app/z;->t:Lkr3;

    .line 130
    .line 131
    new-instance v0, Lnr3;

    .line 132
    .line 133
    invoke-direct {v0, p0}, Lnr3;-><init>(Landroidx/fragment/app/z;)V

    .line 134
    .line 135
    .line 136
    iput-object v0, p0, Landroidx/fragment/app/z;->u:Lnr3;

    .line 137
    .line 138
    const/4 v0, -0x1

    .line 139
    iput v0, p0, Landroidx/fragment/app/z;->v:I

    .line 140
    .line 141
    new-instance v0, Lor3;

    .line 142
    .line 143
    invoke-direct {v0, p0}, Lor3;-><init>(Landroidx/fragment/app/z;)V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Landroidx/fragment/app/z;->A:Lor3;

    .line 147
    .line 148
    new-instance v0, Llv1;

    .line 149
    .line 150
    const/16 v1, 0xf

    .line 151
    .line 152
    invoke-direct {v0, v1}, Llv1;-><init>(I)V

    .line 153
    .line 154
    .line 155
    iput-object v0, p0, Landroidx/fragment/app/z;->B:Llv1;

    .line 156
    .line 157
    new-instance v0, Ljava/util/ArrayDeque;

    .line 158
    .line 159
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 160
    .line 161
    .line 162
    iput-object v0, p0, Landroidx/fragment/app/z;->F:Ljava/util/ArrayDeque;

    .line 163
    .line 164
    new-instance v0, Lw8;

    .line 165
    .line 166
    const/4 v1, 0x1

    .line 167
    invoke-direct {v0, p0, v1}, Lw8;-><init>(Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    iput-object v0, p0, Landroidx/fragment/app/z;->P:Lw8;

    .line 171
    .line 172
    return-void
.end method

.method public static F(Landroidx/fragment/app/a;)Ljava/util/HashSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lds3;

    .line 22
    .line 23
    iget-object v2, v2, Lds3;->b:Landroidx/fragment/app/o;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-boolean v3, p0, Landroidx/fragment/app/a;->g:Z

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method

.method public static K(I)Z
    .locals 1

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static L(Landroidx/fragment/app/o;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->e()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v0, 0x0

    .line 17
    move v1, v0

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/fragment/app/o;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-static {v2}, Landroidx/fragment/app/z;->L(Landroidx/fragment/app/o;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :cond_1
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_2
    return v0
.end method

.method public static N(Landroidx/fragment/app/o;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mMenuVisible:Z

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/fragment/app/o;->mParentFragment:Landroidx/fragment/app/o;

    .line 13
    .line 14
    invoke-static {p0}, Landroidx/fragment/app/z;->N(Landroidx/fragment/app/o;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_2
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static O(Landroidx/fragment/app/o;)Z
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/fragment/app/z;->z:Landroidx/fragment/app/o;

    .line 7
    .line 8
    if-eq p0, v1, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    iget-object p0, v0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 12
    .line 13
    invoke-static {p0}, Landroidx/fragment/app/z;->O(Landroidx/fragment/app/o;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    :goto_0
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public static e0(Landroidx/fragment/app/o;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "show: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mHidden:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mHidden:Z

    .line 33
    .line 34
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mHiddenChanged:Z

    .line 35
    .line 36
    xor-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mHiddenChanged:Z

    .line 39
    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public final A(Landroidx/fragment/app/a;Z)V
    .locals 6

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/z;->J:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    return-void

    .line 12
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/z;->y(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz p2, :cond_5

    .line 20
    .line 21
    iput-boolean v1, p2, Landroidx/fragment/app/a;->s:Z

    .line 22
    .line 23
    invoke-virtual {p2}, Landroidx/fragment/app/a;->d()V

    .line 24
    .line 25
    .line 26
    const/4 p2, 0x3

    .line 27
    invoke-static {p2}, Landroidx/fragment/app/z;->K(I)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Reversing mTransitioningOp "

    .line 36
    .line 37
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 41
    .line 42
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, " as part of execSingleAction for action "

    .line 46
    .line 47
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const-string v2, "FragmentManager"

    .line 58
    .line 59
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 63
    .line 64
    invoke-virtual {p2, v1, v1}, Landroidx/fragment/app/a;->f(ZZ)I

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 68
    .line 69
    iget-object v2, p0, Landroidx/fragment/app/z;->L:Ljava/util/ArrayList;

    .line 70
    .line 71
    iget-object v3, p0, Landroidx/fragment/app/z;->M:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {p2, v2, v3}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 77
    .line 78
    iget-object p2, p2, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lds3;

    .line 95
    .line 96
    iget-object v2, v2, Lds3;->b:Landroidx/fragment/app/o;

    .line 97
    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    iput-boolean v1, v2, Landroidx/fragment/app/o;->mTransitioning:Z

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    iput-object v0, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 104
    .line 105
    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/z;->L:Ljava/util/ArrayList;

    .line 106
    .line 107
    iget-object v2, p0, Landroidx/fragment/app/z;->M:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {p1, p2, v2}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 110
    .line 111
    .line 112
    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Landroidx/fragment/app/z;->b:Z

    .line 114
    .line 115
    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/z;->L:Ljava/util/ArrayList;

    .line 116
    .line 117
    iget-object v2, p0, Landroidx/fragment/app/z;->M:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {p0, p2, v2}, Landroidx/fragment/app/z;->W(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/z;->d()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/z;->g0()V

    .line 126
    .line 127
    .line 128
    iget-boolean p2, p0, Landroidx/fragment/app/z;->K:Z

    .line 129
    .line 130
    iget-object v2, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 131
    .line 132
    if-eqz p2, :cond_8

    .line 133
    .line 134
    iput-boolean v1, p0, Landroidx/fragment/app/z;->K:Z

    .line 135
    .line 136
    invoke-virtual {v2}, Landroidx/fragment/app/e0;->d()Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_8

    .line 149
    .line 150
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Landroidx/fragment/app/d0;

    .line 155
    .line 156
    iget-object v4, v3, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 157
    .line 158
    iget-boolean v5, v4, Landroidx/fragment/app/o;->mDeferStart:Z

    .line 159
    .line 160
    if-eqz v5, :cond_6

    .line 161
    .line 162
    iget-boolean v5, p0, Landroidx/fragment/app/z;->b:Z

    .line 163
    .line 164
    if-eqz v5, :cond_7

    .line 165
    .line 166
    iput-boolean p1, p0, Landroidx/fragment/app/z;->K:Z

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_7
    iput-boolean v1, v4, Landroidx/fragment/app/o;->mDeferStart:Z

    .line 170
    .line 171
    invoke-virtual {v3}, Landroidx/fragment/app/d0;->k()V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_8
    iget-object p0, v2, Landroidx/fragment/app/e0;->b:Ljava/util/HashMap;

    .line 176
    .line 177
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-interface {p0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :catchall_0
    move-exception p1

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/z;->d()V

    .line 191
    .line 192
    .line 193
    throw p1
.end method

.method public final B(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 12
    .line 13
    iget-object v6, v0, Landroidx/fragment/app/z;->n:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    check-cast v7, Landroidx/fragment/app/a;

    .line 20
    .line 21
    iget-boolean v7, v7, Landroidx/fragment/app/a;->p:Z

    .line 22
    .line 23
    iget-object v8, v0, Landroidx/fragment/app/z;->N:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-nez v8, :cond_0

    .line 26
    .line 27
    new-instance v8, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v8, v0, Landroidx/fragment/app/z;->N:Ljava/util/ArrayList;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v8, v0, Landroidx/fragment/app/z;->N:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v5}, Landroidx/fragment/app/e0;->f()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    iget-object v8, v0, Landroidx/fragment/app/z;->z:Landroidx/fragment/app/o;

    .line 48
    .line 49
    move v10, v3

    .line 50
    const/4 v11, 0x0

    .line 51
    :goto_1
    if-ge v10, v4, :cond_13

    .line 52
    .line 53
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v17

    .line 57
    move-object/from16 v9, v17

    .line 58
    .line 59
    check-cast v9, Landroidx/fragment/app/a;

    .line 60
    .line 61
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v17

    .line 65
    check-cast v17, Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v17

    .line 71
    iget-object v12, v0, Landroidx/fragment/app/z;->N:Ljava/util/ArrayList;

    .line 72
    .line 73
    if-nez v17, :cond_d

    .line 74
    .line 75
    iget-object v14, v9, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 76
    .line 77
    const/4 v13, 0x0

    .line 78
    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v15

    .line 82
    if-ge v13, v15, :cond_c

    .line 83
    .line 84
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v15

    .line 88
    check-cast v15, Lds3;

    .line 89
    .line 90
    move/from16 v19, v7

    .line 91
    .line 92
    iget v7, v15, Lds3;->a:I

    .line 93
    .line 94
    move/from16 v20, v10

    .line 95
    .line 96
    const/4 v10, 0x1

    .line 97
    if-eq v7, v10, :cond_b

    .line 98
    .line 99
    const/4 v10, 0x2

    .line 100
    if-eq v7, v10, :cond_5

    .line 101
    .line 102
    const/4 v10, 0x3

    .line 103
    if-eq v7, v10, :cond_3

    .line 104
    .line 105
    const/4 v10, 0x6

    .line 106
    if-eq v7, v10, :cond_3

    .line 107
    .line 108
    const/4 v10, 0x7

    .line 109
    if-eq v7, v10, :cond_2

    .line 110
    .line 111
    const/16 v10, 0x8

    .line 112
    .line 113
    if-eq v7, v10, :cond_1

    .line 114
    .line 115
    move-object/from16 v24, v6

    .line 116
    .line 117
    move/from16 v22, v11

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_1
    new-instance v7, Lds3;

    .line 121
    .line 122
    move/from16 v22, v11

    .line 123
    .line 124
    const/4 v10, 0x0

    .line 125
    const/16 v11, 0x9

    .line 126
    .line 127
    invoke-direct {v7, v11, v8, v10}, Lds3;-><init>(ILandroidx/fragment/app/o;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v14, v13, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    const/4 v10, 0x1

    .line 134
    iput-boolean v10, v15, Lds3;->c:Z

    .line 135
    .line 136
    add-int/lit8 v13, v13, 0x1

    .line 137
    .line 138
    iget-object v7, v15, Lds3;->b:Landroidx/fragment/app/o;

    .line 139
    .line 140
    move-object/from16 v24, v6

    .line 141
    .line 142
    move-object v8, v7

    .line 143
    :goto_3
    const/4 v10, 0x1

    .line 144
    goto/16 :goto_8

    .line 145
    .line 146
    :cond_2
    const/4 v10, 0x1

    .line 147
    move/from16 v22, v11

    .line 148
    .line 149
    move-object/from16 v24, v6

    .line 150
    .line 151
    goto/16 :goto_7

    .line 152
    .line 153
    :cond_3
    move/from16 v22, v11

    .line 154
    .line 155
    iget-object v7, v15, Lds3;->b:Landroidx/fragment/app/o;

    .line 156
    .line 157
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    iget-object v7, v15, Lds3;->b:Landroidx/fragment/app/o;

    .line 161
    .line 162
    if-ne v7, v8, :cond_4

    .line 163
    .line 164
    new-instance v8, Lds3;

    .line 165
    .line 166
    const/16 v11, 0x9

    .line 167
    .line 168
    invoke-direct {v8, v11, v7}, Lds3;-><init>(ILandroidx/fragment/app/o;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v14, v13, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    add-int/lit8 v13, v13, 0x1

    .line 175
    .line 176
    move-object/from16 v24, v6

    .line 177
    .line 178
    const/4 v8, 0x0

    .line 179
    goto :goto_3

    .line 180
    :cond_4
    move-object/from16 v24, v6

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_5
    move/from16 v22, v11

    .line 184
    .line 185
    iget-object v7, v15, Lds3;->b:Landroidx/fragment/app/o;

    .line 186
    .line 187
    iget v10, v7, Landroidx/fragment/app/o;->mContainerId:I

    .line 188
    .line 189
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    const/16 v18, 0x1

    .line 194
    .line 195
    add-int/lit8 v11, v11, -0x1

    .line 196
    .line 197
    const/16 v23, 0x0

    .line 198
    .line 199
    :goto_4
    if-ltz v11, :cond_9

    .line 200
    .line 201
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v24

    .line 205
    move/from16 v25, v11

    .line 206
    .line 207
    move-object/from16 v11, v24

    .line 208
    .line 209
    check-cast v11, Landroidx/fragment/app/o;

    .line 210
    .line 211
    move-object/from16 v24, v6

    .line 212
    .line 213
    iget v6, v11, Landroidx/fragment/app/o;->mContainerId:I

    .line 214
    .line 215
    if-ne v6, v10, :cond_8

    .line 216
    .line 217
    if-ne v11, v7, :cond_6

    .line 218
    .line 219
    move/from16 v21, v10

    .line 220
    .line 221
    const/4 v10, 0x1

    .line 222
    const/16 v23, 0x1

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_6
    if-ne v11, v8, :cond_7

    .line 226
    .line 227
    new-instance v6, Lds3;

    .line 228
    .line 229
    move/from16 v21, v10

    .line 230
    .line 231
    const/4 v8, 0x0

    .line 232
    const/16 v10, 0x9

    .line 233
    .line 234
    invoke-direct {v6, v10, v11, v8}, Lds3;-><init>(ILandroidx/fragment/app/o;I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v14, v13, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    add-int/lit8 v13, v13, 0x1

    .line 241
    .line 242
    move v6, v8

    .line 243
    const/4 v8, 0x0

    .line 244
    goto :goto_5

    .line 245
    :cond_7
    move/from16 v21, v10

    .line 246
    .line 247
    const/4 v6, 0x0

    .line 248
    const/16 v10, 0x9

    .line 249
    .line 250
    :goto_5
    new-instance v10, Lds3;

    .line 251
    .line 252
    move-object/from16 v26, v8

    .line 253
    .line 254
    const/4 v8, 0x3

    .line 255
    invoke-direct {v10, v8, v11, v6}, Lds3;-><init>(ILandroidx/fragment/app/o;I)V

    .line 256
    .line 257
    .line 258
    iget v6, v15, Lds3;->d:I

    .line 259
    .line 260
    iput v6, v10, Lds3;->d:I

    .line 261
    .line 262
    iget v6, v15, Lds3;->f:I

    .line 263
    .line 264
    iput v6, v10, Lds3;->f:I

    .line 265
    .line 266
    iget v6, v15, Lds3;->e:I

    .line 267
    .line 268
    iput v6, v10, Lds3;->e:I

    .line 269
    .line 270
    iget v6, v15, Lds3;->g:I

    .line 271
    .line 272
    iput v6, v10, Lds3;->g:I

    .line 273
    .line 274
    invoke-virtual {v14, v13, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    const/4 v10, 0x1

    .line 281
    add-int/2addr v13, v10

    .line 282
    move-object/from16 v8, v26

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_8
    move/from16 v21, v10

    .line 286
    .line 287
    const/4 v10, 0x1

    .line 288
    :goto_6
    add-int/lit8 v11, v25, -0x1

    .line 289
    .line 290
    move/from16 v10, v21

    .line 291
    .line 292
    move-object/from16 v6, v24

    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_9
    move-object/from16 v24, v6

    .line 296
    .line 297
    const/4 v10, 0x1

    .line 298
    if-eqz v23, :cond_a

    .line 299
    .line 300
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    add-int/lit8 v13, v13, -0x1

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_a
    iput v10, v15, Lds3;->a:I

    .line 307
    .line 308
    iput-boolean v10, v15, Lds3;->c:Z

    .line 309
    .line 310
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    goto :goto_8

    .line 314
    :cond_b
    move-object/from16 v24, v6

    .line 315
    .line 316
    move/from16 v22, v11

    .line 317
    .line 318
    :goto_7
    iget-object v6, v15, Lds3;->b:Landroidx/fragment/app/o;

    .line 319
    .line 320
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    :goto_8
    add-int/2addr v13, v10

    .line 324
    move/from16 v7, v19

    .line 325
    .line 326
    move/from16 v10, v20

    .line 327
    .line 328
    move/from16 v11, v22

    .line 329
    .line 330
    move-object/from16 v6, v24

    .line 331
    .line 332
    goto/16 :goto_2

    .line 333
    .line 334
    :cond_c
    move-object/from16 v24, v6

    .line 335
    .line 336
    move/from16 v19, v7

    .line 337
    .line 338
    move/from16 v20, v10

    .line 339
    .line 340
    move/from16 v22, v11

    .line 341
    .line 342
    goto :goto_b

    .line 343
    :cond_d
    move-object/from16 v24, v6

    .line 344
    .line 345
    move/from16 v19, v7

    .line 346
    .line 347
    move/from16 v20, v10

    .line 348
    .line 349
    move/from16 v22, v11

    .line 350
    .line 351
    const/4 v10, 0x1

    .line 352
    iget-object v6, v9, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 353
    .line 354
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    sub-int/2addr v7, v10

    .line 359
    :goto_9
    if-ltz v7, :cond_10

    .line 360
    .line 361
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v11

    .line 365
    check-cast v11, Lds3;

    .line 366
    .line 367
    iget v13, v11, Lds3;->a:I

    .line 368
    .line 369
    if-eq v13, v10, :cond_f

    .line 370
    .line 371
    const/4 v10, 0x3

    .line 372
    if-eq v13, v10, :cond_e

    .line 373
    .line 374
    packed-switch v13, :pswitch_data_0

    .line 375
    .line 376
    .line 377
    goto :goto_a

    .line 378
    :pswitch_0
    iget-object v13, v11, Lds3;->h:Lst4;

    .line 379
    .line 380
    iput-object v13, v11, Lds3;->i:Lst4;

    .line 381
    .line 382
    goto :goto_a

    .line 383
    :pswitch_1
    iget-object v8, v11, Lds3;->b:Landroidx/fragment/app/o;

    .line 384
    .line 385
    goto :goto_a

    .line 386
    :pswitch_2
    const/4 v8, 0x0

    .line 387
    goto :goto_a

    .line 388
    :cond_e
    :pswitch_3
    iget-object v11, v11, Lds3;->b:Landroidx/fragment/app/o;

    .line 389
    .line 390
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    goto :goto_a

    .line 394
    :cond_f
    const/4 v10, 0x3

    .line 395
    :pswitch_4
    iget-object v11, v11, Lds3;->b:Landroidx/fragment/app/o;

    .line 396
    .line 397
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    :goto_a
    add-int/lit8 v7, v7, -0x1

    .line 401
    .line 402
    const/4 v10, 0x1

    .line 403
    goto :goto_9

    .line 404
    :cond_10
    :goto_b
    if-nez v22, :cond_12

    .line 405
    .line 406
    iget-boolean v6, v9, Landroidx/fragment/app/a;->g:Z

    .line 407
    .line 408
    if-eqz v6, :cond_11

    .line 409
    .line 410
    goto :goto_c

    .line 411
    :cond_11
    const/4 v11, 0x0

    .line 412
    goto :goto_d

    .line 413
    :cond_12
    :goto_c
    const/4 v11, 0x1

    .line 414
    :goto_d
    add-int/lit8 v10, v20, 0x1

    .line 415
    .line 416
    move/from16 v7, v19

    .line 417
    .line 418
    move-object/from16 v6, v24

    .line 419
    .line 420
    goto/16 :goto_1

    .line 421
    .line 422
    :cond_13
    move-object/from16 v24, v6

    .line 423
    .line 424
    move/from16 v19, v7

    .line 425
    .line 426
    move/from16 v22, v11

    .line 427
    .line 428
    const/4 v10, 0x3

    .line 429
    iget-object v6, v0, Landroidx/fragment/app/z;->N:Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 432
    .line 433
    .line 434
    if-nez v19, :cond_16

    .line 435
    .line 436
    iget v6, v0, Landroidx/fragment/app/z;->v:I

    .line 437
    .line 438
    const/4 v7, 0x1

    .line 439
    if-lt v6, v7, :cond_16

    .line 440
    .line 441
    move v6, v3

    .line 442
    :goto_e
    if-ge v6, v4, :cond_16

    .line 443
    .line 444
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    check-cast v7, Landroidx/fragment/app/a;

    .line 449
    .line 450
    iget-object v7, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 451
    .line 452
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 453
    .line 454
    .line 455
    move-result-object v7

    .line 456
    :cond_14
    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 457
    .line 458
    .line 459
    move-result v8

    .line 460
    if-eqz v8, :cond_15

    .line 461
    .line 462
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    check-cast v8, Lds3;

    .line 467
    .line 468
    iget-object v8, v8, Lds3;->b:Landroidx/fragment/app/o;

    .line 469
    .line 470
    if-eqz v8, :cond_14

    .line 471
    .line 472
    iget-object v9, v8, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 473
    .line 474
    if-eqz v9, :cond_14

    .line 475
    .line 476
    invoke-virtual {v0, v8}, Landroidx/fragment/app/z;->g(Landroidx/fragment/app/o;)Landroidx/fragment/app/d0;

    .line 477
    .line 478
    .line 479
    move-result-object v8

    .line 480
    invoke-virtual {v5, v8}, Landroidx/fragment/app/e0;->g(Landroidx/fragment/app/d0;)V

    .line 481
    .line 482
    .line 483
    goto :goto_f

    .line 484
    :cond_15
    add-int/lit8 v6, v6, 0x1

    .line 485
    .line 486
    goto :goto_e

    .line 487
    :cond_16
    const-string v5, "Unknown cmd: "

    .line 488
    .line 489
    move v6, v3

    .line 490
    :goto_10
    const/4 v7, -0x1

    .line 491
    if-ge v6, v4, :cond_22

    .line 492
    .line 493
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v8

    .line 497
    check-cast v8, Landroidx/fragment/app/a;

    .line 498
    .line 499
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v9

    .line 503
    check-cast v9, Ljava/lang/Boolean;

    .line 504
    .line 505
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 506
    .line 507
    .line 508
    move-result v9

    .line 509
    if-eqz v9, :cond_1e

    .line 510
    .line 511
    invoke-virtual {v8, v7}, Landroidx/fragment/app/a;->c(I)V

    .line 512
    .line 513
    .line 514
    iget-object v7, v8, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/z;

    .line 515
    .line 516
    iget-object v9, v8, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 517
    .line 518
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 519
    .line 520
    .line 521
    move-result v11

    .line 522
    const/4 v12, 0x1

    .line 523
    sub-int/2addr v11, v12

    .line 524
    :goto_11
    if-ltz v11, :cond_1d

    .line 525
    .line 526
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v13

    .line 530
    check-cast v13, Lds3;

    .line 531
    .line 532
    iget-object v14, v13, Lds3;->b:Landroidx/fragment/app/o;

    .line 533
    .line 534
    if-eqz v14, :cond_1c

    .line 535
    .line 536
    iget-object v15, v14, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 537
    .line 538
    if-nez v15, :cond_17

    .line 539
    .line 540
    goto :goto_12

    .line 541
    :cond_17
    invoke-virtual {v14}, Landroidx/fragment/app/o;->e()Ldr3;

    .line 542
    .line 543
    .line 544
    move-result-object v15

    .line 545
    iput-boolean v12, v15, Ldr3;->a:Z

    .line 546
    .line 547
    :goto_12
    iget v12, v8, Landroidx/fragment/app/a;->f:I

    .line 548
    .line 549
    const/16 v15, 0x2002

    .line 550
    .line 551
    const/16 v10, 0x1001

    .line 552
    .line 553
    if-eq v12, v10, :cond_1a

    .line 554
    .line 555
    if-eq v12, v15, :cond_19

    .line 556
    .line 557
    const/16 v10, 0x1004

    .line 558
    .line 559
    const/16 v15, 0x2005

    .line 560
    .line 561
    if-eq v12, v15, :cond_19

    .line 562
    .line 563
    const/16 v15, 0x1003

    .line 564
    .line 565
    if-eq v12, v15, :cond_1a

    .line 566
    .line 567
    if-eq v12, v10, :cond_18

    .line 568
    .line 569
    const/4 v15, 0x0

    .line 570
    goto :goto_13

    .line 571
    :cond_18
    const/16 v15, 0x2005

    .line 572
    .line 573
    goto :goto_13

    .line 574
    :cond_19
    move v15, v10

    .line 575
    :cond_1a
    :goto_13
    iget-object v10, v14, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 576
    .line 577
    if-nez v10, :cond_1b

    .line 578
    .line 579
    if-nez v15, :cond_1b

    .line 580
    .line 581
    goto :goto_14

    .line 582
    :cond_1b
    invoke-virtual {v14}, Landroidx/fragment/app/o;->e()Ldr3;

    .line 583
    .line 584
    .line 585
    iget-object v10, v14, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 586
    .line 587
    iput v15, v10, Ldr3;->f:I

    .line 588
    .line 589
    :goto_14
    invoke-virtual {v14}, Landroidx/fragment/app/o;->e()Ldr3;

    .line 590
    .line 591
    .line 592
    iget-object v10, v14, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 593
    .line 594
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 595
    .line 596
    .line 597
    :cond_1c
    iget v10, v13, Lds3;->a:I

    .line 598
    .line 599
    packed-switch v10, :pswitch_data_1

    .line 600
    .line 601
    .line 602
    :pswitch_5
    iget v0, v13, Lds3;->a:I

    .line 603
    .line 604
    invoke-static {v0, v5}, Lz5;->c(ILjava/lang/String;)V

    .line 605
    .line 606
    .line 607
    return-void

    .line 608
    :pswitch_6
    iget-object v10, v14, Landroidx/fragment/app/o;->mMaxState:Lst4;

    .line 609
    .line 610
    iput-object v10, v13, Lds3;->i:Lst4;

    .line 611
    .line 612
    iget-object v10, v13, Lds3;->h:Lst4;

    .line 613
    .line 614
    invoke-virtual {v7, v14, v10}, Landroidx/fragment/app/z;->b0(Landroidx/fragment/app/o;Lst4;)V

    .line 615
    .line 616
    .line 617
    :goto_15
    const/4 v10, 0x1

    .line 618
    goto/16 :goto_16

    .line 619
    .line 620
    :pswitch_7
    invoke-virtual {v7, v14}, Landroidx/fragment/app/z;->c0(Landroidx/fragment/app/o;)V

    .line 621
    .line 622
    .line 623
    goto :goto_15

    .line 624
    :pswitch_8
    const/4 v10, 0x0

    .line 625
    invoke-virtual {v7, v10}, Landroidx/fragment/app/z;->c0(Landroidx/fragment/app/o;)V

    .line 626
    .line 627
    .line 628
    goto :goto_15

    .line 629
    :pswitch_9
    iget v10, v13, Lds3;->d:I

    .line 630
    .line 631
    iget v12, v13, Lds3;->e:I

    .line 632
    .line 633
    iget v15, v13, Lds3;->f:I

    .line 634
    .line 635
    iget v13, v13, Lds3;->g:I

    .line 636
    .line 637
    invoke-virtual {v14, v10, v12, v15, v13}, Landroidx/fragment/app/o;->setAnimations(IIII)V

    .line 638
    .line 639
    .line 640
    const/4 v10, 0x1

    .line 641
    invoke-virtual {v7, v14, v10}, Landroidx/fragment/app/z;->a0(Landroidx/fragment/app/o;Z)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v7, v14}, Landroidx/fragment/app/z;->h(Landroidx/fragment/app/o;)V

    .line 645
    .line 646
    .line 647
    goto :goto_15

    .line 648
    :pswitch_a
    iget v10, v13, Lds3;->d:I

    .line 649
    .line 650
    iget v12, v13, Lds3;->e:I

    .line 651
    .line 652
    iget v15, v13, Lds3;->f:I

    .line 653
    .line 654
    iget v13, v13, Lds3;->g:I

    .line 655
    .line 656
    invoke-virtual {v14, v10, v12, v15, v13}, Landroidx/fragment/app/o;->setAnimations(IIII)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v7, v14}, Landroidx/fragment/app/z;->c(Landroidx/fragment/app/o;)V

    .line 660
    .line 661
    .line 662
    goto :goto_15

    .line 663
    :pswitch_b
    iget v10, v13, Lds3;->d:I

    .line 664
    .line 665
    iget v12, v13, Lds3;->e:I

    .line 666
    .line 667
    iget v15, v13, Lds3;->f:I

    .line 668
    .line 669
    iget v13, v13, Lds3;->g:I

    .line 670
    .line 671
    invoke-virtual {v14, v10, v12, v15, v13}, Landroidx/fragment/app/o;->setAnimations(IIII)V

    .line 672
    .line 673
    .line 674
    const/4 v10, 0x1

    .line 675
    invoke-virtual {v7, v14, v10}, Landroidx/fragment/app/z;->a0(Landroidx/fragment/app/o;Z)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v7, v14}, Landroidx/fragment/app/z;->J(Landroidx/fragment/app/o;)V

    .line 679
    .line 680
    .line 681
    goto :goto_15

    .line 682
    :pswitch_c
    iget v10, v13, Lds3;->d:I

    .line 683
    .line 684
    iget v12, v13, Lds3;->e:I

    .line 685
    .line 686
    iget v15, v13, Lds3;->f:I

    .line 687
    .line 688
    iget v13, v13, Lds3;->g:I

    .line 689
    .line 690
    invoke-virtual {v14, v10, v12, v15, v13}, Landroidx/fragment/app/o;->setAnimations(IIII)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 694
    .line 695
    .line 696
    invoke-static {v14}, Landroidx/fragment/app/z;->e0(Landroidx/fragment/app/o;)V

    .line 697
    .line 698
    .line 699
    goto :goto_15

    .line 700
    :pswitch_d
    iget v10, v13, Lds3;->d:I

    .line 701
    .line 702
    iget v12, v13, Lds3;->e:I

    .line 703
    .line 704
    iget v15, v13, Lds3;->f:I

    .line 705
    .line 706
    iget v13, v13, Lds3;->g:I

    .line 707
    .line 708
    invoke-virtual {v14, v10, v12, v15, v13}, Landroidx/fragment/app/o;->setAnimations(IIII)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v7, v14}, Landroidx/fragment/app/z;->a(Landroidx/fragment/app/o;)Landroidx/fragment/app/d0;

    .line 712
    .line 713
    .line 714
    goto :goto_15

    .line 715
    :pswitch_e
    iget v10, v13, Lds3;->d:I

    .line 716
    .line 717
    iget v12, v13, Lds3;->e:I

    .line 718
    .line 719
    iget v15, v13, Lds3;->f:I

    .line 720
    .line 721
    iget v13, v13, Lds3;->g:I

    .line 722
    .line 723
    invoke-virtual {v14, v10, v12, v15, v13}, Landroidx/fragment/app/o;->setAnimations(IIII)V

    .line 724
    .line 725
    .line 726
    const/4 v10, 0x1

    .line 727
    invoke-virtual {v7, v14, v10}, Landroidx/fragment/app/z;->a0(Landroidx/fragment/app/o;Z)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v7, v14}, Landroidx/fragment/app/z;->V(Landroidx/fragment/app/o;)V

    .line 731
    .line 732
    .line 733
    :goto_16
    add-int/lit8 v11, v11, -0x1

    .line 734
    .line 735
    move v12, v10

    .line 736
    const/4 v10, 0x3

    .line 737
    goto/16 :goto_11

    .line 738
    .line 739
    :cond_1d
    move-object/from16 v19, v5

    .line 740
    .line 741
    goto/16 :goto_1c

    .line 742
    .line 743
    :cond_1e
    const/4 v10, 0x1

    .line 744
    invoke-virtual {v8, v10}, Landroidx/fragment/app/a;->c(I)V

    .line 745
    .line 746
    .line 747
    iget-object v7, v8, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/z;

    .line 748
    .line 749
    iget-object v9, v8, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 750
    .line 751
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 752
    .line 753
    .line 754
    move-result v10

    .line 755
    const/4 v11, 0x0

    .line 756
    :goto_17
    if-ge v11, v10, :cond_1d

    .line 757
    .line 758
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v12

    .line 762
    check-cast v12, Lds3;

    .line 763
    .line 764
    iget-object v13, v12, Lds3;->b:Landroidx/fragment/app/o;

    .line 765
    .line 766
    if-eqz v13, :cond_21

    .line 767
    .line 768
    iget-object v14, v13, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 769
    .line 770
    if-nez v14, :cond_1f

    .line 771
    .line 772
    goto :goto_18

    .line 773
    :cond_1f
    invoke-virtual {v13}, Landroidx/fragment/app/o;->e()Ldr3;

    .line 774
    .line 775
    .line 776
    move-result-object v14

    .line 777
    const/4 v15, 0x0

    .line 778
    iput-boolean v15, v14, Ldr3;->a:Z

    .line 779
    .line 780
    :goto_18
    iget v14, v8, Landroidx/fragment/app/a;->f:I

    .line 781
    .line 782
    iget-object v15, v13, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 783
    .line 784
    if-nez v15, :cond_20

    .line 785
    .line 786
    if-nez v14, :cond_20

    .line 787
    .line 788
    goto :goto_19

    .line 789
    :cond_20
    invoke-virtual {v13}, Landroidx/fragment/app/o;->e()Ldr3;

    .line 790
    .line 791
    .line 792
    iget-object v15, v13, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 793
    .line 794
    iput v14, v15, Ldr3;->f:I

    .line 795
    .line 796
    :goto_19
    invoke-virtual {v13}, Landroidx/fragment/app/o;->e()Ldr3;

    .line 797
    .line 798
    .line 799
    iget-object v14, v13, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 800
    .line 801
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 802
    .line 803
    .line 804
    :cond_21
    iget v14, v12, Lds3;->a:I

    .line 805
    .line 806
    packed-switch v14, :pswitch_data_2

    .line 807
    .line 808
    .line 809
    :pswitch_f
    iget v0, v12, Lds3;->a:I

    .line 810
    .line 811
    invoke-static {v0, v5}, Lz5;->c(ILjava/lang/String;)V

    .line 812
    .line 813
    .line 814
    return-void

    .line 815
    :pswitch_10
    iget-object v14, v13, Landroidx/fragment/app/o;->mMaxState:Lst4;

    .line 816
    .line 817
    iput-object v14, v12, Lds3;->h:Lst4;

    .line 818
    .line 819
    iget-object v12, v12, Lds3;->i:Lst4;

    .line 820
    .line 821
    invoke-virtual {v7, v13, v12}, Landroidx/fragment/app/z;->b0(Landroidx/fragment/app/o;Lst4;)V

    .line 822
    .line 823
    .line 824
    :goto_1a
    move-object/from16 v19, v5

    .line 825
    .line 826
    goto/16 :goto_1b

    .line 827
    .line 828
    :pswitch_11
    const/4 v12, 0x0

    .line 829
    invoke-virtual {v7, v12}, Landroidx/fragment/app/z;->c0(Landroidx/fragment/app/o;)V

    .line 830
    .line 831
    .line 832
    goto :goto_1a

    .line 833
    :pswitch_12
    invoke-virtual {v7, v13}, Landroidx/fragment/app/z;->c0(Landroidx/fragment/app/o;)V

    .line 834
    .line 835
    .line 836
    goto :goto_1a

    .line 837
    :pswitch_13
    iget v14, v12, Lds3;->d:I

    .line 838
    .line 839
    iget v15, v12, Lds3;->e:I

    .line 840
    .line 841
    move-object/from16 v19, v5

    .line 842
    .line 843
    iget v5, v12, Lds3;->f:I

    .line 844
    .line 845
    iget v12, v12, Lds3;->g:I

    .line 846
    .line 847
    invoke-virtual {v13, v14, v15, v5, v12}, Landroidx/fragment/app/o;->setAnimations(IIII)V

    .line 848
    .line 849
    .line 850
    const/4 v15, 0x0

    .line 851
    invoke-virtual {v7, v13, v15}, Landroidx/fragment/app/z;->a0(Landroidx/fragment/app/o;Z)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v7, v13}, Landroidx/fragment/app/z;->c(Landroidx/fragment/app/o;)V

    .line 855
    .line 856
    .line 857
    goto :goto_1b

    .line 858
    :pswitch_14
    move-object/from16 v19, v5

    .line 859
    .line 860
    iget v5, v12, Lds3;->d:I

    .line 861
    .line 862
    iget v14, v12, Lds3;->e:I

    .line 863
    .line 864
    iget v15, v12, Lds3;->f:I

    .line 865
    .line 866
    iget v12, v12, Lds3;->g:I

    .line 867
    .line 868
    invoke-virtual {v13, v5, v14, v15, v12}, Landroidx/fragment/app/o;->setAnimations(IIII)V

    .line 869
    .line 870
    .line 871
    invoke-virtual {v7, v13}, Landroidx/fragment/app/z;->h(Landroidx/fragment/app/o;)V

    .line 872
    .line 873
    .line 874
    goto :goto_1b

    .line 875
    :pswitch_15
    move-object/from16 v19, v5

    .line 876
    .line 877
    iget v5, v12, Lds3;->d:I

    .line 878
    .line 879
    iget v14, v12, Lds3;->e:I

    .line 880
    .line 881
    iget v15, v12, Lds3;->f:I

    .line 882
    .line 883
    iget v12, v12, Lds3;->g:I

    .line 884
    .line 885
    invoke-virtual {v13, v5, v14, v15, v12}, Landroidx/fragment/app/o;->setAnimations(IIII)V

    .line 886
    .line 887
    .line 888
    const/4 v15, 0x0

    .line 889
    invoke-virtual {v7, v13, v15}, Landroidx/fragment/app/z;->a0(Landroidx/fragment/app/o;Z)V

    .line 890
    .line 891
    .line 892
    invoke-static {v13}, Landroidx/fragment/app/z;->e0(Landroidx/fragment/app/o;)V

    .line 893
    .line 894
    .line 895
    goto :goto_1b

    .line 896
    :pswitch_16
    move-object/from16 v19, v5

    .line 897
    .line 898
    iget v5, v12, Lds3;->d:I

    .line 899
    .line 900
    iget v14, v12, Lds3;->e:I

    .line 901
    .line 902
    iget v15, v12, Lds3;->f:I

    .line 903
    .line 904
    iget v12, v12, Lds3;->g:I

    .line 905
    .line 906
    invoke-virtual {v13, v5, v14, v15, v12}, Landroidx/fragment/app/o;->setAnimations(IIII)V

    .line 907
    .line 908
    .line 909
    invoke-virtual {v7, v13}, Landroidx/fragment/app/z;->J(Landroidx/fragment/app/o;)V

    .line 910
    .line 911
    .line 912
    goto :goto_1b

    .line 913
    :pswitch_17
    move-object/from16 v19, v5

    .line 914
    .line 915
    iget v5, v12, Lds3;->d:I

    .line 916
    .line 917
    iget v14, v12, Lds3;->e:I

    .line 918
    .line 919
    iget v15, v12, Lds3;->f:I

    .line 920
    .line 921
    iget v12, v12, Lds3;->g:I

    .line 922
    .line 923
    invoke-virtual {v13, v5, v14, v15, v12}, Landroidx/fragment/app/o;->setAnimations(IIII)V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v7, v13}, Landroidx/fragment/app/z;->V(Landroidx/fragment/app/o;)V

    .line 927
    .line 928
    .line 929
    goto :goto_1b

    .line 930
    :pswitch_18
    move-object/from16 v19, v5

    .line 931
    .line 932
    iget v5, v12, Lds3;->d:I

    .line 933
    .line 934
    iget v14, v12, Lds3;->e:I

    .line 935
    .line 936
    iget v15, v12, Lds3;->f:I

    .line 937
    .line 938
    iget v12, v12, Lds3;->g:I

    .line 939
    .line 940
    invoke-virtual {v13, v5, v14, v15, v12}, Landroidx/fragment/app/o;->setAnimations(IIII)V

    .line 941
    .line 942
    .line 943
    const/4 v15, 0x0

    .line 944
    invoke-virtual {v7, v13, v15}, Landroidx/fragment/app/z;->a0(Landroidx/fragment/app/o;Z)V

    .line 945
    .line 946
    .line 947
    invoke-virtual {v7, v13}, Landroidx/fragment/app/z;->a(Landroidx/fragment/app/o;)Landroidx/fragment/app/d0;

    .line 948
    .line 949
    .line 950
    :goto_1b
    add-int/lit8 v11, v11, 0x1

    .line 951
    .line 952
    move-object/from16 v5, v19

    .line 953
    .line 954
    goto/16 :goto_17

    .line 955
    .line 956
    :goto_1c
    add-int/lit8 v6, v6, 0x1

    .line 957
    .line 958
    move-object/from16 v5, v19

    .line 959
    .line 960
    const/4 v10, 0x3

    .line 961
    goto/16 :goto_10

    .line 962
    .line 963
    :cond_22
    add-int/lit8 v5, v4, -0x1

    .line 964
    .line 965
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v5

    .line 969
    check-cast v5, Ljava/lang/Boolean;

    .line 970
    .line 971
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 972
    .line 973
    .line 974
    move-result v5

    .line 975
    if-eqz v22, :cond_29

    .line 976
    .line 977
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    .line 978
    .line 979
    .line 980
    move-result v6

    .line 981
    if-nez v6, :cond_29

    .line 982
    .line 983
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 984
    .line 985
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 986
    .line 987
    .line 988
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 989
    .line 990
    .line 991
    move-result-object v8

    .line 992
    :goto_1d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 993
    .line 994
    .line 995
    move-result v9

    .line 996
    if-eqz v9, :cond_23

    .line 997
    .line 998
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 999
    .line 1000
    .line 1001
    move-result-object v9

    .line 1002
    check-cast v9, Landroidx/fragment/app/a;

    .line 1003
    .line 1004
    invoke-static {v9}, Landroidx/fragment/app/z;->F(Landroidx/fragment/app/a;)Ljava/util/HashSet;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v9

    .line 1008
    invoke-interface {v6, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1009
    .line 1010
    .line 1011
    goto :goto_1d

    .line 1012
    :cond_23
    iget-object v8, v0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 1013
    .line 1014
    if-nez v8, :cond_29

    .line 1015
    .line 1016
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v8

    .line 1020
    :goto_1e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1021
    .line 1022
    .line 1023
    move-result v9

    .line 1024
    if-eqz v9, :cond_26

    .line 1025
    .line 1026
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v9

    .line 1030
    if-nez v9, :cond_25

    .line 1031
    .line 1032
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v9

    .line 1036
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1037
    .line 1038
    .line 1039
    move-result v10

    .line 1040
    if-nez v10, :cond_24

    .line 1041
    .line 1042
    goto :goto_1e

    .line 1043
    :cond_24
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    check-cast v0, Landroidx/fragment/app/o;

    .line 1048
    .line 1049
    const/16 v16, 0x0

    .line 1050
    .line 1051
    throw v16

    .line 1052
    :cond_25
    invoke-static {}, Le6;->d()V

    .line 1053
    .line 1054
    .line 1055
    return-void

    .line 1056
    :cond_26
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v8

    .line 1060
    :goto_1f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1061
    .line 1062
    .line 1063
    move-result v9

    .line 1064
    if-eqz v9, :cond_29

    .line 1065
    .line 1066
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v9

    .line 1070
    if-nez v9, :cond_28

    .line 1071
    .line 1072
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v9

    .line 1076
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1077
    .line 1078
    .line 1079
    move-result v10

    .line 1080
    if-nez v10, :cond_27

    .line 1081
    .line 1082
    goto :goto_1f

    .line 1083
    :cond_27
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    check-cast v0, Landroidx/fragment/app/o;

    .line 1088
    .line 1089
    const/16 v16, 0x0

    .line 1090
    .line 1091
    throw v16

    .line 1092
    :cond_28
    invoke-static {}, Le6;->d()V

    .line 1093
    .line 1094
    .line 1095
    return-void

    .line 1096
    :cond_29
    move v6, v3

    .line 1097
    :goto_20
    if-ge v6, v4, :cond_2e

    .line 1098
    .line 1099
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v8

    .line 1103
    check-cast v8, Landroidx/fragment/app/a;

    .line 1104
    .line 1105
    if-eqz v5, :cond_2b

    .line 1106
    .line 1107
    iget-object v9, v8, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 1108
    .line 1109
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1110
    .line 1111
    .line 1112
    move-result v9

    .line 1113
    const/16 v18, 0x1

    .line 1114
    .line 1115
    add-int/lit8 v9, v9, -0x1

    .line 1116
    .line 1117
    :goto_21
    if-ltz v9, :cond_2d

    .line 1118
    .line 1119
    iget-object v10, v8, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 1120
    .line 1121
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v10

    .line 1125
    check-cast v10, Lds3;

    .line 1126
    .line 1127
    iget-object v10, v10, Lds3;->b:Landroidx/fragment/app/o;

    .line 1128
    .line 1129
    if-eqz v10, :cond_2a

    .line 1130
    .line 1131
    invoke-virtual {v0, v10}, Landroidx/fragment/app/z;->g(Landroidx/fragment/app/o;)Landroidx/fragment/app/d0;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v10

    .line 1135
    invoke-virtual {v10}, Landroidx/fragment/app/d0;->k()V

    .line 1136
    .line 1137
    .line 1138
    :cond_2a
    add-int/lit8 v9, v9, -0x1

    .line 1139
    .line 1140
    goto :goto_21

    .line 1141
    :cond_2b
    iget-object v8, v8, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 1142
    .line 1143
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v8

    .line 1147
    :cond_2c
    :goto_22
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1148
    .line 1149
    .line 1150
    move-result v9

    .line 1151
    if-eqz v9, :cond_2d

    .line 1152
    .line 1153
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v9

    .line 1157
    check-cast v9, Lds3;

    .line 1158
    .line 1159
    iget-object v9, v9, Lds3;->b:Landroidx/fragment/app/o;

    .line 1160
    .line 1161
    if-eqz v9, :cond_2c

    .line 1162
    .line 1163
    invoke-virtual {v0, v9}, Landroidx/fragment/app/z;->g(Landroidx/fragment/app/o;)Landroidx/fragment/app/d0;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v9

    .line 1167
    invoke-virtual {v9}, Landroidx/fragment/app/d0;->k()V

    .line 1168
    .line 1169
    .line 1170
    goto :goto_22

    .line 1171
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    .line 1172
    .line 1173
    goto :goto_20

    .line 1174
    :cond_2e
    iget v6, v0, Landroidx/fragment/app/z;->v:I

    .line 1175
    .line 1176
    const/4 v10, 0x1

    .line 1177
    invoke-virtual {v0, v6, v10}, Landroidx/fragment/app/z;->P(IZ)V

    .line 1178
    .line 1179
    .line 1180
    invoke-virtual {v0, v1, v3, v4}, Landroidx/fragment/app/z;->f(Ljava/util/ArrayList;II)Ljava/util/HashSet;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v0

    .line 1184
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v0

    .line 1188
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1189
    .line 1190
    .line 1191
    move-result v6

    .line 1192
    if-eqz v6, :cond_35

    .line 1193
    .line 1194
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v6

    .line 1198
    check-cast v6, Landroidx/fragment/app/g;

    .line 1199
    .line 1200
    iput-boolean v5, v6, Landroidx/fragment/app/g;->e:Z

    .line 1201
    .line 1202
    iget-object v8, v6, Landroidx/fragment/app/g;->b:Ljava/util/ArrayList;

    .line 1203
    .line 1204
    monitor-enter v8

    .line 1205
    :try_start_0
    invoke-virtual {v6}, Landroidx/fragment/app/g;->l()V

    .line 1206
    .line 1207
    .line 1208
    iget-object v9, v6, Landroidx/fragment/app/g;->b:Ljava/util/ArrayList;

    .line 1209
    .line 1210
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1211
    .line 1212
    .line 1213
    move-result v10

    .line 1214
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v9

    .line 1218
    :cond_2f
    invoke-interface {v9}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 1219
    .line 1220
    .line 1221
    move-result v10

    .line 1222
    if-eqz v10, :cond_34

    .line 1223
    .line 1224
    invoke-interface {v9}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v10

    .line 1228
    move-object v11, v10

    .line 1229
    check-cast v11, Landroidx/fragment/app/h0;

    .line 1230
    .line 1231
    iget-object v12, v11, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/o;

    .line 1232
    .line 1233
    iget-object v12, v12, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 1234
    .line 1235
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1236
    .line 1237
    .line 1238
    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    .line 1239
    .line 1240
    .line 1241
    move-result v13

    .line 1242
    const/4 v14, 0x0

    .line 1243
    cmpg-float v13, v13, v14

    .line 1244
    .line 1245
    const/4 v14, 0x4

    .line 1246
    if-nez v13, :cond_31

    .line 1247
    .line 1248
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 1249
    .line 1250
    .line 1251
    move-result v13

    .line 1252
    if-nez v13, :cond_31

    .line 1253
    .line 1254
    :cond_30
    const/16 v13, 0x8

    .line 1255
    .line 1256
    goto :goto_24

    .line 1257
    :cond_31
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 1258
    .line 1259
    .line 1260
    move-result v12

    .line 1261
    if-eqz v12, :cond_33

    .line 1262
    .line 1263
    if-eq v12, v14, :cond_30

    .line 1264
    .line 1265
    const/16 v13, 0x8

    .line 1266
    .line 1267
    if-ne v12, v13, :cond_32

    .line 1268
    .line 1269
    const/4 v14, 0x3

    .line 1270
    goto :goto_24

    .line 1271
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1272
    .line 1273
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1274
    .line 1275
    const-string v2, "Unknown visibility "

    .line 1276
    .line 1277
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v1

    .line 1287
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1288
    .line 1289
    .line 1290
    throw v0

    .line 1291
    :cond_33
    const/16 v13, 0x8

    .line 1292
    .line 1293
    const/4 v14, 0x2

    .line 1294
    :goto_24
    iget v11, v11, Landroidx/fragment/app/h0;->a:I

    .line 1295
    .line 1296
    const/4 v12, 0x2

    .line 1297
    if-ne v11, v12, :cond_2f

    .line 1298
    .line 1299
    if-eq v14, v12, :cond_2f

    .line 1300
    .line 1301
    goto :goto_25

    .line 1302
    :catchall_0
    move-exception v0

    .line 1303
    goto :goto_26

    .line 1304
    :cond_34
    const/4 v12, 0x2

    .line 1305
    const/16 v13, 0x8

    .line 1306
    .line 1307
    const/4 v10, 0x0

    .line 1308
    :goto_25
    check-cast v10, Landroidx/fragment/app/h0;

    .line 1309
    .line 1310
    const/4 v15, 0x0

    .line 1311
    iput-boolean v15, v6, Landroidx/fragment/app/g;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1312
    .line 1313
    monitor-exit v8

    .line 1314
    invoke-virtual {v6}, Landroidx/fragment/app/g;->e()V

    .line 1315
    .line 1316
    .line 1317
    goto/16 :goto_23

    .line 1318
    .line 1319
    :goto_26
    monitor-exit v8

    .line 1320
    throw v0

    .line 1321
    :cond_35
    :goto_27
    if-ge v3, v4, :cond_39

    .line 1322
    .line 1323
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v0

    .line 1327
    check-cast v0, Landroidx/fragment/app/a;

    .line 1328
    .line 1329
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v5

    .line 1333
    check-cast v5, Ljava/lang/Boolean;

    .line 1334
    .line 1335
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1336
    .line 1337
    .line 1338
    move-result v5

    .line 1339
    if-eqz v5, :cond_36

    .line 1340
    .line 1341
    iget v5, v0, Landroidx/fragment/app/a;->t:I

    .line 1342
    .line 1343
    if-ltz v5, :cond_36

    .line 1344
    .line 1345
    iput v7, v0, Landroidx/fragment/app/a;->t:I

    .line 1346
    .line 1347
    :cond_36
    iget-object v5, v0, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 1348
    .line 1349
    if-eqz v5, :cond_38

    .line 1350
    .line 1351
    const/4 v10, 0x0

    .line 1352
    :goto_28
    iget-object v5, v0, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 1353
    .line 1354
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1355
    .line 1356
    .line 1357
    move-result v5

    .line 1358
    if-ge v10, v5, :cond_37

    .line 1359
    .line 1360
    iget-object v5, v0, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 1361
    .line 1362
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v5

    .line 1366
    check-cast v5, Ljava/lang/Runnable;

    .line 1367
    .line 1368
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1369
    .line 1370
    .line 1371
    add-int/lit8 v10, v10, 0x1

    .line 1372
    .line 1373
    goto :goto_28

    .line 1374
    :cond_37
    const/4 v12, 0x0

    .line 1375
    iput-object v12, v0, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 1376
    .line 1377
    goto :goto_29

    .line 1378
    :cond_38
    const/4 v12, 0x0

    .line 1379
    :goto_29
    add-int/lit8 v3, v3, 0x1

    .line 1380
    .line 1381
    goto :goto_27

    .line 1382
    :cond_39
    if-eqz v22, :cond_3b

    .line 1383
    .line 1384
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    .line 1385
    .line 1386
    .line 1387
    move-result v0

    .line 1388
    if-gtz v0, :cond_3a

    .line 1389
    .line 1390
    goto :goto_2a

    .line 1391
    :cond_3a
    move-object/from16 v0, v24

    .line 1392
    .line 1393
    const/4 v15, 0x0

    .line 1394
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v0

    .line 1398
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1399
    .line 1400
    .line 1401
    invoke-static {}, Le6;->d()V

    .line 1402
    .line 1403
    .line 1404
    :cond_3b
    :goto_2a
    return-void

    .line 1405
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final C(I)Landroidx/fragment/app/o;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/fragment/app/o;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget v3, v2, Landroidx/fragment/app/o;->mFragmentId:I

    .line 22
    .line 23
    if-ne v3, p1, :cond_0

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/e0;->b:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroidx/fragment/app/d0;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, v0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 54
    .line 55
    iget v1, v0, Landroidx/fragment/app/o;->mFragmentId:I

    .line 56
    .line 57
    if-ne v1, p1, :cond_2

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_3
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method

.method public final D(Ljava/lang/String;)Landroidx/fragment/app/o;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/fragment/app/o;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v3, v2, Landroidx/fragment/app/o;->mTag:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    return-object v2

    .line 30
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/e0;->b:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroidx/fragment/app/d0;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v0, v0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 58
    .line 59
    iget-object v1, v0, Landroidx/fragment/app/o;->mTag:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_3
    const/4 p0, 0x0

    .line 69
    return-object p0
.end method

.method public final E()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/z;->e()Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/fragment/app/g;

    .line 20
    .line 21
    iget-boolean v1, v0, Landroidx/fragment/app/g;->f:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    invoke-static {v1}, Landroidx/fragment/app/z;->K(I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const-string v1, "FragmentManager"

    .line 33
    .line 34
    const-string v2, "SpecialEffectsController: Forcing postponed operations"

    .line 35
    .line 36
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    iput-boolean v1, v0, Landroidx/fragment/app/g;->f:Z

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/fragment/app/g;->e()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method

.method public final G(Landroidx/fragment/app/o;)Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget v0, p1, Landroidx/fragment/app/o;->mContainerId:I

    .line 7
    .line 8
    if-gtz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/z;->x:Lms8;

    .line 12
    .line 13
    invoke-virtual {v0}, Lms8;->D()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/fragment/app/z;->x:Lms8;

    .line 20
    .line 21
    iget p1, p1, Landroidx/fragment/app/o;->mContainerId:I

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lms8;->C(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    instance-of p1, p0, Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    check-cast p0, Landroid/view/ViewGroup;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public final H()Lor3;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, v0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/z;->H()Lor3;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/z;->A:Lor3;

    .line 13
    .line 14
    return-object p0
.end method

.method public final I()Llv1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, v0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/z;->I()Llv1;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/z;->B:Llv1;

    .line 13
    .line 14
    return-object p0
.end method

.method public final J(Landroidx/fragment/app/o;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "hide: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/o;->mHidden:Z

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p1, Landroidx/fragment/app/o;->mHidden:Z

    .line 33
    .line 34
    iget-boolean v1, p1, Landroidx/fragment/app/o;->mHiddenChanged:Z

    .line 35
    .line 36
    xor-int/2addr v0, v1

    .line 37
    iput-boolean v0, p1, Landroidx/fragment/app/o;->mHiddenChanged:Z

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->d0(Landroidx/fragment/app/o;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final M()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/o;->isAdded()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/z;->M()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final P(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string p0, "No activity"

    .line 10
    .line 11
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 16
    .line 17
    iget p2, p0, Landroidx/fragment/app/z;->v:I

    .line 18
    .line 19
    if-ne p1, p2, :cond_2

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_2
    iput p1, p0, Landroidx/fragment/app/z;->v:I

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 26
    .line 27
    iget-object p2, p1, Landroidx/fragment/app/e0;->b:Ljava/util/HashMap;

    .line 28
    .line 29
    iget-object v0, p1, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroidx/fragment/app/o;

    .line 46
    .line 47
    iget-object v1, v1, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroidx/fragment/app/d0;

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {v1}, Landroidx/fragment/app/d0;->k()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroidx/fragment/app/d0;

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/fragment/app/d0;->k()V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 87
    .line 88
    iget-boolean v2, v1, Landroidx/fragment/app/o;->mRemoving:Z

    .line 89
    .line 90
    if-eqz v2, :cond_5

    .line 91
    .line 92
    invoke-virtual {v1}, Landroidx/fragment/app/o;->isInBackStack()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_5

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroidx/fragment/app/e0;->h(Landroidx/fragment/app/d0;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_6
    invoke-virtual {p1}, Landroidx/fragment/app/e0;->d()Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    const/4 v0, 0x0

    .line 115
    if-eqz p2, :cond_9

    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Landroidx/fragment/app/d0;

    .line 122
    .line 123
    iget-object v1, p2, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 124
    .line 125
    iget-boolean v2, v1, Landroidx/fragment/app/o;->mDeferStart:Z

    .line 126
    .line 127
    if-eqz v2, :cond_7

    .line 128
    .line 129
    iget-boolean v2, p0, Landroidx/fragment/app/z;->b:Z

    .line 130
    .line 131
    if-eqz v2, :cond_8

    .line 132
    .line 133
    const/4 p2, 0x1

    .line 134
    iput-boolean p2, p0, Landroidx/fragment/app/z;->K:Z

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_8
    iput-boolean v0, v1, Landroidx/fragment/app/o;->mDeferStart:Z

    .line 138
    .line 139
    invoke-virtual {p2}, Landroidx/fragment/app/d0;->k()V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_9
    iget-boolean p1, p0, Landroidx/fragment/app/z;->G:Z

    .line 144
    .line 145
    if-eqz p1, :cond_a

    .line 146
    .line 147
    iget-object p1, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 148
    .line 149
    if-eqz p1, :cond_a

    .line 150
    .line 151
    iget p2, p0, Landroidx/fragment/app/z;->v:I

    .line 152
    .line 153
    const/4 v1, 0x7

    .line 154
    if-ne p2, v1, :cond_a

    .line 155
    .line 156
    iget-object p1, p1, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 159
    .line 160
    .line 161
    iput-boolean v0, p0, Landroidx/fragment/app/z;->G:Z

    .line 162
    .line 163
    :cond_a
    :goto_4
    return-void
.end method

.method public final Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/z;->H:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/fragment/app/z;->I:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 12
    .line 13
    iput-boolean v0, v1, Landroidx/fragment/app/a0;->g:Z

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->f()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/fragment/app/o;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/fragment/app/z;->Q()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    return-void
.end method

.method public final R()Z
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/z;->S(II)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final S(II)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->z(Z)Z

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Landroidx/fragment/app/z;->y(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Landroidx/fragment/app/z;->z:Landroidx/fragment/app/o;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Landroidx/fragment/app/o;->getChildFragmentManager()Landroidx/fragment/app/z;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroidx/fragment/app/z;->R()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/z;->L:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/fragment/app/z;->M:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0, v2, v3, p1, p2}, Landroidx/fragment/app/z;->T(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iput-boolean v1, p0, Landroidx/fragment/app/z;->b:Z

    .line 37
    .line 38
    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/z;->L:Ljava/util/ArrayList;

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/fragment/app/z;->M:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p0, p2, v2}, Landroidx/fragment/app/z;->W(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/z;->d()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/z;->d()V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/z;->g0()V

    .line 55
    .line 56
    .line 57
    iget-boolean p2, p0, Landroidx/fragment/app/z;->K:Z

    .line 58
    .line 59
    iget-object v2, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 60
    .line 61
    if-eqz p2, :cond_4

    .line 62
    .line 63
    iput-boolean v0, p0, Landroidx/fragment/app/z;->K:Z

    .line 64
    .line 65
    invoke-virtual {v2}, Landroidx/fragment/app/e0;->d()Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Landroidx/fragment/app/d0;

    .line 84
    .line 85
    iget-object v4, v3, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 86
    .line 87
    iget-boolean v5, v4, Landroidx/fragment/app/o;->mDeferStart:Z

    .line 88
    .line 89
    if-eqz v5, :cond_2

    .line 90
    .line 91
    iget-boolean v5, p0, Landroidx/fragment/app/z;->b:Z

    .line 92
    .line 93
    if-eqz v5, :cond_3

    .line 94
    .line 95
    iput-boolean v1, p0, Landroidx/fragment/app/z;->K:Z

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    iput-boolean v0, v4, Landroidx/fragment/app/o;->mDeferStart:Z

    .line 99
    .line 100
    invoke-virtual {v3}, Landroidx/fragment/app/d0;->k()V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    iget-object p0, v2, Landroidx/fragment/app/e0;->b:Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const/4 p2, 0x0

    .line 111
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-interface {p0, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 116
    .line 117
    .line 118
    return p1
.end method

.method public final T(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p4, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move p4, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p4, v1

    .line 9
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, -0x1

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    goto :goto_4

    .line 19
    :cond_1
    if-gez p3, :cond_3

    .line 20
    .line 21
    if-eqz p4, :cond_2

    .line 22
    .line 23
    move v3, v1

    .line 24
    goto :goto_4

    .line 25
    :cond_2
    iget-object p3, p0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    add-int/lit8 v3, p3, -0x1

    .line 32
    .line 33
    goto :goto_4

    .line 34
    :cond_3
    iget-object v2, p0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    sub-int/2addr v2, v0

    .line 41
    :goto_1
    if-ltz v2, :cond_5

    .line 42
    .line 43
    iget-object v4, p0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroidx/fragment/app/a;

    .line 50
    .line 51
    if-ltz p3, :cond_4

    .line 52
    .line 53
    iget v4, v4, Landroidx/fragment/app/a;->t:I

    .line 54
    .line 55
    if-ne p3, v4, :cond_4

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    :goto_2
    if-gez v2, :cond_6

    .line 62
    .line 63
    move v3, v2

    .line 64
    goto :goto_4

    .line 65
    :cond_6
    if-eqz p4, :cond_7

    .line 66
    .line 67
    move v3, v2

    .line 68
    :goto_3
    if-lez v3, :cond_9

    .line 69
    .line 70
    iget-object p4, p0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 71
    .line 72
    add-int/lit8 v2, v3, -0x1

    .line 73
    .line 74
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p4

    .line 78
    check-cast p4, Landroidx/fragment/app/a;

    .line 79
    .line 80
    if-ltz p3, :cond_9

    .line 81
    .line 82
    iget p4, p4, Landroidx/fragment/app/a;->t:I

    .line 83
    .line 84
    if-ne p3, p4, :cond_9

    .line 85
    .line 86
    add-int/lit8 v3, v3, -0x1

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_7
    iget-object p3, p0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    sub-int/2addr p3, v0

    .line 96
    if-ne v2, p3, :cond_8

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_8
    add-int/lit8 v3, v2, 0x1

    .line 100
    .line 101
    :cond_9
    :goto_4
    if-gez v3, :cond_a

    .line 102
    .line 103
    return v1

    .line 104
    :cond_a
    iget-object p3, p0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    sub-int/2addr p3, v0

    .line 111
    :goto_5
    if-lt p3, v3, :cond_b

    .line 112
    .line 113
    iget-object p4, p0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p4

    .line 119
    check-cast p4, Landroidx/fragment/app/a;

    .line 120
    .line 121
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 125
    .line 126
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    add-int/lit8 p3, p3, -0x1

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_b
    return v0
.end method

.method public final U(Landroid/os/Bundle;Landroidx/fragment/app/o;)V
    .locals 2

    .line 1
    iget-object v0, p2, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p2, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 6
    .line 7
    const-string p2, "saved_fragment"

    .line 8
    .line 9
    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "Fragment "

    .line 16
    .line 17
    const-string v1, " is not currently in the FragmentManager"

    .line 18
    .line 19
    invoke-static {v0, p2, v1}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->f0(Ljava/lang/IllegalStateException;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    throw p0
.end method

.method public final V(Landroidx/fragment/app/o;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "FragmentManager"

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "remove: "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " nesting="

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v2, p1, Landroidx/fragment/app/o;->mBackStackNesting:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/o;->isInBackStack()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-boolean v1, p1, Landroidx/fragment/app/o;->mDetached:Z

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void

    .line 49
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 50
    .line 51
    iget-object v1, v0, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 52
    .line 53
    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p1, Landroidx/fragment/app/o;->mAdded:Z

    .line 62
    .line 63
    invoke-static {p1}, Landroidx/fragment/app/z;->L(Landroidx/fragment/app/o;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/4 v1, 0x1

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iput-boolean v1, p0, Landroidx/fragment/app/z;->G:Z

    .line 71
    .line 72
    :cond_3
    iput-boolean v1, p1, Landroidx/fragment/app/o;->mRemoving:Z

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->d0(Landroidx/fragment/app/o;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    throw p0
.end method

.method public final W(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v0, v1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    if-ge v1, v0, :cond_4

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroidx/fragment/app/a;

    .line 31
    .line 32
    iget-boolean v3, v3, Landroidx/fragment/app/a;->p:Z

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    if-eq v2, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/z;->B(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    :goto_1
    if-ge v2, v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Landroidx/fragment/app/a;

    .line 74
    .line 75
    iget-boolean v3, v3, Landroidx/fragment/app/a;->p:Z

    .line 76
    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/z;->B(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v2, -0x1

    .line 86
    .line 87
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    if-eq v2, v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/z;->B(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_2
    return-void

    .line 96
    :cond_6
    const-string p0, "Internal error with the back stack records"

    .line 97
    .line 98
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final X(Landroid/os/Bundle;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/String;

    .line 24
    .line 25
    const-string v4, "result_"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    iget-object v5, v0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 40
    .line 41
    iget-object v5, v5, Landroidx/fragment/app/t;->e:Landroidx/fragment/app/u;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 48
    .line 49
    .line 50
    const/4 v5, 0x7

    .line 51
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v5, v0, Landroidx/fragment/app/z;->m:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Ljava/lang/String;

    .line 85
    .line 86
    const-string v5, "fragment_"

    .line 87
    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_2

    .line 93
    .line 94
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-eqz v5, :cond_2

    .line 99
    .line 100
    iget-object v6, v0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 101
    .line 102
    iget-object v6, v6, Landroidx/fragment/app/t;->e:Landroidx/fragment/app/u;

    .line 103
    .line 104
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 109
    .line 110
    .line 111
    const/16 v6, 0x9

    .line 112
    .line 113
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    iget-object v3, v0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 122
    .line 123
    iget-object v4, v3, Landroidx/fragment/app/e0;->c:Ljava/util/HashMap;

    .line 124
    .line 125
    iget-object v5, v3, Landroidx/fragment/app/e0;->b:Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 131
    .line 132
    .line 133
    const-string v2, "state"

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Lvr3;

    .line 140
    .line 141
    if-nez v1, :cond_4

    .line 142
    .line 143
    return-void

    .line 144
    :cond_4
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 145
    .line 146
    .line 147
    iget-object v4, v1, Lvr3;->a:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    iget-object v7, v0, Landroidx/fragment/app/z;->o:Lw00;

    .line 158
    .line 159
    const-string v8, "): "

    .line 160
    .line 161
    const/4 v9, 0x2

    .line 162
    const-string v10, "FragmentManager"

    .line 163
    .line 164
    if-eqz v6, :cond_9

    .line 165
    .line 166
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    check-cast v6, Ljava/lang/String;

    .line 171
    .line 172
    const/4 v11, 0x0

    .line 173
    invoke-virtual {v3, v11, v6}, Landroidx/fragment/app/e0;->i(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    if-eqz v6, :cond_5

    .line 178
    .line 179
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    check-cast v11, Landroidx/fragment/app/c0;

    .line 184
    .line 185
    iget-object v12, v0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 186
    .line 187
    iget-object v11, v11, Landroidx/fragment/app/c0;->b:Ljava/lang/String;

    .line 188
    .line 189
    iget-object v12, v12, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 190
    .line 191
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    check-cast v11, Landroidx/fragment/app/o;

    .line 196
    .line 197
    if-eqz v11, :cond_7

    .line 198
    .line 199
    invoke-static {v9}, Landroidx/fragment/app/z;->K(I)Z

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    if-eqz v12, :cond_6

    .line 204
    .line 205
    new-instance v12, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v13, "restoreSaveState: re-attaching retained "

    .line 208
    .line 209
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v12

    .line 219
    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    :cond_6
    new-instance v12, Landroidx/fragment/app/d0;

    .line 223
    .line 224
    invoke-direct {v12, v7, v3, v11, v6}, Landroidx/fragment/app/d0;-><init>(Lw00;Landroidx/fragment/app/e0;Landroidx/fragment/app/o;Landroid/os/Bundle;)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_7
    new-instance v12, Landroidx/fragment/app/d0;

    .line 229
    .line 230
    iget-object v7, v0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 231
    .line 232
    iget-object v7, v7, Landroidx/fragment/app/t;->e:Landroidx/fragment/app/u;

    .line 233
    .line 234
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 235
    .line 236
    .line 237
    move-result-object v15

    .line 238
    invoke-virtual {v0}, Landroidx/fragment/app/z;->H()Lor3;

    .line 239
    .line 240
    .line 241
    move-result-object v16

    .line 242
    iget-object v13, v0, Landroidx/fragment/app/z;->o:Lw00;

    .line 243
    .line 244
    iget-object v14, v0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 245
    .line 246
    move-object/from16 v17, v6

    .line 247
    .line 248
    invoke-direct/range {v12 .. v17}, Landroidx/fragment/app/d0;-><init>(Lw00;Landroidx/fragment/app/e0;Ljava/lang/ClassLoader;Lor3;Landroid/os/Bundle;)V

    .line 249
    .line 250
    .line 251
    :goto_3
    iget-object v7, v12, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 252
    .line 253
    iput-object v6, v7, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 254
    .line 255
    iput-object v0, v7, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 256
    .line 257
    invoke-static {v9}, Landroidx/fragment/app/z;->K(I)Z

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    if-eqz v6, :cond_8

    .line 262
    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string v9, "restoreSaveState: active ("

    .line 266
    .line 267
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object v9, v7, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    :cond_8
    iget-object v6, v0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 289
    .line 290
    iget-object v6, v6, Landroidx/fragment/app/t;->e:Landroidx/fragment/app/u;

    .line 291
    .line 292
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    invoke-virtual {v12, v6}, Landroidx/fragment/app/d0;->l(Ljava/lang/ClassLoader;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3, v12}, Landroidx/fragment/app/e0;->g(Landroidx/fragment/app/d0;)V

    .line 300
    .line 301
    .line 302
    iget v6, v0, Landroidx/fragment/app/z;->v:I

    .line 303
    .line 304
    iput v6, v12, Landroidx/fragment/app/d0;->e:I

    .line 305
    .line 306
    goto/16 :goto_2

    .line 307
    .line 308
    :cond_9
    iget-object v2, v0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 309
    .line 310
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    new-instance v4, Ljava/util/ArrayList;

    .line 314
    .line 315
    iget-object v2, v2, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 316
    .line 317
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    const/4 v6, 0x1

    .line 333
    if-eqz v4, :cond_c

    .line 334
    .line 335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    check-cast v4, Landroidx/fragment/app/o;

    .line 340
    .line 341
    iget-object v11, v4, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v11

    .line 347
    if-eqz v11, :cond_a

    .line 348
    .line 349
    goto :goto_4

    .line 350
    :cond_a
    invoke-static {v9}, Landroidx/fragment/app/z;->K(I)Z

    .line 351
    .line 352
    .line 353
    move-result v11

    .line 354
    if-eqz v11, :cond_b

    .line 355
    .line 356
    new-instance v11, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    const-string v12, "Discarding retained Fragment "

    .line 359
    .line 360
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v12, " that was not found in the set of active Fragments "

    .line 367
    .line 368
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    iget-object v12, v1, Lvr3;->a:Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v11

    .line 380
    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    :cond_b
    iget-object v11, v0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 384
    .line 385
    invoke-virtual {v11, v4}, Landroidx/fragment/app/a0;->f(Landroidx/fragment/app/o;)V

    .line 386
    .line 387
    .line 388
    iput-object v0, v4, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 389
    .line 390
    new-instance v11, Landroidx/fragment/app/d0;

    .line 391
    .line 392
    invoke-direct {v11, v7, v3, v4}, Landroidx/fragment/app/d0;-><init>(Lw00;Landroidx/fragment/app/e0;Landroidx/fragment/app/o;)V

    .line 393
    .line 394
    .line 395
    iput v6, v11, Landroidx/fragment/app/d0;->e:I

    .line 396
    .line 397
    invoke-virtual {v11}, Landroidx/fragment/app/d0;->k()V

    .line 398
    .line 399
    .line 400
    iput-boolean v6, v4, Landroidx/fragment/app/o;->mRemoving:Z

    .line 401
    .line 402
    invoke-virtual {v11}, Landroidx/fragment/app/d0;->k()V

    .line 403
    .line 404
    .line 405
    goto :goto_4

    .line 406
    :cond_c
    iget-object v2, v1, Lvr3;->b:Ljava/util/ArrayList;

    .line 407
    .line 408
    iget-object v4, v3, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 409
    .line 410
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 411
    .line 412
    .line 413
    if-eqz v2, :cond_f

    .line 414
    .line 415
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    if-eqz v4, :cond_f

    .line 424
    .line 425
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v4

    .line 429
    check-cast v4, Ljava/lang/String;

    .line 430
    .line 431
    invoke-virtual {v3, v4}, Landroidx/fragment/app/e0;->b(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    if-eqz v5, :cond_e

    .line 436
    .line 437
    invoke-static {v9}, Landroidx/fragment/app/z;->K(I)Z

    .line 438
    .line 439
    .line 440
    move-result v7

    .line 441
    if-eqz v7, :cond_d

    .line 442
    .line 443
    new-instance v7, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    const-string v11, "restoreSaveState: added ("

    .line 446
    .line 447
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    invoke-static {v10, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    :cond_d
    invoke-virtual {v3, v5}, Landroidx/fragment/app/e0;->a(Landroidx/fragment/app/o;)V

    .line 467
    .line 468
    .line 469
    goto :goto_5

    .line 470
    :cond_e
    const-string v0, "No instantiated fragment for ("

    .line 471
    .line 472
    const-string v1, ")"

    .line 473
    .line 474
    invoke-static {v0, v4, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    return-void

    .line 482
    :cond_f
    iget-object v2, v1, Lvr3;->c:[Landroidx/fragment/app/b;

    .line 483
    .line 484
    if-eqz v2, :cond_17

    .line 485
    .line 486
    new-instance v2, Ljava/util/ArrayList;

    .line 487
    .line 488
    iget-object v5, v1, Lvr3;->c:[Landroidx/fragment/app/b;

    .line 489
    .line 490
    array-length v5, v5

    .line 491
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 492
    .line 493
    .line 494
    iput-object v2, v0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 495
    .line 496
    const/4 v2, 0x0

    .line 497
    :goto_6
    iget-object v5, v1, Lvr3;->c:[Landroidx/fragment/app/b;

    .line 498
    .line 499
    array-length v7, v5

    .line 500
    if-ge v2, v7, :cond_16

    .line 501
    .line 502
    aget-object v5, v5, v2

    .line 503
    .line 504
    iget-object v7, v5, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    .line 505
    .line 506
    new-instance v11, Landroidx/fragment/app/a;

    .line 507
    .line 508
    invoke-direct {v11, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 509
    .line 510
    .line 511
    iget-object v12, v5, Landroidx/fragment/app/b;->a:[I

    .line 512
    .line 513
    const/4 v13, 0x0

    .line 514
    const/4 v14, 0x0

    .line 515
    :goto_7
    array-length v15, v12

    .line 516
    if-ge v13, v15, :cond_12

    .line 517
    .line 518
    new-instance v15, Lds3;

    .line 519
    .line 520
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 521
    .line 522
    .line 523
    add-int/lit8 v16, v13, 0x1

    .line 524
    .line 525
    move/from16 p1, v9

    .line 526
    .line 527
    aget v9, v12, v13

    .line 528
    .line 529
    iput v9, v15, Lds3;->a:I

    .line 530
    .line 531
    invoke-static/range {p1 .. p1}, Landroidx/fragment/app/z;->K(I)Z

    .line 532
    .line 533
    .line 534
    move-result v9

    .line 535
    if-eqz v9, :cond_10

    .line 536
    .line 537
    new-instance v9, Ljava/lang/StringBuilder;

    .line 538
    .line 539
    const-string v4, "Instantiate "

    .line 540
    .line 541
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    const-string v4, " op #"

    .line 548
    .line 549
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    const-string v4, " base fragment #"

    .line 556
    .line 557
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    aget v4, v12, v16

    .line 561
    .line 562
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v4

    .line 569
    invoke-static {v10, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .line 571
    .line 572
    :cond_10
    invoke-static {}, Lst4;->values()[Lst4;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    iget-object v9, v5, Landroidx/fragment/app/b;->c:[I

    .line 577
    .line 578
    aget v9, v9, v14

    .line 579
    .line 580
    aget-object v4, v4, v9

    .line 581
    .line 582
    iput-object v4, v15, Lds3;->h:Lst4;

    .line 583
    .line 584
    invoke-static {}, Lst4;->values()[Lst4;

    .line 585
    .line 586
    .line 587
    move-result-object v4

    .line 588
    iget-object v9, v5, Landroidx/fragment/app/b;->d:[I

    .line 589
    .line 590
    aget v9, v9, v14

    .line 591
    .line 592
    aget-object v4, v4, v9

    .line 593
    .line 594
    iput-object v4, v15, Lds3;->i:Lst4;

    .line 595
    .line 596
    add-int/lit8 v4, v13, 0x2

    .line 597
    .line 598
    aget v9, v12, v16

    .line 599
    .line 600
    if-eqz v9, :cond_11

    .line 601
    .line 602
    move v9, v6

    .line 603
    goto :goto_8

    .line 604
    :cond_11
    const/4 v9, 0x0

    .line 605
    :goto_8
    iput-boolean v9, v15, Lds3;->c:Z

    .line 606
    .line 607
    add-int/lit8 v9, v13, 0x3

    .line 608
    .line 609
    aget v4, v12, v4

    .line 610
    .line 611
    iput v4, v15, Lds3;->d:I

    .line 612
    .line 613
    add-int/lit8 v16, v13, 0x4

    .line 614
    .line 615
    aget v9, v12, v9

    .line 616
    .line 617
    iput v9, v15, Lds3;->e:I

    .line 618
    .line 619
    add-int/lit8 v18, v13, 0x5

    .line 620
    .line 621
    aget v6, v12, v16

    .line 622
    .line 623
    iput v6, v15, Lds3;->f:I

    .line 624
    .line 625
    add-int/lit8 v13, v13, 0x6

    .line 626
    .line 627
    move-object/from16 v16, v12

    .line 628
    .line 629
    aget v12, v16, v18

    .line 630
    .line 631
    iput v12, v15, Lds3;->g:I

    .line 632
    .line 633
    iput v4, v11, Landroidx/fragment/app/a;->b:I

    .line 634
    .line 635
    iput v9, v11, Landroidx/fragment/app/a;->c:I

    .line 636
    .line 637
    iput v6, v11, Landroidx/fragment/app/a;->d:I

    .line 638
    .line 639
    iput v12, v11, Landroidx/fragment/app/a;->e:I

    .line 640
    .line 641
    invoke-virtual {v11, v15}, Landroidx/fragment/app/a;->b(Lds3;)V

    .line 642
    .line 643
    .line 644
    add-int/lit8 v14, v14, 0x1

    .line 645
    .line 646
    move/from16 v9, p1

    .line 647
    .line 648
    move-object/from16 v12, v16

    .line 649
    .line 650
    const/4 v6, 0x1

    .line 651
    goto/16 :goto_7

    .line 652
    .line 653
    :cond_12
    move/from16 p1, v9

    .line 654
    .line 655
    iget v4, v5, Landroidx/fragment/app/b;->e:I

    .line 656
    .line 657
    iput v4, v11, Landroidx/fragment/app/a;->f:I

    .line 658
    .line 659
    iget-object v4, v5, Landroidx/fragment/app/b;->f:Ljava/lang/String;

    .line 660
    .line 661
    iput-object v4, v11, Landroidx/fragment/app/a;->i:Ljava/lang/String;

    .line 662
    .line 663
    const/4 v4, 0x1

    .line 664
    iput-boolean v4, v11, Landroidx/fragment/app/a;->g:Z

    .line 665
    .line 666
    iget v4, v5, Landroidx/fragment/app/b;->n:I

    .line 667
    .line 668
    iput v4, v11, Landroidx/fragment/app/a;->j:I

    .line 669
    .line 670
    iget-object v4, v5, Landroidx/fragment/app/b;->p:Ljava/lang/CharSequence;

    .line 671
    .line 672
    iput-object v4, v11, Landroidx/fragment/app/a;->k:Ljava/lang/CharSequence;

    .line 673
    .line 674
    iget v4, v5, Landroidx/fragment/app/b;->q:I

    .line 675
    .line 676
    iput v4, v11, Landroidx/fragment/app/a;->l:I

    .line 677
    .line 678
    iget-object v4, v5, Landroidx/fragment/app/b;->r:Ljava/lang/CharSequence;

    .line 679
    .line 680
    iput-object v4, v11, Landroidx/fragment/app/a;->m:Ljava/lang/CharSequence;

    .line 681
    .line 682
    iget-object v4, v5, Landroidx/fragment/app/b;->t:Ljava/util/ArrayList;

    .line 683
    .line 684
    iput-object v4, v11, Landroidx/fragment/app/a;->n:Ljava/util/ArrayList;

    .line 685
    .line 686
    iget-object v4, v5, Landroidx/fragment/app/b;->x:Ljava/util/ArrayList;

    .line 687
    .line 688
    iput-object v4, v11, Landroidx/fragment/app/a;->o:Ljava/util/ArrayList;

    .line 689
    .line 690
    iget-boolean v4, v5, Landroidx/fragment/app/b;->y:Z

    .line 691
    .line 692
    iput-boolean v4, v11, Landroidx/fragment/app/a;->p:Z

    .line 693
    .line 694
    iget v4, v5, Landroidx/fragment/app/b;->k:I

    .line 695
    .line 696
    iput v4, v11, Landroidx/fragment/app/a;->t:I

    .line 697
    .line 698
    const/4 v4, 0x0

    .line 699
    :goto_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 700
    .line 701
    .line 702
    move-result v5

    .line 703
    if-ge v4, v5, :cond_14

    .line 704
    .line 705
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v5

    .line 709
    check-cast v5, Ljava/lang/String;

    .line 710
    .line 711
    if-eqz v5, :cond_13

    .line 712
    .line 713
    iget-object v6, v11, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 714
    .line 715
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v6

    .line 719
    check-cast v6, Lds3;

    .line 720
    .line 721
    invoke-virtual {v3, v5}, Landroidx/fragment/app/e0;->b(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 722
    .line 723
    .line 724
    move-result-object v5

    .line 725
    iput-object v5, v6, Lds3;->b:Landroidx/fragment/app/o;

    .line 726
    .line 727
    :cond_13
    add-int/lit8 v4, v4, 0x1

    .line 728
    .line 729
    goto :goto_9

    .line 730
    :cond_14
    const/4 v4, 0x1

    .line 731
    invoke-virtual {v11, v4}, Landroidx/fragment/app/a;->c(I)V

    .line 732
    .line 733
    .line 734
    invoke-static/range {p1 .. p1}, Landroidx/fragment/app/z;->K(I)Z

    .line 735
    .line 736
    .line 737
    move-result v5

    .line 738
    if-eqz v5, :cond_15

    .line 739
    .line 740
    const-string v5, "restoreAllState: back stack #"

    .line 741
    .line 742
    const-string v6, " (index "

    .line 743
    .line 744
    invoke-static {v2, v5, v6}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    move-result-object v5

    .line 748
    iget v6, v11, Landroidx/fragment/app/a;->t:I

    .line 749
    .line 750
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v5

    .line 763
    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .line 765
    .line 766
    new-instance v5, Lh15;

    .line 767
    .line 768
    invoke-direct {v5}, Lh15;-><init>()V

    .line 769
    .line 770
    .line 771
    new-instance v6, Ljava/io/PrintWriter;

    .line 772
    .line 773
    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 774
    .line 775
    .line 776
    const-string v5, "  "

    .line 777
    .line 778
    const/4 v7, 0x0

    .line 779
    invoke-virtual {v11, v5, v6, v7}, Landroidx/fragment/app/a;->h(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 783
    .line 784
    .line 785
    goto :goto_a

    .line 786
    :cond_15
    const/4 v7, 0x0

    .line 787
    :goto_a
    iget-object v5, v0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 788
    .line 789
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    add-int/lit8 v2, v2, 0x1

    .line 793
    .line 794
    move/from16 v9, p1

    .line 795
    .line 796
    move v6, v4

    .line 797
    goto/16 :goto_6

    .line 798
    .line 799
    :cond_16
    const/4 v7, 0x0

    .line 800
    goto :goto_b

    .line 801
    :cond_17
    const/4 v7, 0x0

    .line 802
    new-instance v2, Ljava/util/ArrayList;

    .line 803
    .line 804
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 805
    .line 806
    .line 807
    iput-object v2, v0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 808
    .line 809
    :goto_b
    iget-object v2, v0, Landroidx/fragment/app/z;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 810
    .line 811
    iget v4, v1, Lvr3;->d:I

    .line 812
    .line 813
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 814
    .line 815
    .line 816
    iget-object v2, v1, Lvr3;->e:Ljava/lang/String;

    .line 817
    .line 818
    if-eqz v2, :cond_18

    .line 819
    .line 820
    invoke-virtual {v3, v2}, Landroidx/fragment/app/e0;->b(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    iput-object v2, v0, Landroidx/fragment/app/z;->z:Landroidx/fragment/app/o;

    .line 825
    .line 826
    invoke-virtual {v0, v2}, Landroidx/fragment/app/z;->r(Landroidx/fragment/app/o;)V

    .line 827
    .line 828
    .line 829
    :cond_18
    iget-object v2, v1, Lvr3;->f:Ljava/util/ArrayList;

    .line 830
    .line 831
    if-eqz v2, :cond_19

    .line 832
    .line 833
    move v4, v7

    .line 834
    :goto_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 835
    .line 836
    .line 837
    move-result v3

    .line 838
    if-ge v4, v3, :cond_19

    .line 839
    .line 840
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    check-cast v3, Ljava/lang/String;

    .line 845
    .line 846
    iget-object v5, v1, Lvr3;->k:Ljava/util/ArrayList;

    .line 847
    .line 848
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v5

    .line 852
    check-cast v5, Lzj0;

    .line 853
    .line 854
    iget-object v6, v0, Landroidx/fragment/app/z;->l:Ljava/util/Map;

    .line 855
    .line 856
    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    add-int/lit8 v4, v4, 0x1

    .line 860
    .line 861
    goto :goto_c

    .line 862
    :cond_19
    new-instance v2, Ljava/util/ArrayDeque;

    .line 863
    .line 864
    iget-object v1, v1, Lvr3;->n:Ljava/util/ArrayList;

    .line 865
    .line 866
    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 867
    .line 868
    .line 869
    iput-object v2, v0, Landroidx/fragment/app/z;->F:Ljava/util/ArrayDeque;

    .line 870
    .line 871
    return-void
.end method

.method public final Y()Landroid/os/Bundle;
    .locals 13

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/z;->E()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/z;->w()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v1}, Landroidx/fragment/app/z;->z(Z)Z

    .line 14
    .line 15
    .line 16
    iput-boolean v1, p0, Landroidx/fragment/app/z;->H:Z

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 19
    .line 20
    iput-boolean v1, v2, Landroidx/fragment/app/a0;->g:Z

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v3, v1, Landroidx/fragment/app/e0;->b:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x2

    .line 52
    if-eqz v4, :cond_9

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroidx/fragment/app/d0;

    .line 59
    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    iget-object v7, v4, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 63
    .line 64
    iget-object v8, v7, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v9, Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v10, v4, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 72
    .line 73
    iget v11, v10, Landroidx/fragment/app/o;->mState:I

    .line 74
    .line 75
    const/4 v12, -0x1

    .line 76
    if-ne v11, v12, :cond_1

    .line 77
    .line 78
    iget-object v11, v10, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 79
    .line 80
    if-eqz v11, :cond_1

    .line 81
    .line 82
    invoke-virtual {v9, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    new-instance v11, Landroidx/fragment/app/c0;

    .line 86
    .line 87
    invoke-direct {v11, v10}, Landroidx/fragment/app/c0;-><init>(Landroidx/fragment/app/o;)V

    .line 88
    .line 89
    .line 90
    const-string v12, "state"

    .line 91
    .line 92
    invoke-virtual {v9, v12, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    .line 94
    .line 95
    iget v11, v10, Landroidx/fragment/app/o;->mState:I

    .line 96
    .line 97
    if-lez v11, :cond_7

    .line 98
    .line 99
    new-instance v11, Landroid/os/Bundle;

    .line 100
    .line 101
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v10, v11}, Landroidx/fragment/app/o;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v11}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    if-nez v12, :cond_2

    .line 112
    .line 113
    const-string v12, "savedInstanceState"

    .line 114
    .line 115
    invoke-virtual {v9, v12, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    iget-object v12, v4, Landroidx/fragment/app/d0;->a:Lw00;

    .line 119
    .line 120
    invoke-virtual {v12, v10, v11, v5}, Lw00;->m(Landroidx/fragment/app/o;Landroid/os/Bundle;Z)V

    .line 121
    .line 122
    .line 123
    new-instance v5, Landroid/os/Bundle;

    .line 124
    .line 125
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v11, v10, Landroidx/fragment/app/o;->mSavedStateRegistryController:Lw00;

    .line 129
    .line 130
    invoke-virtual {v11, v5}, Lw00;->v(Landroid/os/Bundle;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    if-nez v11, :cond_3

    .line 138
    .line 139
    const-string v11, "registryState"

    .line 140
    .line 141
    invoke-virtual {v9, v11, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    iget-object v5, v10, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 145
    .line 146
    invoke-virtual {v5}, Landroidx/fragment/app/z;->Y()Landroid/os/Bundle;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v5}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    if-nez v11, :cond_4

    .line 155
    .line 156
    const-string v11, "childFragmentManager"

    .line 157
    .line 158
    invoke-virtual {v9, v11, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 159
    .line 160
    .line 161
    :cond_4
    iget-object v5, v10, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 162
    .line 163
    if-eqz v5, :cond_5

    .line 164
    .line 165
    invoke-virtual {v4}, Landroidx/fragment/app/d0;->n()V

    .line 166
    .line 167
    .line 168
    :cond_5
    iget-object v4, v10, Landroidx/fragment/app/o;->mSavedViewState:Landroid/util/SparseArray;

    .line 169
    .line 170
    if-eqz v4, :cond_6

    .line 171
    .line 172
    const-string v5, "viewState"

    .line 173
    .line 174
    invoke-virtual {v9, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 175
    .line 176
    .line 177
    :cond_6
    iget-object v4, v10, Landroidx/fragment/app/o;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 178
    .line 179
    if-eqz v4, :cond_7

    .line 180
    .line 181
    const-string v5, "viewRegistryState"

    .line 182
    .line 183
    invoke-virtual {v9, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 184
    .line 185
    .line 186
    :cond_7
    iget-object v4, v10, Landroidx/fragment/app/o;->mArguments:Landroid/os/Bundle;

    .line 187
    .line 188
    if-eqz v4, :cond_8

    .line 189
    .line 190
    const-string v5, "arguments"

    .line 191
    .line 192
    invoke-virtual {v9, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 193
    .line 194
    .line 195
    :cond_8
    invoke-virtual {v1, v9, v8}, Landroidx/fragment/app/e0;->i(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 196
    .line 197
    .line 198
    iget-object v4, v7, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    invoke-static {v6}, Landroidx/fragment/app/z;->K(I)Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_0

    .line 208
    .line 209
    const-string v4, "FragmentManager"

    .line 210
    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v6, "Saved state of "

    .line 214
    .line 215
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v6, ": "

    .line 222
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget-object v6, v7, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 227
    .line 228
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_9
    iget-object v1, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 241
    .line 242
    iget-object v1, v1, Landroidx/fragment/app/e0;->c:Ljava/util/HashMap;

    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_a

    .line 249
    .line 250
    invoke-static {v6}, Landroidx/fragment/app/z;->K(I)Z

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    if-eqz p0, :cond_13

    .line 255
    .line 256
    const-string p0, "FragmentManager"

    .line 257
    .line 258
    const-string v1, "saveAllState: no fragments!"

    .line 259
    .line 260
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    return-object v0

    .line 264
    :cond_a
    iget-object v3, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 265
    .line 266
    iget-object v4, v3, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 267
    .line 268
    monitor-enter v4

    .line 269
    :try_start_0
    iget-object v7, v3, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    const/4 v8, 0x0

    .line 276
    if-eqz v7, :cond_b

    .line 277
    .line 278
    monitor-exit v4

    .line 279
    move-object v7, v8

    .line 280
    goto :goto_2

    .line 281
    :catchall_0
    move-exception p0

    .line 282
    goto/16 :goto_6

    .line 283
    .line 284
    :cond_b
    new-instance v7, Ljava/util/ArrayList;

    .line 285
    .line 286
    iget-object v9, v3, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    .line 294
    .line 295
    iget-object v3, v3, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    :cond_c
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    if-eqz v9, :cond_d

    .line 306
    .line 307
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    check-cast v9, Landroidx/fragment/app/o;

    .line 312
    .line 313
    iget-object v10, v9, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    invoke-static {v6}, Landroidx/fragment/app/z;->K(I)Z

    .line 319
    .line 320
    .line 321
    move-result v10

    .line 322
    if-eqz v10, :cond_c

    .line 323
    .line 324
    const-string v10, "FragmentManager"

    .line 325
    .line 326
    new-instance v11, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    const-string v12, "saveAllState: adding fragment ("

    .line 332
    .line 333
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    iget-object v12, v9, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string v12, "): "

    .line 342
    .line 343
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    goto :goto_1

    .line 357
    :cond_d
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :goto_2
    iget-object v3, p0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    if-lez v3, :cond_f

    .line 365
    .line 366
    new-array v4, v3, [Landroidx/fragment/app/b;

    .line 367
    .line 368
    :goto_3
    if-ge v5, v3, :cond_10

    .line 369
    .line 370
    new-instance v9, Landroidx/fragment/app/b;

    .line 371
    .line 372
    iget-object v10, p0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 373
    .line 374
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v10

    .line 378
    check-cast v10, Landroidx/fragment/app/a;

    .line 379
    .line 380
    invoke-direct {v9, v10}, Landroidx/fragment/app/b;-><init>(Landroidx/fragment/app/a;)V

    .line 381
    .line 382
    .line 383
    aput-object v9, v4, v5

    .line 384
    .line 385
    invoke-static {v6}, Landroidx/fragment/app/z;->K(I)Z

    .line 386
    .line 387
    .line 388
    move-result v9

    .line 389
    if-eqz v9, :cond_e

    .line 390
    .line 391
    const-string v9, "FragmentManager"

    .line 392
    .line 393
    const-string v10, "saveAllState: adding back stack #"

    .line 394
    .line 395
    const-string v11, ": "

    .line 396
    .line 397
    invoke-static {v5, v10, v11}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    move-result-object v10

    .line 401
    iget-object v11, p0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 402
    .line 403
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v11

    .line 407
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v10

    .line 414
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 418
    .line 419
    goto :goto_3

    .line 420
    :cond_f
    move-object v4, v8

    .line 421
    :cond_10
    new-instance v3, Lvr3;

    .line 422
    .line 423
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 424
    .line 425
    .line 426
    iput-object v8, v3, Lvr3;->e:Ljava/lang/String;

    .line 427
    .line 428
    new-instance v5, Ljava/util/ArrayList;

    .line 429
    .line 430
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .line 432
    .line 433
    iput-object v5, v3, Lvr3;->f:Ljava/util/ArrayList;

    .line 434
    .line 435
    new-instance v6, Ljava/util/ArrayList;

    .line 436
    .line 437
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .line 439
    .line 440
    iput-object v6, v3, Lvr3;->k:Ljava/util/ArrayList;

    .line 441
    .line 442
    iput-object v2, v3, Lvr3;->a:Ljava/util/ArrayList;

    .line 443
    .line 444
    iput-object v7, v3, Lvr3;->b:Ljava/util/ArrayList;

    .line 445
    .line 446
    iput-object v4, v3, Lvr3;->c:[Landroidx/fragment/app/b;

    .line 447
    .line 448
    iget-object v2, p0, Landroidx/fragment/app/z;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 449
    .line 450
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    iput v2, v3, Lvr3;->d:I

    .line 455
    .line 456
    iget-object v2, p0, Landroidx/fragment/app/z;->z:Landroidx/fragment/app/o;

    .line 457
    .line 458
    if-eqz v2, :cond_11

    .line 459
    .line 460
    iget-object v2, v2, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 461
    .line 462
    iput-object v2, v3, Lvr3;->e:Ljava/lang/String;

    .line 463
    .line 464
    :cond_11
    iget-object v2, p0, Landroidx/fragment/app/z;->l:Ljava/util/Map;

    .line 465
    .line 466
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 471
    .line 472
    .line 473
    iget-object v2, p0, Landroidx/fragment/app/z;->l:Ljava/util/Map;

    .line 474
    .line 475
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 480
    .line 481
    .line 482
    new-instance v2, Ljava/util/ArrayList;

    .line 483
    .line 484
    iget-object v4, p0, Landroidx/fragment/app/z;->F:Ljava/util/ArrayDeque;

    .line 485
    .line 486
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 487
    .line 488
    .line 489
    iput-object v2, v3, Lvr3;->n:Ljava/util/ArrayList;

    .line 490
    .line 491
    const-string v2, "state"

    .line 492
    .line 493
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 494
    .line 495
    .line 496
    iget-object v2, p0, Landroidx/fragment/app/z;->m:Ljava/util/Map;

    .line 497
    .line 498
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 507
    .line 508
    .line 509
    move-result v3

    .line 510
    if-eqz v3, :cond_12

    .line 511
    .line 512
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    check-cast v3, Ljava/lang/String;

    .line 517
    .line 518
    const-string v4, "result_"

    .line 519
    .line 520
    invoke-static {v4, v3}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    iget-object v5, p0, Landroidx/fragment/app/z;->m:Ljava/util/Map;

    .line 525
    .line 526
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    check-cast v3, Landroid/os/Bundle;

    .line 531
    .line 532
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 533
    .line 534
    .line 535
    goto :goto_4

    .line 536
    :cond_12
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 537
    .line 538
    .line 539
    move-result-object p0

    .line 540
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 541
    .line 542
    .line 543
    move-result-object p0

    .line 544
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 545
    .line 546
    .line 547
    move-result v2

    .line 548
    if-eqz v2, :cond_13

    .line 549
    .line 550
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v2

    .line 554
    check-cast v2, Ljava/lang/String;

    .line 555
    .line 556
    const-string v3, "fragment_"

    .line 557
    .line 558
    invoke-static {v3, v2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    check-cast v2, Landroid/os/Bundle;

    .line 567
    .line 568
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 569
    .line 570
    .line 571
    goto :goto_5

    .line 572
    :cond_13
    return-object v0

    .line 573
    :goto_6
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    throw p0
.end method

.method public final Z()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/fragment/app/t;->f:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/fragment/app/z;->P:Lw8;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 23
    .line 24
    iget-object v1, v1, Landroidx/fragment/app/t;->f:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/fragment/app/z;->P:Lw8;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/z;->g0()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final a(Landroidx/fragment/app/o;)Landroidx/fragment/app/d0;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/o;->mPreviousWho:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, v0}, Lbs3;->c(Landroidx/fragment/app/o;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "add: "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "FragmentManager"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->g(Landroidx/fragment/app/o;)Landroidx/fragment/app/d0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object p0, p1, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroidx/fragment/app/e0;->g(Landroidx/fragment/app/d0;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v2, p1, Landroidx/fragment/app/o;->mDetached:Z

    .line 46
    .line 47
    if-nez v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Landroidx/fragment/app/e0;->a(Landroidx/fragment/app/o;)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p1, Landroidx/fragment/app/o;->mRemoving:Z

    .line 54
    .line 55
    iget-object v2, p1, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    iput-boolean v1, p1, Landroidx/fragment/app/o;->mHiddenChanged:Z

    .line 60
    .line 61
    :cond_2
    invoke-static {p1}, Landroidx/fragment/app/z;->L(Landroidx/fragment/app/o;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Landroidx/fragment/app/z;->G:Z

    .line 69
    .line 70
    :cond_3
    return-object v0
.end method

.method public final a0(Landroidx/fragment/app/o;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->G(Landroidx/fragment/app/o;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    instance-of p1, p0, Landroidx/fragment/app/FragmentContainerView;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    check-cast p0, Landroidx/fragment/app/FragmentContainerView;

    .line 12
    .line 13
    xor-int/lit8 p1, p2, 0x1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final b(Landroidx/fragment/app/t;Lms8;Landroidx/fragment/app/o;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 2
    .line 3
    if-nez v0, :cond_13

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/fragment/app/z;->x:Lms8;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 10
    .line 11
    iget-object p2, p0, Landroidx/fragment/app/z;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    new-instance v0, Lpr3;

    .line 16
    .line 17
    invoke-direct {v0, p3}, Lpr3;-><init>(Landroidx/fragment/app/o;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/z;->g0()V

    .line 34
    .line 35
    .line 36
    :cond_2
    if-eqz p1, :cond_4

    .line 37
    .line 38
    iget-object p2, p1, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 39
    .line 40
    invoke-virtual {p2}, Lio1;->getOnBackPressedDispatcher()Lzs5;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Landroidx/fragment/app/z;->g:Lzs5;

    .line 45
    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    move-object v0, p3

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move-object v0, p1

    .line 51
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/z;->j:Landroidx/fragment/app/x;

    .line 52
    .line 53
    invoke-virtual {p2, v0, v1}, Lzs5;->a(Lfu4;Lss5;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    const/4 p2, 0x0

    .line 57
    if-eqz p3, :cond_6

    .line 58
    .line 59
    iget-object p1, p3, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 60
    .line 61
    iget-object p1, p1, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 62
    .line 63
    iget-object v0, p1, Landroidx/fragment/app/a0;->c:Ljava/util/HashMap;

    .line 64
    .line 65
    iget-object v1, p3, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroidx/fragment/app/a0;

    .line 72
    .line 73
    if-nez v1, :cond_5

    .line 74
    .line 75
    new-instance v1, Landroidx/fragment/app/a0;

    .line 76
    .line 77
    iget-boolean p1, p1, Landroidx/fragment/app/a0;->e:Z

    .line 78
    .line 79
    invoke-direct {v1, p1}, Landroidx/fragment/app/a0;-><init>(Z)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p3, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_5
    iput-object v1, p0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    if-eqz p1, :cond_8

    .line 91
    .line 92
    iget-object p1, p1, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 93
    .line 94
    invoke-virtual {p1}, Lio1;->getViewModelStore()Lyl8;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    sget-object v0, Lm22;->b:Lm22;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    new-instance v1, Llj3;

    .line 104
    .line 105
    sget-object v2, Landroidx/fragment/app/a0;->h:Lwr3;

    .line 106
    .line 107
    invoke-direct {v1, p1, v2, v0}, Llj3;-><init>(Lyl8;Lwl8;Ln22;)V

    .line 108
    .line 109
    .line 110
    const-class p1, Landroidx/fragment/app/a0;

    .line 111
    .line 112
    invoke-static {p1}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Ln81;->b()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 123
    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v1, p1, v0}, Llj3;->b(Ln81;Ljava/lang/String;)Ltl8;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroidx/fragment/app/a0;

    .line 133
    .line 134
    iput-object p1, p0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_7
    const-string p0, "Local and anonymous classes can not be ViewModels"

    .line 138
    .line 139
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_8
    new-instance p1, Landroidx/fragment/app/a0;

    .line 144
    .line 145
    invoke-direct {p1, p2}, Landroidx/fragment/app/a0;-><init>(Z)V

    .line 146
    .line 147
    .line 148
    iput-object p1, p0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 149
    .line 150
    :goto_2
    iget-object p1, p0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 151
    .line 152
    iget-boolean v0, p0, Landroidx/fragment/app/z;->H:Z

    .line 153
    .line 154
    if-nez v0, :cond_a

    .line 155
    .line 156
    iget-boolean v0, p0, Landroidx/fragment/app/z;->I:Z

    .line 157
    .line 158
    if-eqz v0, :cond_9

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_9
    move v0, p2

    .line 162
    goto :goto_4

    .line 163
    :cond_a
    :goto_3
    const/4 v0, 0x1

    .line 164
    :goto_4
    iput-boolean v0, p1, Landroidx/fragment/app/a0;->g:Z

    .line 165
    .line 166
    iget-object v0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 167
    .line 168
    iput-object p1, v0, Landroidx/fragment/app/e0;->d:Landroidx/fragment/app/a0;

    .line 169
    .line 170
    iget-object p1, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 171
    .line 172
    if-eqz p1, :cond_b

    .line 173
    .line 174
    if-nez p3, :cond_b

    .line 175
    .line 176
    iget-object p1, p1, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 177
    .line 178
    invoke-virtual {p1}, Lio1;->getSavedStateRegistry()Lot9;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    new-instance v0, Llr3;

    .line 183
    .line 184
    invoke-direct {v0, p0}, Llr3;-><init>(Landroidx/fragment/app/z;)V

    .line 185
    .line 186
    .line 187
    const-string v1, "android:support:fragments"

    .line 188
    .line 189
    invoke-virtual {p1, v1, v0}, Lot9;->h(Ljava/lang/String;Lux6;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v1}, Lot9;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    if-eqz p1, :cond_b

    .line 197
    .line 198
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->X(Landroid/os/Bundle;)V

    .line 199
    .line 200
    .line 201
    :cond_b
    iget-object p1, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 202
    .line 203
    if-eqz p1, :cond_d

    .line 204
    .line 205
    iget-object p1, p1, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 206
    .line 207
    invoke-virtual {p1}, Lio1;->getActivityResultRegistry()Lgo1;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    if-eqz p3, :cond_c

    .line 212
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    iget-object v1, p3, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 219
    .line 220
    const-string v2, ":"

    .line 221
    .line 222
    invoke-static {v0, v1, v2}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    goto :goto_5

    .line 227
    :cond_c
    const-string v0, ""

    .line 228
    .line 229
    :goto_5
    const-string v1, "FragmentManager:"

    .line 230
    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    const-string v1, "StartActivityForResult"

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    new-instance v2, Lm9;

    .line 242
    .line 243
    invoke-direct {v2, p2}, Lm9;-><init>(I)V

    .line 244
    .line 245
    .line 246
    new-instance v3, Lke;

    .line 247
    .line 248
    const/16 v4, 0x8

    .line 249
    .line 250
    invoke-direct {v3, p0, v4}, Lke;-><init>(Ljava/lang/Object;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v1, v2, v3}, Lgo1;->d(Ljava/lang/String;Lj9;Lh9;)Lu9;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    iput-object v1, p0, Landroidx/fragment/app/z;->C:Lu9;

    .line 258
    .line 259
    const-string v1, "StartIntentSenderForResult"

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    new-instance v2, Lqr3;

    .line 266
    .line 267
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 268
    .line 269
    .line 270
    new-instance v3, Lln5;

    .line 271
    .line 272
    invoke-direct {v3, p0, v4}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v1, v2, v3}, Lgo1;->d(Ljava/lang/String;Lj9;Lh9;)Lu9;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    iput-object v1, p0, Landroidx/fragment/app/z;->D:Lu9;

    .line 280
    .line 281
    const-string v1, "RequestPermissions"

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    new-instance v1, Lk9;

    .line 288
    .line 289
    invoke-direct {v1, p2}, Lk9;-><init>(I)V

    .line 290
    .line 291
    .line 292
    new-instance p2, Lkm5;

    .line 293
    .line 294
    const/16 v2, 0xb

    .line 295
    .line 296
    invoke-direct {p2, p0, v2}, Lkm5;-><init>(Ljava/lang/Object;I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, v0, v1, p2}, Lgo1;->d(Ljava/lang/String;Lj9;Lh9;)Lu9;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iput-object p1, p0, Landroidx/fragment/app/z;->E:Lu9;

    .line 304
    .line 305
    :cond_d
    iget-object p1, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 306
    .line 307
    if-eqz p1, :cond_e

    .line 308
    .line 309
    iget-object p2, p0, Landroidx/fragment/app/z;->q:Lhr3;

    .line 310
    .line 311
    iget-object p1, p1, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 312
    .line 313
    invoke-virtual {p1, p2}, Lio1;->addOnConfigurationChangedListener(Lyt1;)V

    .line 314
    .line 315
    .line 316
    :cond_e
    iget-object p1, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 317
    .line 318
    if-eqz p1, :cond_f

    .line 319
    .line 320
    iget-object p2, p0, Landroidx/fragment/app/z;->r:Lir3;

    .line 321
    .line 322
    iget-object p1, p1, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 323
    .line 324
    invoke-virtual {p1, p2}, Lio1;->addOnTrimMemoryListener(Lyt1;)V

    .line 325
    .line 326
    .line 327
    :cond_f
    iget-object p1, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 328
    .line 329
    if-eqz p1, :cond_10

    .line 330
    .line 331
    iget-object p2, p0, Landroidx/fragment/app/z;->s:Ljr3;

    .line 332
    .line 333
    iget-object p1, p1, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 334
    .line 335
    invoke-virtual {p1, p2}, Lio1;->addOnMultiWindowModeChangedListener(Lyt1;)V

    .line 336
    .line 337
    .line 338
    :cond_10
    iget-object p1, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 339
    .line 340
    if-eqz p1, :cond_11

    .line 341
    .line 342
    iget-object p2, p0, Landroidx/fragment/app/z;->t:Lkr3;

    .line 343
    .line 344
    iget-object p1, p1, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 345
    .line 346
    invoke-virtual {p1, p2}, Lio1;->addOnPictureInPictureModeChangedListener(Lyt1;)V

    .line 347
    .line 348
    .line 349
    :cond_11
    iget-object p1, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 350
    .line 351
    if-eqz p1, :cond_12

    .line 352
    .line 353
    if-nez p3, :cond_12

    .line 354
    .line 355
    iget-object p0, p0, Landroidx/fragment/app/z;->u:Lnr3;

    .line 356
    .line 357
    iget-object p1, p1, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 358
    .line 359
    invoke-virtual {p1, p0}, Lio1;->addMenuProvider(Lxc5;)V

    .line 360
    .line 361
    .line 362
    :cond_12
    return-void

    .line 363
    :cond_13
    const-string p0, "Already attached"

    .line 364
    .line 365
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    return-void
.end method

.method public final b0(Landroidx/fragment/app/o;Lst4;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroidx/fragment/app/e0;->b(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 16
    .line 17
    if-ne v0, p0, :cond_1

    .line 18
    .line 19
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/o;->mMaxState:Lst4;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const-string p2, "Fragment "

    .line 23
    .line 24
    const-string v0, " is not an active fragment of FragmentManager "

    .line 25
    .line 26
    invoke-static {p2, p1, v0, p0}, Ly5;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final c(Landroidx/fragment/app/o;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "attach: "

    .line 13
    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/o;->mDetached:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, p1, Landroidx/fragment/app/o;->mDetached:Z

    .line 33
    .line 34
    iget-boolean v1, p1, Landroidx/fragment/app/o;->mAdded:Z

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Landroidx/fragment/app/e0;->a(Landroidx/fragment/app/o;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "add from attach: "

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/z;->L(Landroidx/fragment/app/o;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Landroidx/fragment/app/z;->G:Z

    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public final c0(Landroidx/fragment/app/o;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/fragment/app/e0;->b(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 18
    .line 19
    if-ne v0, p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "Fragment "

    .line 23
    .line 24
    const-string v1, " is not an active fragment of FragmentManager "

    .line 25
    .line 26
    invoke-static {v0, p1, v1, p0}, Ly5;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/z;->z:Landroidx/fragment/app/o;

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/fragment/app/z;->z:Landroidx/fragment/app/o;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->r(Landroidx/fragment/app/o;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Landroidx/fragment/app/z;->z:Landroidx/fragment/app/o;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->r(Landroidx/fragment/app/o;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/z;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/z;->M:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/fragment/app/z;->L:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final d0(Landroidx/fragment/app/o;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->G(Landroidx/fragment/app/o;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_7

    .line 6
    .line 7
    iget-object v0, p1, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    move v2, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v2, v0, Ldr3;->b:I

    .line 15
    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    move v3, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget v3, v0, Ldr3;->c:I

    .line 21
    .line 22
    :goto_1
    add-int/2addr v3, v2

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    move v2, v1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    iget v2, v0, Ldr3;->d:I

    .line 28
    .line 29
    :goto_2
    add-int/2addr v2, v3

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    move v0, v1

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    iget v0, v0, Ldr3;->e:I

    .line 35
    .line 36
    :goto_3
    add-int/2addr v0, v2

    .line 37
    if-lez v0, :cond_7

    .line 38
    .line 39
    const v0, 0x7f0a05e8

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Landroidx/fragment/app/o;

    .line 56
    .line 57
    iget-object p1, p1, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 58
    .line 59
    if-nez p1, :cond_5

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_5
    iget-boolean v1, p1, Ldr3;->a:Z

    .line 63
    .line 64
    :goto_4
    iget-object p1, p0, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 65
    .line 66
    if-nez p1, :cond_6

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/o;->e()Ldr3;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    iput-boolean v1, p0, Ldr3;->a:Z

    .line 74
    .line 75
    :cond_7
    :goto_5
    return-void
.end method

.method public final e()Ljava/util/HashSet;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/e0;->d()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/fragment/app/d0;

    .line 27
    .line 28
    iget-object v2, v2, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 29
    .line 30
    iget-object v2, v2, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/z;->I()Llv1;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const v3, 0x7f0a046a

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    instance-of v5, v4, Landroidx/fragment/app/g;

    .line 49
    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    check-cast v4, Landroidx/fragment/app/g;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    new-instance v4, Landroidx/fragment/app/g;

    .line 56
    .line 57
    invoke-direct {v4, v2}, Landroidx/fragment/app/g;-><init>(Landroid/view/ViewGroup;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    return-object v0
.end method

.method public final f(Ljava/util/ArrayList;II)Ljava/util/HashSet;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    if-ge p2, p3, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/fragment/app/a;

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lds3;

    .line 31
    .line 32
    iget-object v2, v2, Lds3;->b:Landroidx/fragment/app/o;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v2, v2, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-static {v2, p0}, Landroidx/fragment/app/g;->i(Landroid/view/ViewGroup;Landroidx/fragment/app/z;)Landroidx/fragment/app/g;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object v0
.end method

.method public final f0(Ljava/lang/IllegalStateException;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FragmentManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const-string v0, "Activity state:"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v0, Lh15;

    .line 16
    .line 17
    invoke-direct {v0}, Lh15;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/io/PrintWriter;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 26
    .line 27
    const-string v3, "Failed dumping state"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v6, "  "

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    :try_start_0
    new-array p0, v4, [Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, v0, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 38
    .line 39
    invoke-virtual {v0, v6, v5, v2, p0}, Landroidx/fragment/app/u;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/z;->v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception p0

    .line 55
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    :goto_0
    throw p1
.end method

.method public final g(Landroidx/fragment/app/o;)Landroidx/fragment/app/d0;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/fragment/app/e0;->b:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/fragment/app/d0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Landroidx/fragment/app/d0;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/fragment/app/z;->o:Lw00;

    .line 19
    .line 20
    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/d0;-><init>(Lw00;Landroidx/fragment/app/e0;Landroidx/fragment/app/o;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 24
    .line 25
    iget-object p1, p1, Landroidx/fragment/app/t;->e:Landroidx/fragment/app/u;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Landroidx/fragment/app/d0;->l(Ljava/lang/ClassLoader;)V

    .line 32
    .line 33
    .line 34
    iget p0, p0, Landroidx/fragment/app/z;->v:I

    .line 35
    .line 36
    iput p0, v0, Landroidx/fragment/app/d0;->e:I

    .line 37
    .line 38
    return-object v0
.end method

.method public final g0()V
    .locals 5

    .line 1
    const-string v0, "FragmentManager "

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, 0x1

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/fragment/app/z;->j:Landroidx/fragment/app/x;

    .line 17
    .line 18
    invoke-virtual {v2, v4}, Lss5;->setEnabled(Z)V

    .line 19
    .line 20
    .line 21
    invoke-static {v3}, Landroidx/fragment/app/z;->K(I)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const-string v2, "FragmentManager"

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, " enabling OnBackPressedCallback, caused by non-empty pending actions"

    .line 38
    .line 39
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_3

    .line 52
    :cond_0
    :goto_0
    monitor-exit v1

    .line 53
    return-void

    .line 54
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v0, p0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget-object v1, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    move v1, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v1, v2

    .line 69
    :goto_1
    add-int/2addr v0, v1

    .line 70
    if-lez v0, :cond_3

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 73
    .line 74
    invoke-static {v0}, Landroidx/fragment/app/z;->O(Landroidx/fragment/app/o;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    move v4, v2

    .line 82
    :goto_2
    invoke-static {v3}, Landroidx/fragment/app/z;->K(I)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    const-string v0, "FragmentManager"

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v2, "OnBackPressedCallback for FragmentManager "

    .line 93
    .line 94
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v2, " enabled state is "

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :cond_4
    iget-object p0, p0, Landroidx/fragment/app/z;->j:Landroidx/fragment/app/x;

    .line 116
    .line 117
    invoke-virtual {p0, v4}, Lss5;->setEnabled(Z)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    throw p0
.end method

.method public final h(Landroidx/fragment/app/o;)V
    .locals 4

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Landroidx/fragment/app/z;->K(I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "detach: "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/o;->mDetached:Z

    .line 28
    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    iput-boolean v2, p1, Landroidx/fragment/app/o;->mDetached:Z

    .line 33
    .line 34
    iget-boolean v3, p1, Landroidx/fragment/app/o;->mAdded:Z

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-static {v1}, Landroidx/fragment/app/z;->K(I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "remove from detach: "

    .line 47
    .line 48
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 62
    .line 63
    iget-object v1, v0, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 64
    .line 65
    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p1, Landroidx/fragment/app/o;->mAdded:Z

    .line 74
    .line 75
    invoke-static {p1}, Landroidx/fragment/app/z;->L(Landroidx/fragment/app/o;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iput-boolean v2, p0, Landroidx/fragment/app/z;->G:Z

    .line 82
    .line 83
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->d0(Landroidx/fragment/app/o;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    throw p0

    .line 90
    :cond_3
    return-void
.end method

.method public final i(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->f0(Ljava/lang/IllegalStateException;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->f()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroidx/fragment/app/o;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/fragment/app/o;->performConfigurationChanged()V

    .line 45
    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object v0, v0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Landroidx/fragment/app/z;->i(Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    return-void
.end method

.method public final j()Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/z;->v:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->f()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroidx/fragment/app/o;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-boolean v3, v0, Landroidx/fragment/app/o;->mHidden:Z

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    iget-object v0, v0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/z;->j()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, v1

    .line 44
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    :goto_1
    return v1
.end method

.method public final k()Z
    .locals 7

    .line 1
    iget v0, p0, Landroidx/fragment/app/z;->v:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/e0;->f()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_4

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroidx/fragment/app/o;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-static {v5}, Landroidx/fragment/app/z;->N(Landroidx/fragment/app/o;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    iget-boolean v6, v5, Landroidx/fragment/app/o;->mHidden:Z

    .line 41
    .line 42
    if-nez v6, :cond_2

    .line 43
    .line 44
    iget-object v6, v5, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 45
    .line 46
    invoke-virtual {v6}, Landroidx/fragment/app/z;->k()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v6, v1

    .line 52
    :goto_1
    if-eqz v6, :cond_1

    .line 53
    .line 54
    if-nez v3, :cond_3

    .line 55
    .line 56
    new-instance v3, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move v4, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/z;->e:Ljava/util/ArrayList;

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/z;->e:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-ge v1, v0, :cond_7

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/fragment/app/z;->e:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroidx/fragment/app/o;

    .line 85
    .line 86
    if-eqz v3, :cond_5

    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_6

    .line 93
    .line 94
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_7
    iput-object v3, p0, Landroidx/fragment/app/z;->e:Ljava/util/ArrayList;

    .line 101
    .line 102
    return v4
.end method

.method public final l()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/z;->J:Z

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->z(Z)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/z;->w()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v0, v2, Landroidx/fragment/app/e0;->d:Landroidx/fragment/app/a0;

    .line 17
    .line 18
    iget-boolean v0, v0, Landroidx/fragment/app/a0;->f:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, v1, Landroidx/fragment/app/t;->e:Landroidx/fragment/app/u;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    xor-int/2addr v0, v1

    .line 30
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/fragment/app/z;->l:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lzj0;

    .line 53
    .line 54
    iget-object v1, v1, Lzj0;->a:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/lang/String;

    .line 71
    .line 72
    iget-object v4, v2, Landroidx/fragment/app/e0;->d:Landroidx/fragment/app/a0;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-virtual {v4, v3, v5}, Landroidx/fragment/app/a0;->d(Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/4 v0, -0x1

    .line 80
    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->u(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    iget-object v1, p0, Landroidx/fragment/app/z;->r:Lir3;

    .line 88
    .line 89
    iget-object v0, v0, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lio1;->removeOnTrimMemoryListener(Lyt1;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 95
    .line 96
    if-eqz v0, :cond_5

    .line 97
    .line 98
    iget-object v1, p0, Landroidx/fragment/app/z;->q:Lhr3;

    .line 99
    .line 100
    iget-object v0, v0, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lio1;->removeOnConfigurationChangedListener(Lyt1;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 106
    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    iget-object v1, p0, Landroidx/fragment/app/z;->s:Ljr3;

    .line 110
    .line 111
    iget-object v0, v0, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lio1;->removeOnMultiWindowModeChangedListener(Lyt1;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 117
    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    iget-object v1, p0, Landroidx/fragment/app/z;->t:Lkr3;

    .line 121
    .line 122
    iget-object v0, v0, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lio1;->removeOnPictureInPictureModeChangedListener(Lyt1;)V

    .line 125
    .line 126
    .line 127
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 128
    .line 129
    if-eqz v0, :cond_8

    .line 130
    .line 131
    iget-object v1, p0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 132
    .line 133
    if-nez v1, :cond_8

    .line 134
    .line 135
    iget-object v1, p0, Landroidx/fragment/app/z;->u:Lnr3;

    .line 136
    .line 137
    iget-object v0, v0, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lio1;->removeMenuProvider(Lxc5;)V

    .line 140
    .line 141
    .line 142
    :cond_8
    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 144
    .line 145
    iput-object v0, p0, Landroidx/fragment/app/z;->x:Lms8;

    .line 146
    .line 147
    iput-object v0, p0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 148
    .line 149
    iget-object v1, p0, Landroidx/fragment/app/z;->g:Lzs5;

    .line 150
    .line 151
    if-eqz v1, :cond_9

    .line 152
    .line 153
    iget-object v1, p0, Landroidx/fragment/app/z;->j:Landroidx/fragment/app/x;

    .line 154
    .line 155
    invoke-virtual {v1}, Lss5;->remove()V

    .line 156
    .line 157
    .line 158
    iput-object v0, p0, Landroidx/fragment/app/z;->g:Lzs5;

    .line 159
    .line 160
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/z;->C:Lu9;

    .line 161
    .line 162
    if-eqz v0, :cond_a

    .line 163
    .line 164
    invoke-virtual {v0}, Lu9;->b()V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Landroidx/fragment/app/z;->D:Lu9;

    .line 168
    .line 169
    invoke-virtual {v0}, Lu9;->b()V

    .line 170
    .line 171
    .line 172
    iget-object p0, p0, Landroidx/fragment/app/z;->E:Lu9;

    .line 173
    .line 174
    invoke-virtual {p0}, Lu9;->b()V

    .line 175
    .line 176
    .line 177
    :cond_a
    return-void
.end method

.method public final m(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->f0(Ljava/lang/IllegalStateException;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->f()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroidx/fragment/app/o;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/fragment/app/o;->performLowMemory()V

    .line 45
    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object v0, v0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Landroidx/fragment/app/z;->m(Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    return-void
.end method

.method public final n(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->f0(Ljava/lang/IllegalStateException;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->f()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroidx/fragment/app/o;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Landroidx/fragment/app/z;->n(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->e()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/fragment/app/o;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/o;->isHidden()Z

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/z;->o()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public final p()Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/z;->v:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->f()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroidx/fragment/app/o;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-boolean v3, v0, Landroidx/fragment/app/o;->mHidden:Z

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    iget-object v0, v0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/z;->p()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, v1

    .line 44
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    :goto_1
    return v1
.end method

.method public final q()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/z;->v:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->f()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/fragment/app/o;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-boolean v1, v0, Landroidx/fragment/app/o;->mHidden:Z

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/fragment/app/z;->q()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    return-void
.end method

.method public final r(Landroidx/fragment/app/o;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/e0;->b(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eq p1, p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/o;->performPrimaryNavigationFragmentChanged()V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public final s(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->f0(Ljava/lang/IllegalStateException;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->f()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroidx/fragment/app/o;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Landroidx/fragment/app/z;->s(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    return-void
.end method

.method public final t()Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/z;->v:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->f()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    move v0, v1

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/fragment/app/o;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-static {v3}, Landroidx/fragment/app/z;->N(Landroidx/fragment/app/o;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    iget-boolean v4, v3, Landroidx/fragment/app/o;->mHidden:Z

    .line 40
    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    iget-object v3, v3, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroidx/fragment/app/z;->t()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v3, v1

    .line 51
    :goto_1
    if-eqz v3, :cond_1

    .line 52
    .line 53
    move v0, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "FragmentManager{"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " in "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 30
    .line 31
    const-string v2, "}"

    .line 32
    .line 33
    const-string v3, "{"

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 52
    .line 53
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 87
    .line 88
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const-string p0, "null"

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :goto_0
    const-string p0, "}}"

    .line 109
    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0
.end method

.method public final u(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/z;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 6
    .line 7
    iget-object v2, v2, Landroidx/fragment/app/e0;->b:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroidx/fragment/app/d0;

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iput p1, v3, Landroidx/fragment/app/d0;->e:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/z;->P(IZ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/z;->e()Ljava/util/HashSet;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroidx/fragment/app/g;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/fragment/app/g;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/z;->b:Z

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->z(Z)Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_2
    iput-boolean v1, p0, Landroidx/fragment/app/z;->b:Z

    .line 70
    .line 71
    throw p1
.end method

.method public final v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-static {p1, v0}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 8
    .line 9
    iget-object v2, v1, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    const-string v3, "    "

    .line 12
    .line 13
    invoke-static {p1, v3}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v1, v1, Landroidx/fragment/app/e0;->b:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v4, "Active Fragments:"

    .line 29
    .line 30
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Landroidx/fragment/app/d0;

    .line 52
    .line 53
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    iget-object v4, v4, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 59
    .line 60
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v3, p2, p3, p4}, Landroidx/fragment/app/o;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const-string v4, "null"

    .line 68
    .line 69
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    const/4 p4, 0x0

    .line 78
    if-lez p2, :cond_2

    .line 79
    .line 80
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v1, "Added Fragments:"

    .line 84
    .line 85
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    move v1, p4

    .line 89
    :goto_1
    if-ge v1, p2, :cond_2

    .line 90
    .line 91
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Landroidx/fragment/app/o;

    .line 96
    .line 97
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v4, "  #"

    .line 101
    .line 102
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 106
    .line 107
    .line 108
    const-string v4, ": "

    .line 109
    .line 110
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Landroidx/fragment/app/o;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    add-int/lit8 v1, v1, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/z;->e:Ljava/util/ArrayList;

    .line 124
    .line 125
    if-eqz p2, :cond_3

    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-lez p2, :cond_3

    .line 132
    .line 133
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v1, "Fragments Created Menus:"

    .line 137
    .line 138
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    move v1, p4

    .line 142
    :goto_2
    if-ge v1, p2, :cond_3

    .line 143
    .line 144
    iget-object v2, p0, Landroidx/fragment/app/z;->e:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Landroidx/fragment/app/o;

    .line 151
    .line 152
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v3, "  #"

    .line 156
    .line 157
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 161
    .line 162
    .line 163
    const-string v3, ": "

    .line 164
    .line 165
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Landroidx/fragment/app/o;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    add-int/lit8 v1, v1, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_3
    iget-object p2, p0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    if-lez p2, :cond_4

    .line 185
    .line 186
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v1, "Back Stack:"

    .line 190
    .line 191
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    move v1, p4

    .line 195
    :goto_3
    if-ge v1, p2, :cond_4

    .line 196
    .line 197
    iget-object v2, p0, Landroidx/fragment/app/z;->d:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Landroidx/fragment/app/a;

    .line 204
    .line 205
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string v3, "  #"

    .line 209
    .line 210
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 214
    .line 215
    .line 216
    const-string v3, ": "

    .line 217
    .line 218
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    const/4 v3, 0x1

    .line 229
    invoke-virtual {v2, v0, p3, v3}, Landroidx/fragment/app/a;->h(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 230
    .line 231
    .line 232
    add-int/lit8 v1, v1, 0x1

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    new-instance p2, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v0, "Back Stack Index: "

    .line 241
    .line 242
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Landroidx/fragment/app/z;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object p2, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 262
    .line 263
    monitor-enter p2

    .line 264
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-lez v0, :cond_5

    .line 271
    .line 272
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    const-string v1, "Pending Actions:"

    .line 276
    .line 277
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :goto_4
    if-ge p4, v0, :cond_5

    .line 281
    .line 282
    iget-object v1, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    check-cast v1, Lsr3;

    .line 289
    .line 290
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    const-string v2, "  #"

    .line 294
    .line 295
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 299
    .line 300
    .line 301
    const-string v2, ": "

    .line 302
    .line 303
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    add-int/lit8 p4, p4, 0x1

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :catchall_0
    move-exception p0

    .line 313
    goto :goto_5

    .line 314
    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    const-string p2, "FragmentManager misc state:"

    .line 319
    .line 320
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    const-string p2, "  mHost="

    .line 327
    .line 328
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object p2, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 332
    .line 333
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const-string p2, "  mContainer="

    .line 340
    .line 341
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget-object p2, p0, Landroidx/fragment/app/z;->x:Lms8;

    .line 345
    .line 346
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    iget-object p2, p0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 350
    .line 351
    if-eqz p2, :cond_6

    .line 352
    .line 353
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const-string p2, "  mParent="

    .line 357
    .line 358
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-object p2, p0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 362
    .line 363
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    const-string p2, "  mCurState="

    .line 370
    .line 371
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    iget p2, p0, Landroidx/fragment/app/z;->v:I

    .line 375
    .line 376
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 377
    .line 378
    .line 379
    const-string p2, " mStateSaved="

    .line 380
    .line 381
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-boolean p2, p0, Landroidx/fragment/app/z;->H:Z

    .line 385
    .line 386
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 387
    .line 388
    .line 389
    const-string p2, " mStopped="

    .line 390
    .line 391
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    iget-boolean p2, p0, Landroidx/fragment/app/z;->I:Z

    .line 395
    .line 396
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 397
    .line 398
    .line 399
    const-string p2, " mDestroyed="

    .line 400
    .line 401
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    iget-boolean p2, p0, Landroidx/fragment/app/z;->J:Z

    .line 405
    .line 406
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 407
    .line 408
    .line 409
    iget-boolean p2, p0, Landroidx/fragment/app/z;->G:Z

    .line 410
    .line 411
    if-eqz p2, :cond_7

    .line 412
    .line 413
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    const-string p1, "  mNeedMenuInvalidate="

    .line 417
    .line 418
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iget-boolean p0, p0, Landroidx/fragment/app/z;->G:Z

    .line 422
    .line 423
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 424
    .line 425
    .line 426
    :cond_7
    return-void

    .line 427
    :goto_5
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    throw p0
.end method

.method public final w()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/z;->e()Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/fragment/app/g;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/g;->h()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final x(Lsr3;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean p0, p0, Landroidx/fragment/app/z;->J:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-string p0, "FragmentManager has been destroyed"

    .line 12
    .line 13
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "FragmentManager has not been attached to a host."

    .line 18
    .line 19
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-boolean v0, p0, Landroidx/fragment/app/z;->H:Z

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-boolean v0, p0, Landroidx/fragment/app/z;->I:Z

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-string p0, "Can not perform this action after onSaveInstanceState"

    .line 33
    .line 34
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 42
    .line 43
    if-nez v1, :cond_5

    .line 44
    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "Activity has been destroyed"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/z;->Z()V

    .line 65
    .line 66
    .line 67
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
.end method

.method public final y(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/z;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p0, p0, Landroidx/fragment/app/z;->J:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const-string p0, "FragmentManager has been destroyed"

    .line 14
    .line 15
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p0, "FragmentManager has not been attached to a host."

    .line 20
    .line 21
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 30
    .line 31
    iget-object v1, v1, Landroidx/fragment/app/t;->f:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-ne v0, v1, :cond_5

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    iget-boolean p1, p0, Landroidx/fragment/app/z;->H:Z

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    iget-boolean p1, p0, Landroidx/fragment/app/z;->I:Z

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string p0, "Can not perform this action after onSaveInstanceState"

    .line 51
    .line 52
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/z;->L:Ljava/util/ArrayList;

    .line 57
    .line 58
    if-nez p1, :cond_4

    .line 59
    .line 60
    new-instance p1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Landroidx/fragment/app/z;->L:Ljava/util/ArrayList;

    .line 66
    .line 67
    new-instance p1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Landroidx/fragment/app/z;->M:Ljava/util/ArrayList;

    .line 73
    .line 74
    :cond_4
    return-void

    .line 75
    :cond_5
    const-string p0, "Must be called from main thread of fragment host"

    .line 76
    .line 77
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_6
    const-string p0, "FragmentManager is already executing transactions"

    .line 82
    .line 83
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final z(Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->y(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Landroidx/fragment/app/z;->i:Z

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p1, :cond_3

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    iput-boolean v1, p1, Landroidx/fragment/app/a;->s:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/a;->d()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    invoke-static {p1}, Landroidx/fragment/app/z;->K(I)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const-string p1, "FragmentManager"

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "Reversing mTransitioningOp "

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, " as part of execPendingActions for actions "

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 58
    .line 59
    invoke-virtual {p1, v1, v1}, Landroidx/fragment/app/a;->f(ZZ)I

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 63
    .line 64
    iget-object v2, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 65
    .line 66
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 70
    .line 71
    iget-object p1, p1, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lds3;

    .line 88
    .line 89
    iget-object v2, v2, Lds3;->b:Landroidx/fragment/app/o;

    .line 90
    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    iput-boolean v1, v2, Landroidx/fragment/app/o;->mTransitioning:Z

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iput-object v0, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 97
    .line 98
    :cond_3
    move p1, v1

    .line 99
    :goto_1
    iget-object v2, p0, Landroidx/fragment/app/z;->L:Ljava/util/ArrayList;

    .line 100
    .line 101
    iget-object v3, p0, Landroidx/fragment/app/z;->M:Ljava/util/ArrayList;

    .line 102
    .line 103
    iget-object v4, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 104
    .line 105
    monitor-enter v4

    .line 106
    :try_start_0
    iget-object v5, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_4

    .line 113
    .line 114
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    move v7, v1

    .line 116
    goto :goto_3

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    goto/16 :goto_6

    .line 119
    .line 120
    :cond_4
    :try_start_1
    iget-object v5, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    move v6, v1

    .line 127
    move v7, v6

    .line 128
    :goto_2
    iget-object v8, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 129
    .line 130
    if-ge v6, v5, :cond_5

    .line 131
    .line 132
    :try_start_2
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    check-cast v8, Lsr3;

    .line 137
    .line 138
    invoke-interface {v8, v2, v3}, Lsr3;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 139
    .line 140
    .line 141
    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    or-int/2addr v7, v8

    .line 143
    add-int/lit8 v6, v6, 0x1

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :catchall_1
    move-exception p1

    .line 147
    goto :goto_5

    .line 148
    :cond_5
    :try_start_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 152
    .line 153
    iget-object v2, v2, Landroidx/fragment/app/t;->f:Landroid/os/Handler;

    .line 154
    .line 155
    iget-object v3, p0, Landroidx/fragment/app/z;->P:Lw8;

    .line 156
    .line 157
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    .line 159
    .line 160
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    :goto_3
    const/4 v2, 0x1

    .line 162
    if-eqz v7, :cond_6

    .line 163
    .line 164
    iput-boolean v2, p0, Landroidx/fragment/app/z;->b:Z

    .line 165
    .line 166
    :try_start_4
    iget-object p1, p0, Landroidx/fragment/app/z;->L:Ljava/util/ArrayList;

    .line 167
    .line 168
    iget-object v3, p0, Landroidx/fragment/app/z;->M:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {p0, p1, v3}, Landroidx/fragment/app/z;->W(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/z;->d()V

    .line 174
    .line 175
    .line 176
    move p1, v2

    .line 177
    goto :goto_1

    .line 178
    :catchall_2
    move-exception p1

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/z;->d()V

    .line 180
    .line 181
    .line 182
    throw p1

    .line 183
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/z;->g0()V

    .line 184
    .line 185
    .line 186
    iget-boolean v3, p0, Landroidx/fragment/app/z;->K:Z

    .line 187
    .line 188
    if-eqz v3, :cond_9

    .line 189
    .line 190
    iput-boolean v1, p0, Landroidx/fragment/app/z;->K:Z

    .line 191
    .line 192
    iget-object v3, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 193
    .line 194
    invoke-virtual {v3}, Landroidx/fragment/app/e0;->d()Ljava/util/ArrayList;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_9

    .line 207
    .line 208
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    check-cast v4, Landroidx/fragment/app/d0;

    .line 213
    .line 214
    iget-object v5, v4, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 215
    .line 216
    iget-boolean v6, v5, Landroidx/fragment/app/o;->mDeferStart:Z

    .line 217
    .line 218
    if-eqz v6, :cond_7

    .line 219
    .line 220
    iget-boolean v6, p0, Landroidx/fragment/app/z;->b:Z

    .line 221
    .line 222
    if-eqz v6, :cond_8

    .line 223
    .line 224
    iput-boolean v2, p0, Landroidx/fragment/app/z;->K:Z

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_8
    iput-boolean v1, v5, Landroidx/fragment/app/o;->mDeferStart:Z

    .line 228
    .line 229
    invoke-virtual {v4}, Landroidx/fragment/app/d0;->k()V

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_9
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 234
    .line 235
    iget-object p0, p0, Landroidx/fragment/app/e0;->b:Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-interface {p0, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 246
    .line 247
    .line 248
    return p1

    .line 249
    :goto_5
    :try_start_5
    iget-object v0, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 255
    .line 256
    iget-object v0, v0, Landroidx/fragment/app/t;->f:Landroid/os/Handler;

    .line 257
    .line 258
    iget-object p0, p0, Landroidx/fragment/app/z;->P:Lw8;

    .line 259
    .line 260
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    .line 262
    .line 263
    throw p1

    .line 264
    :goto_6
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 265
    throw p0
.end method
