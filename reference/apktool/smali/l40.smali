.class public final Ll40;
.super Ljava/lang/Object;

# interfaces
.implements Lwi7;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 87
    iput p1, p0, Ll40;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbx5;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Ll40;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, Lbx5;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v1, p1, Lbx5;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    sget-object v2, Lun2;->p:Ljava/util/LinkedHashSet;

    .line 16
    .line 17
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Class;

    .line 40
    .line 41
    sget-object v3, Lun2;->q:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iput-object v2, p0, Ll40;->b:Ljava/lang/Object;

    .line 52
    .line 53
    new-instance v0, Lfo8;

    .line 54
    .line 55
    const/16 v1, 0xa

    .line 56
    .line 57
    invoke-direct {v0, v1}, Lfo8;-><init>(I)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Ll40;->d:Ljava/lang/Object;

    .line 61
    .line 62
    iget-object v0, p1, Lbx5;->c:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Ljava/util/ArrayList;

    .line 65
    .line 66
    iput-object v0, p0, Ll40;->e:Ljava/lang/Object;

    .line 67
    .line 68
    iget-object p1, p1, Lbx5;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Ljava/util/ArrayList;

    .line 71
    .line 72
    iput-object p1, p0, Ll40;->c:Ljava/lang/Object;

    .line 73
    .line 74
    new-instance p0, Lla;

    .line 75
    .line 76
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 77
    .line 78
    invoke-direct {p0, p1, v0}, Lla;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Lic4;

    .line 82
    .line 83
    invoke-direct {p1, p0}, Lic4;-><init>(Lla;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll40;->a:I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll40;->b:Ljava/lang/Object;

    .line 89
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ll40;->c:Ljava/lang/Object;

    .line 90
    new-instance p1, Lwf2;

    invoke-direct {p1, p0}, Lwf2;-><init>(Ll40;)V

    iput-object p1, p0, Ll40;->d:Ljava/lang/Object;

    .line 91
    new-instance p1, Lvf2;

    invoke-direct {p1, p0}, Lvf2;-><init>(Ll40;)V

    iput-object p1, p0, Ll40;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([I[J[I[I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Ll40;->a:I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Ll40;->b:Ljava/lang/Object;

    .line 94
    iput-object p2, p0, Ll40;->c:Ljava/lang/Object;

    .line 95
    iput-object p3, p0, Ll40;->d:Ljava/lang/Object;

    .line 96
    iput-object p4, p0, Ll40;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lnh7;
    .locals 0

    .line 1
    iget-object p0, p0, Ll40;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lvf2;

    .line 4
    .line 5
    return-object p0
.end method

.method public b()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Ll40;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lk40;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    const/16 v3, 0x8

    .line 9
    .line 10
    if-ge v2, v3, :cond_0

    .line 11
    .line 12
    mul-int/lit8 v3, v2, 0x10

    .line 13
    .line 14
    add-int/lit8 v4, v3, 0x1

    .line 15
    .line 16
    add-int/lit8 v5, v3, 0x2

    .line 17
    .line 18
    add-int/lit8 v6, v3, 0x3

    .line 19
    .line 20
    add-int/lit8 v7, v3, 0x4

    .line 21
    .line 22
    add-int/lit8 v8, v3, 0x5

    .line 23
    .line 24
    add-int/lit8 v9, v3, 0x6

    .line 25
    .line 26
    add-int/lit8 v10, v3, 0x7

    .line 27
    .line 28
    add-int/lit8 v11, v3, 0x8

    .line 29
    .line 30
    add-int/lit8 v12, v3, 0x9

    .line 31
    .line 32
    add-int/lit8 v13, v3, 0xa

    .line 33
    .line 34
    add-int/lit8 v14, v3, 0xb

    .line 35
    .line 36
    add-int/lit8 v15, v3, 0xc

    .line 37
    .line 38
    add-int/lit8 v1, v3, 0xd

    .line 39
    .line 40
    move/from16 v16, v2

    .line 41
    .line 42
    add-int/lit8 v2, v3, 0xe

    .line 43
    .line 44
    move/from16 v17, v6

    .line 45
    .line 46
    add-int/lit8 v6, v3, 0xf

    .line 47
    .line 48
    move/from16 v18, v6

    .line 49
    .line 50
    iget-object v6, v0, Lk40;->a:[J

    .line 51
    .line 52
    invoke-static {v6, v3, v7, v11, v15}, Lm40;->a([JIIII)V

    .line 53
    .line 54
    .line 55
    invoke-static {v6, v4, v8, v12, v1}, Lm40;->a([JIIII)V

    .line 56
    .line 57
    .line 58
    invoke-static {v6, v5, v9, v13, v2}, Lm40;->a([JIIII)V

    .line 59
    .line 60
    .line 61
    move-object/from16 v19, v0

    .line 62
    .line 63
    move/from16 v0, v17

    .line 64
    .line 65
    move/from16 v17, v2

    .line 66
    .line 67
    move/from16 v2, v18

    .line 68
    .line 69
    invoke-static {v6, v0, v10, v14, v2}, Lm40;->a([JIIII)V

    .line 70
    .line 71
    .line 72
    invoke-static {v6, v3, v8, v13, v2}, Lm40;->a([JIIII)V

    .line 73
    .line 74
    .line 75
    invoke-static {v6, v4, v9, v14, v15}, Lm40;->a([JIIII)V

    .line 76
    .line 77
    .line 78
    invoke-static {v6, v5, v10, v11, v1}, Lm40;->a([JIIII)V

    .line 79
    .line 80
    .line 81
    move/from16 v3, v17

    .line 82
    .line 83
    invoke-static {v6, v0, v7, v12, v3}, Lm40;->a([JIIII)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v2, v16, 0x1

    .line 87
    .line 88
    move-object/from16 v0, v19

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move-object/from16 v19, v0

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    :goto_1
    if-ge v1, v3, :cond_1

    .line 95
    .line 96
    mul-int/lit8 v0, v1, 0x2

    .line 97
    .line 98
    add-int/lit8 v2, v0, 0x1

    .line 99
    .line 100
    add-int/lit8 v4, v0, 0x10

    .line 101
    .line 102
    add-int/lit8 v5, v0, 0x11

    .line 103
    .line 104
    add-int/lit8 v6, v0, 0x20

    .line 105
    .line 106
    add-int/lit8 v7, v0, 0x21

    .line 107
    .line 108
    add-int/lit8 v8, v0, 0x30

    .line 109
    .line 110
    add-int/lit8 v9, v0, 0x31

    .line 111
    .line 112
    add-int/lit8 v10, v0, 0x40

    .line 113
    .line 114
    add-int/lit8 v11, v0, 0x41

    .line 115
    .line 116
    add-int/lit8 v12, v0, 0x50

    .line 117
    .line 118
    add-int/lit8 v13, v0, 0x51

    .line 119
    .line 120
    add-int/lit8 v14, v0, 0x60

    .line 121
    .line 122
    add-int/lit8 v15, v0, 0x61

    .line 123
    .line 124
    add-int/lit8 v3, v0, 0x70

    .line 125
    .line 126
    move/from16 v16, v1

    .line 127
    .line 128
    add-int/lit8 v1, v0, 0x71

    .line 129
    .line 130
    move/from16 v17, v1

    .line 131
    .line 132
    move/from16 v18, v5

    .line 133
    .line 134
    move-object/from16 v1, v19

    .line 135
    .line 136
    iget-object v5, v1, Lk40;->a:[J

    .line 137
    .line 138
    invoke-static {v5, v0, v6, v10, v14}, Lm40;->a([JIIII)V

    .line 139
    .line 140
    .line 141
    invoke-static {v5, v2, v7, v11, v15}, Lm40;->a([JIIII)V

    .line 142
    .line 143
    .line 144
    invoke-static {v5, v4, v8, v12, v3}, Lm40;->a([JIIII)V

    .line 145
    .line 146
    .line 147
    move/from16 v19, v17

    .line 148
    .line 149
    move/from16 v17, v3

    .line 150
    .line 151
    move/from16 v3, v19

    .line 152
    .line 153
    move-object/from16 v19, v1

    .line 154
    .line 155
    move/from16 v1, v18

    .line 156
    .line 157
    invoke-static {v5, v1, v9, v13, v3}, Lm40;->a([JIIII)V

    .line 158
    .line 159
    .line 160
    invoke-static {v5, v0, v7, v12, v3}, Lm40;->a([JIIII)V

    .line 161
    .line 162
    .line 163
    invoke-static {v5, v2, v8, v13, v14}, Lm40;->a([JIIII)V

    .line 164
    .line 165
    .line 166
    invoke-static {v5, v4, v9, v10, v15}, Lm40;->a([JIIII)V

    .line 167
    .line 168
    .line 169
    move/from16 v0, v17

    .line 170
    .line 171
    invoke-static {v5, v1, v6, v11, v0}, Lm40;->a([JIIII)V

    .line 172
    .line 173
    .line 174
    add-int/lit8 v1, v16, 0x1

    .line 175
    .line 176
    const/16 v3, 0x8

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_1
    return-void
.end method

.method public c()Llq9;
    .locals 4

    .line 1
    iget-object v0, p0, Ll40;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljq9;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v2, p0, Ll40;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Lhq9;

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    iget-object v3, p0, Ll40;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Lgq9;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Ll40;->e:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Liq9;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    new-instance v1, Llq9;

    .line 27
    .line 28
    invoke-direct {v1, v0, v2, v3, p0}, Llq9;-><init>(Ljq9;Lhq9;Lgq9;Liq9;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    const-string p0, "HPKE variant is not set"

    .line 33
    .line 34
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_1
    const-string p0, "HPKE AEAD parameter is not set"

    .line 39
    .line 40
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_2
    const-string p0, "HPKE KDF parameter is not set"

    .line 45
    .line 46
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_3
    const-string p0, "HPKE KEM parameter is not set"

    .line 51
    .line 52
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v1
.end method

.method public cancel()V
    .locals 0

    .line 1
    iget-object p0, p0, Ll40;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/net/Socket;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getSource()Lij7;
    .locals 0

    .line 1
    iget-object p0, p0, Ll40;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lwf2;

    .line 4
    .line 5
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ll40;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "StreamMap with indices of "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ll40;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, [I

    .line 21
    .line 22
    array-length v1, v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " folders, offsets of "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Ll40;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, [J

    .line 34
    .line 35
    array-length v1, v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, " packed streams, first files of "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Ll40;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, [I

    .line 47
    .line 48
    array-length v1, v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " folders and folder indices for "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Ll40;->e:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, [I

    .line 60
    .line 61
    array-length p0, p0

    .line 62
    const-string v1, " files"

    .line 63
    .line 64
    invoke-static {v0, p0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :pswitch_2
    iget-object p0, p0, Ll40;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Ljava/net/Socket;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/net/Socket;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
