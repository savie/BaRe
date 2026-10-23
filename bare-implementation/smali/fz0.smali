.class public Lfz0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Luq4;


# instance fields
.field public final a:Ljava/lang/annotation/Annotation;

.field public final b:Ls03;

.field public final c:Lxd2;

.field public final d:Lau1;

.field public final e:[Ljava/lang/String;

.field public final f:[Ljava/lang/String;

.field public final g:Ljava/lang/Class;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Luq4;

.field public final m:Ljava/lang/Object;

.field public final n:Lvb8;

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Z


# direct methods
.method public constructor <init>(Luq4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Luq4;->c()Ljava/lang/annotation/Annotation;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lfz0;->a:Ljava/lang/annotation/Annotation;

    .line 9
    .line 10
    invoke-interface {p1}, Luq4;->f()Ls03;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lfz0;->b:Ls03;

    .line 15
    .line 16
    invoke-interface {p1}, Luq4;->e()Lxd2;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lfz0;->c:Lxd2;

    .line 21
    .line 22
    invoke-interface {p1}, Luq4;->h()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lfz0;->r:Z

    .line 27
    .line 28
    invoke-interface {p1}, Luq4;->i()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, p0, Lfz0;->t:Z

    .line 33
    .line 34
    invoke-interface {p1}, Luq4;->k()Lau1;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lfz0;->d:Lau1;

    .line 39
    .line 40
    invoke-interface {p1}, Luq4;->b()Lvb8;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lfz0;->n:Lvb8;

    .line 45
    .line 46
    invoke-interface {p1}, Luq4;->isRequired()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput-boolean v0, p0, Lfz0;->s:Z

    .line 51
    .line 52
    invoke-interface {p1}, Luq4;->d()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lfz0;->j:Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {p1}, Luq4;->p()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput-boolean v0, p0, Lfz0;->v:Z

    .line 63
    .line 64
    invoke-interface {p1}, Luq4;->isInline()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput-boolean v0, p0, Lfz0;->u:Z

    .line 69
    .line 70
    invoke-interface {p1}, Luq4;->s()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput-boolean v0, p0, Lfz0;->q:Z

    .line 75
    .line 76
    invoke-interface {p1}, Luq4;->g()[Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lfz0;->e:[Ljava/lang/String;

    .line 81
    .line 82
    invoke-interface {p1}, Luq4;->m()[Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lfz0;->f:[Ljava/lang/String;

    .line 87
    .line 88
    invoke-interface {p1}, Luq4;->a()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lfz0;->i:Ljava/lang/String;

    .line 93
    .line 94
    invoke-interface {p1}, Luq4;->getType()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lfz0;->g:Ljava/lang/Class;

    .line 99
    .line 100
    invoke-interface {p1}, Luq4;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lfz0;->k:Ljava/lang/String;

    .line 105
    .line 106
    invoke-interface {p1}, Luq4;->r()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Lfz0;->h:Ljava/lang/String;

    .line 111
    .line 112
    invoke-interface {p1}, Luq4;->t()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iput-boolean v0, p0, Lfz0;->o:Z

    .line 117
    .line 118
    invoke-interface {p1}, Luq4;->j()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput-boolean v0, p0, Lfz0;->p:Z

    .line 123
    .line 124
    invoke-interface {p1}, Luq4;->getKey()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Lfz0;->m:Ljava/lang/Object;

    .line 129
    .line 130
    iput-object p1, p0, Lfz0;->l:Luq4;

    .line 131
    .line 132
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Lvb8;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->n:Lvb8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->a:Ljava/lang/annotation/Annotation;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()Lxd2;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->c:Lxd2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Ls03;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->b:Ls03;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->e:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->m:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->g:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfz0;->r:Z

    .line 2
    .line 3
    return p0
.end method

.method public final i()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfz0;->t:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isInline()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfz0;->u:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isRequired()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfz0;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method public final j()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfz0;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method public final k()Lau1;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->d:Lau1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final l(Ljava/lang/Class;)Lvb8;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->l:Luq4;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Luq4;->l(Ljava/lang/Class;)Lvb8;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final m()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->f:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final n(Ljava/lang/Class;)Luq4;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->l:Luq4;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Luq4;->n(Ljava/lang/Class;)Luq4;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final o(Lai5;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->l:Luq4;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Luq4;->o(Lai5;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final p()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfz0;->v:Z

    .line 2
    .line 3
    return p0
.end method

.method public final q(Lai5;)Lbw1;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->l:Luq4;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Luq4;->q(Lai5;)Lbw1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final s()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfz0;->q:Z

    .line 2
    .line 3
    return p0
.end method

.method public final t()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfz0;->o:Z

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfz0;->l:Luq4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
