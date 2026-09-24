.class public final Ljd0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lq63;Lq63;Ljava/lang/String;Liu;Lf27;[CLjava/util/List;Liz6;Lbt3;Lh07;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Ljd0;->b:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p2, p0, Ljd0;->c:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p3, p0, Ljd0;->a:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p4, p0, Ljd0;->d:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p5, p0, Ljd0;->e:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object p6, p0, Ljd0;->f:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object p7, p0, Ljd0;->k:Ljava/lang/Object;

    .line 29
    .line 30
    iput-object p8, p0, Ljd0;->n:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object p9, p0, Ljd0;->p:Ljava/lang/Object;

    .line 33
    .line 34
    iput-object p10, p0, Ljd0;->q:Ljava/lang/Object;

    .line 35
    .line 36
    return-void
.end method

.method public synthetic constructor <init>(Lq63;Lq63;Ljava/lang/String;Liu;Lf27;[CLjava/util/List;Liz6;Lbt3;Lqo6;I)V
    .locals 2

    and-int/lit8 v0, p11, 0x40

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p7, v1

    :cond_0
    and-int/lit16 v0, p11, 0x100

    if-eqz v0, :cond_1

    .line 37
    new-instance p9, Lb7;

    const/4 v0, 0x3

    invoke-direct {p9, v0}, Lb7;-><init>(I)V

    :cond_1
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_2

    move-object p10, v1

    .line 38
    :cond_2
    invoke-direct/range {p0 .. p10}, Ljd0;-><init>(Lq63;Lq63;Ljava/lang/String;Liu;Lf27;[CLjava/util/List;Liz6;Lbt3;Lh07;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ljd0;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "Property \"autoMetadata\" has not been set"

    .line 12
    .line 13
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public b()Lkd0;
    .locals 15

    .line 1
    iget-object v0, p0, Ljd0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, " transportName"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    :goto_0
    iget-object v1, p0, Ljd0;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lxv2;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v1, " encodedPayload"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    iget-object v1, p0, Ljd0;->f:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Ljava/lang/Long;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    const-string v1, " eventMillis"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_2
    iget-object v1, p0, Ljd0;->k:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ljava/lang/Long;

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    const-string v1, " uptimeMillis"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_3
    iget-object v1, p0, Ljd0;->n:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Ljava/util/HashMap;

    .line 51
    .line 52
    if-nez v1, :cond_4

    .line 53
    .line 54
    const-string v1, " autoMetadata"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    new-instance v2, Lkd0;

    .line 67
    .line 68
    iget-object v0, p0, Ljd0;->a:Ljava/lang/Object;

    .line 69
    .line 70
    move-object v3, v0

    .line 71
    check-cast v3, Ljava/lang/String;

    .line 72
    .line 73
    iget-object v0, p0, Ljd0;->c:Ljava/lang/Object;

    .line 74
    .line 75
    move-object v4, v0

    .line 76
    check-cast v4, Ljava/lang/Integer;

    .line 77
    .line 78
    iget-object v0, p0, Ljd0;->e:Ljava/lang/Object;

    .line 79
    .line 80
    move-object v5, v0

    .line 81
    check-cast v5, Lxv2;

    .line 82
    .line 83
    iget-object v0, p0, Ljd0;->f:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Ljava/lang/Long;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    iget-object v0, p0, Ljd0;->k:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Ljava/lang/Long;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v8

    .line 99
    iget-object v0, p0, Ljd0;->n:Ljava/lang/Object;

    .line 100
    .line 101
    move-object v10, v0

    .line 102
    check-cast v10, Ljava/util/HashMap;

    .line 103
    .line 104
    iget-object v0, p0, Ljd0;->d:Ljava/lang/Object;

    .line 105
    .line 106
    move-object v11, v0

    .line 107
    check-cast v11, Ljava/lang/Integer;

    .line 108
    .line 109
    iget-object v0, p0, Ljd0;->b:Ljava/lang/Object;

    .line 110
    .line 111
    move-object v12, v0

    .line 112
    check-cast v12, Ljava/lang/String;

    .line 113
    .line 114
    iget-object v0, p0, Ljd0;->p:Ljava/lang/Object;

    .line 115
    .line 116
    move-object v13, v0

    .line 117
    check-cast v13, [B

    .line 118
    .line 119
    iget-object p0, p0, Ljd0;->q:Ljava/lang/Object;

    .line 120
    .line 121
    move-object v14, p0

    .line 122
    check-cast v14, [B

    .line 123
    .line 124
    invoke-direct/range {v2 .. v14}, Lkd0;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lxv2;JJLjava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;[B[B)V

    .line 125
    .line 126
    .line 127
    return-object v2

    .line 128
    :cond_5
    const-string p0, "Missing required properties:"

    .line 129
    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const/4 p0, 0x0

    .line 138
    return-object p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Ljd0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/listitem/ListItemLayout;

    .line 4
    .line 5
    return-object p0
.end method
