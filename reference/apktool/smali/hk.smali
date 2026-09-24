.class public final Lhk;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lhk;",
            ">;"
        }
    .end annotation
.end field

.field public static final I:Lgv7;


# instance fields
.field public final G:Lgv7;

.field public final H:Lgv7;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Lgv7;

.field public final e:Lgv7;

.field public final f:Lgv7;

.field public final k:Lgv7;

.field public final n:Lgv7;

.field public final p:Lgv7;

.field public final q:Lgv7;

.field public final r:Lgv7;

.field public final t:Lgv7;

.field public final x:Lgv7;

.field public final y:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgk;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgk;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lhk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    new-instance v0, Lzj;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lzj;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lgv7;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lhk;->I:Lgv7;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lhk;->a:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lhk;->b:Ljava/lang/String;

    .line 13
    .line 14
    iput-boolean p3, p0, Lhk;->c:Z

    .line 15
    .line 16
    new-instance p1, Lgj;

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-direct {p1, p0, p2}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    new-instance p3, Lgv7;

    .line 23
    .line 24
    invoke-direct {p3, p1}, Lgv7;-><init>(Lbt3;)V

    .line 25
    .line 26
    .line 27
    iput-object p3, p0, Lhk;->d:Lgv7;

    .line 28
    .line 29
    new-instance p1, Ldk;

    .line 30
    .line 31
    const/4 p3, 0x0

    .line 32
    invoke-direct {p1, p0, p3}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lgv7;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lhk;->e:Lgv7;

    .line 41
    .line 42
    new-instance p1, Lek;

    .line 43
    .line 44
    invoke-direct {p1, p0, p3}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lgv7;

    .line 48
    .line 49
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lhk;->f:Lgv7;

    .line 53
    .line 54
    new-instance p1, Lah;

    .line 55
    .line 56
    invoke-direct {p1, p0, p2}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lgv7;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lhk;->k:Lgv7;

    .line 65
    .line 66
    new-instance p1, Lbh;

    .line 67
    .line 68
    const/4 v0, 0x2

    .line 69
    invoke-direct {p1, p0, v0}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lgv7;

    .line 73
    .line 74
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lhk;->n:Lgv7;

    .line 78
    .line 79
    new-instance p1, Ld76;

    .line 80
    .line 81
    invoke-direct {p1, p0, p2}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lgv7;

    .line 85
    .line 86
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lhk;->p:Lgv7;

    .line 90
    .line 91
    new-instance p1, Lkf;

    .line 92
    .line 93
    invoke-direct {p1, p0, p2}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Lgv7;

    .line 97
    .line 98
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lhk;->q:Lgv7;

    .line 102
    .line 103
    new-instance p1, Llf;

    .line 104
    .line 105
    invoke-direct {p1, p0, p2}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Lgv7;

    .line 109
    .line 110
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Lhk;->r:Lgv7;

    .line 114
    .line 115
    new-instance p1, Lej;

    .line 116
    .line 117
    invoke-direct {p1, p0, p2}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 118
    .line 119
    .line 120
    new-instance v0, Lgv7;

    .line 121
    .line 122
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lhk;->t:Lgv7;

    .line 126
    .line 127
    new-instance p1, Lfj;

    .line 128
    .line 129
    invoke-direct {p1, p0, p2}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 130
    .line 131
    .line 132
    new-instance p2, Lgv7;

    .line 133
    .line 134
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 135
    .line 136
    .line 137
    iput-object p2, p0, Lhk;->x:Lgv7;

    .line 138
    .line 139
    new-instance p1, Lak;

    .line 140
    .line 141
    invoke-direct {p1, p0, p3}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 142
    .line 143
    .line 144
    new-instance p2, Lgv7;

    .line 145
    .line 146
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 147
    .line 148
    .line 149
    iput-object p2, p0, Lhk;->y:Lgv7;

    .line 150
    .line 151
    new-instance p1, Lbk;

    .line 152
    .line 153
    invoke-direct {p1, p0, p3}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 154
    .line 155
    .line 156
    new-instance p2, Lgv7;

    .line 157
    .line 158
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 159
    .line 160
    .line 161
    iput-object p2, p0, Lhk;->G:Lgv7;

    .line 162
    .line 163
    new-instance p1, Lck;

    .line 164
    .line 165
    invoke-direct {p1, p0, p3}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 166
    .line 167
    .line 168
    new-instance p2, Lgv7;

    .line 169
    .line 170
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 171
    .line 172
    .line 173
    iput-object p2, p0, Lhk;->H:Lgv7;

    .line 174
    .line 175
    return-void
.end method


# virtual methods
.method public final B()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lhk;->t:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq63;

    .line 8
    .line 9
    return-object p0
.end method

.method public final C()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lhk;->f:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq63;

    .line 8
    .line 9
    return-object p0
.end method

.method public final D()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lhk;->c()Lq63;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lhk;->C()Lq63;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lhk;->z()Lq63;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lhk;->g()Lq63;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0}, Lhk;->n()Lq63;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {p0}, Lhk;->m()Lq63;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {p0}, Lhk;->q()Lq63;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {p0}, Lhk;->B()Lq63;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    filled-new-array/range {v0 .. v7}, [Lq63;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-wide/16 v0, 0x0

    .line 46
    .line 47
    move-wide v2, v0

    .line 48
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lq63;

    .line 59
    .line 60
    invoke-virtual {v4}, Lq63;->j()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_0

    .line 65
    .line 66
    invoke-virtual {v4}, Lq63;->A()J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    cmp-long v6, v4, v0

    .line 71
    .line 72
    if-gez v6, :cond_1

    .line 73
    .line 74
    :cond_0
    move-wide v4, v0

    .line 75
    :cond_1
    add-long/2addr v2, v4

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    return-wide v2
.end method

.method public final E()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lhk;->v()Lq63;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq63;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Lhk;->c()Lq63;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lhk;->g()Lq63;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lhk;->n()Lq63;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0}, Lhk;->m()Lq63;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p0}, Lhk;->q()Lq63;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    filled-new-array {v0, v1, v2, v3, p0}, [Lq63;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lq63;

    .line 61
    .line 62
    invoke-virtual {v0}, Lq63;->j()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    const/4 p0, 0x1

    .line 69
    return p0

    .line 70
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 71
    return p0
.end method

.method public final c()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lhk;->e:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq63;

    .line 8
    .line 9
    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final e()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lhk;->d:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq63;

    .line 8
    .line 9
    return-object p0
.end method

.method public final g()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lhk;->n:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq63;

    .line 8
    .line 9
    return-object p0
.end method

.method public final l()J
    .locals 2

    .line 1
    iget-object p0, p0, Lhk;->y:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final m()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lhk;->q:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq63;

    .line 8
    .line 9
    return-object p0
.end method

.method public final n()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lhk;->p:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq63;

    .line 8
    .line 9
    return-object p0
.end method

.method public final q()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lhk;->r:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq63;

    .line 8
    .line 9
    return-object p0
.end method

.method public final u()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lhk;->v()Lq63;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq63;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lhk;->v()Lq63;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lcu;->b(Lq63;)Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public final v()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lhk;->x:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq63;

    .line 8
    .line 9
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lhk;->a:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lhk;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean p0, p0, Lhk;->c:Z

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final z()Lq63;
    .locals 0

    .line 1
    iget-object p0, p0, Lhk;->k:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq63;

    .line 8
    .line 9
    return-object p0
.end method
