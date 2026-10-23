.class public final Lyr1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ln59;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lke;Ln59;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lua9;Lyf1;Lb69;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lyr1;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p3, p0, Lyr1;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lyr1;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lyr1;->d:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p6, p0, Lyr1;->e:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p7, p0, Lyr1;->f:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p8, p0, Lyr1;->k:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lub;Lyu1;Lyu1;Llf2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lyr1;->f:Ljava/lang/Object;

    .line 21
    iput-object p2, p0, Lyr1;->d:Ljava/lang/Object;

    .line 22
    iput-object p3, p0, Lyr1;->e:Ljava/lang/Object;

    .line 23
    iput-object p4, p0, Lyr1;->c:Ljava/lang/Object;

    .line 24
    iput-object p5, p0, Lyr1;->a:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lyr1;->b:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lyr1;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public h(Lf59;)V
    .locals 5

    .line 1
    check-cast p1, Lw59;

    .line 2
    .line 3
    iget-object p1, p1, Lw59;->a:Lln5;

    .line 4
    .line 5
    iget-object p1, p1, Lln5;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    if-eqz p1, :cond_5

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lx59;

    .line 24
    .line 25
    iget-object v1, p1, Lx59;->f:Lnh;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, v1, Lnh;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Ljava/util/List;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    :goto_0
    if-eqz v1, :cond_4

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_4

    .line 42
    .line 43
    iget-object v2, p0, Lyr1;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iget-object v4, p0, Lyr1;->b:Ljava/lang/String;

    .line 50
    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-ge v0, v3, :cond_4

    .line 58
    .line 59
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Ld69;

    .line 64
    .line 65
    iget-object v3, v3, Ld69;->d:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ld69;

    .line 78
    .line 79
    iput-object v4, v0, Ld69;->e:Ljava/lang/String;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ld69;

    .line 90
    .line 91
    iput-object v4, v0, Ld69;->e:Ljava/lang/String;

    .line 92
    .line 93
    :cond_4
    :goto_2
    iget-object v0, p0, Lyr1;->d:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput-boolean v0, p1, Lx59;->j:Z

    .line 102
    .line 103
    iget-object v0, p0, Lyr1;->e:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Lua9;

    .line 106
    .line 107
    iput-object v0, p1, Lx59;->k:Lua9;

    .line 108
    .line 109
    iget-object v0, p0, Lyr1;->f:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Lyf1;

    .line 112
    .line 113
    iget-object p0, p0, Lyr1;->k:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p0, Lb69;

    .line 116
    .line 117
    invoke-virtual {v0, p0, p1}, Lyf1;->i(Lb69;Lx59;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_5
    :goto_3
    iget-object p0, p0, Lyr1;->c:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p0, Ln59;

    .line 124
    .line 125
    const-string p1, "No users."

    .line 126
    .line 127
    invoke-interface {p0, p1}, Ln59;->zza(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public zza(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lyr1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ln59;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ln59;->zza(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
