.class public abstract Ltu0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:Lhx0;

.field public static final h:[B

.field public static final i:Lma2;

.field public static j:Z = false

.field public static k:Ljava/lang/reflect/Method; = null

.field public static l:Z = false

.field public static m:Ljava/lang/reflect/Field;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Ltu0;->a:[I

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Ltu0;->b:[I

    .line 18
    .line 19
    const/16 v0, 0xe

    .line 20
    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    fill-array-data v0, :array_2

    .line 24
    .line 25
    .line 26
    sput-object v0, Ltu0;->c:[I

    .line 27
    .line 28
    const v0, 0x1010003

    .line 29
    .line 30
    .line 31
    const v1, 0x1010405

    .line 32
    .line 33
    .line 34
    const v2, 0x101051e

    .line 35
    .line 36
    .line 37
    filled-new-array {v0, v1, v2}, [I

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sput-object v1, Ltu0;->d:[I

    .line 42
    .line 43
    const v1, 0x1010199

    .line 44
    .line 45
    .line 46
    filled-new-array {v1}, [I

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sput-object v1, Ltu0;->e:[I

    .line 51
    .line 52
    const v1, 0x10101cd

    .line 53
    .line 54
    .line 55
    filled-new-array {v0, v1}, [I

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Ltu0;->f:[I

    .line 60
    .line 61
    new-instance v0, Lhx0;

    .line 62
    .line 63
    const/4 v1, 0x6

    .line 64
    invoke-direct {v0, v1}, Lhx0;-><init>(I)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Ltu0;->g:Lhx0;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    new-array v0, v0, [B

    .line 71
    .line 72
    sput-object v0, Ltu0;->h:[B

    .line 73
    .line 74
    new-instance v0, Lma2;

    .line 75
    .line 76
    const/16 v1, 0x17

    .line 77
    .line 78
    invoke-direct {v0, v1}, Lma2;-><init>(I)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Ltu0;->i:Lma2;

    .line 82
    .line 83
    return-void

    .line 84
    nop

    .line 85
    :array_0
    .array-data 4
        0x1010003
        0x1010121
        0x1010155
        0x1010159
        0x101031f
        0x10103ea
        0x10103fb
        0x1010402
        0x1010403
    .end array-data

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_1
    .array-data 4
        0x1010003
        0x10101b5
        0x10101b6
        0x1010324
        0x1010325
        0x1010326
        0x101045a
        0x101045b
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_2
    .array-data 4
        0x1010003
        0x1010404
        0x1010405
        0x1010406
        0x1010407
        0x1010408
        0x1010409
        0x101040a
        0x101040b
        0x101040c
        0x101040d
        0x10104cb
        0x10104cc
        0x101051e
    .end array-data
.end method

.method public static A([JJ)Lqy6;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/16 v2, 0x9

    .line 5
    .line 6
    if-lt v1, v2, :cond_0

    .line 7
    .line 8
    new-instance v3, Lqy6;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget-wide v4, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    aget-wide v6, v0, v1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    aget-wide v8, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    aget-wide v10, v0, v1

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    aget-wide v12, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    aget-wide v14, v0, v1

    .line 27
    .line 28
    const/4 v1, 0x6

    .line 29
    aget-wide v16, v0, v1

    .line 30
    .line 31
    const/4 v1, 0x7

    .line 32
    aget-wide v18, v0, v1

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    aget-wide v20, v0, v1

    .line 37
    .line 38
    move-wide/from16 v22, p1

    .line 39
    .line 40
    invoke-direct/range {v3 .. v23}, Lqy6;-><init>(JJJJJJJJJJ)V

    .line 41
    .line 42
    .line 43
    return-object v3

    .line 44
    :cond_0
    array-length v0, v0

    .line 45
    const-string v1, "Invalid native SBA create result length: "

    .line 46
    .line 47
    invoke-static {v0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    return-object v0
.end method

.method public static B(Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;)Lz17;
    .locals 13

    .line 1
    new-instance v0, Lz17;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getEntryType()Lb27;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lb27;->Directory:Lb27;

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    new-array v2, v2, [C

    .line 17
    .line 18
    const/16 v3, 0x2f

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-char v3, v2, v4

    .line 22
    .line 23
    invoke-static {v1, v2}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getEntryType()Lb27;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget-object v3, Ldy6;->a:[I

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    aget v2, v3, v2

    .line 43
    .line 44
    packed-switch v2, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lq;->j()V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :pswitch_0
    sget-object v2, Lc27;->Other:Lc27;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_1
    sget-object v2, Lc27;->BlockDevice:Lc27;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_2
    sget-object v2, Lc27;->CharacterDevice:Lc27;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_3
    sget-object v2, Lc27;->Fifo:Lc27;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :pswitch_4
    sget-object v2, Lc27;->Hardlink:Lc27;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :pswitch_5
    sget-object v2, Lc27;->SymbolicLink:Lc27;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :pswitch_6
    sget-object v2, Lc27;->Directory:Lc27;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :pswitch_7
    sget-object v2, Lc27;->File:Lc27;

    .line 74
    .line 75
    :goto_1
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getLinkName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getMode()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getSize()J

    .line 84
    .line 85
    .line 86
    move-result-wide v5

    .line 87
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getRealSize()J

    .line 88
    .line 89
    .line 90
    move-result-wide v7

    .line 91
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getMtimeMs()J

    .line 92
    .line 93
    .line 94
    move-result-wide v9

    .line 95
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getSparse()Z

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getXattrNames()[Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {p0}, Lx50;->z0([Ljava/lang/Object;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    invoke-direct/range {v0 .. v12}, Lz17;-><init>(Ljava/lang/String;Lc27;Ljava/lang/String;IJJJZLjava/util/List;)V

    .line 108
    .line 109
    .line 110
    return-object v0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static C(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {v0, p0, v0}, Ldj7;->q(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_7

    .line 12
    .line 13
    const-string v1, "/"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {p0, v1, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_6

    .line 21
    .line 22
    const-string v1, "\\"

    .line 23
    .line 24
    invoke-static {p0, v1, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_6

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v3, 0x2

    .line 35
    if-lt v1, v3, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/16 v3, 0x3a

    .line 43
    .line 44
    if-ne v1, v3, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_6

    .line 55
    .line 56
    :cond_0
    const/16 v1, 0x2f

    .line 57
    .line 58
    invoke-static {p0, v1}, Lnq7;->a0(Ljava/lang/CharSequence;C)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const-string v3, "Nested APKS archive entry is not allowed: "

    .line 63
    .line 64
    if-nez v1, :cond_5

    .line 65
    .line 66
    const/16 v1, 0x5c

    .line 67
    .line 68
    invoke-static {p0, v1}, Lnq7;->a0(Ljava/lang/CharSequence;C)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    const-string v1, ".."

    .line 75
    .line 76
    invoke-static {p0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_3

    .line 81
    .line 82
    const-string v1, ".apk"

    .line 83
    .line 84
    invoke-static {v0, v1, v2}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_2

    .line 89
    .line 90
    invoke-static {v0}, Ltu0;->n(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_2

    .line 95
    .line 96
    const-string v1, "icon.png"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "Unsupported APKS archive entry: "

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    :goto_0
    return-void

    .line 115
    :cond_3
    const-string v0, "Unsafe APKS archive entry is not allowed: "

    .line 116
    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_4
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_5
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_6
    const-string v0, "Absolute APKS archive entry is not allowed: "

    .line 142
    .line 143
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_7
    const-string p0, "Blank APKS archive entry"

    .line 152
    .line 153
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public static final D(JLqt3;Lkv1;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lh48;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, p3}, Lh48;-><init>(JLkv1;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, v0, Lw57;->f:Ljv1;

    .line 13
    .line 14
    invoke-interface {p0}, Ljv1;->getContext()Lox1;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lyc9;->u(Lox1;)Lqg2;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-wide v1, v0, Lh48;->k:J

    .line 23
    .line 24
    iget-object p1, v0, Lo3;->e:Lox1;

    .line 25
    .line 26
    invoke-interface {p0, v1, v2, v0, p1}, Lqg2;->b(JLh48;Lox1;)Lin2;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance p1, Lkn2;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lkn2;-><init>(Lin2;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    invoke-static {v0, p0, p1}, Lsz8;->G(Loh4;ZLsh4;)Lin2;

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    invoke-static {v0, p0, v0, p2}, Lxx3;->A(Lw57;ZLw57;Lqt3;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_0
    new-instance p0, Lg48;

    .line 46
    .line 47
    const-string p1, "Timed out immediately"

    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lg48;-><init>(Ljava/lang/String;Lh48;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public static E(Ljava/lang/String;)I
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/16 v4, 0x80

    .line 14
    .line 15
    if-ge v3, v4, :cond_0

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v0

    .line 21
    :goto_1
    if-ge v2, v0, :cond_6

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/16 v5, 0x800

    .line 28
    .line 29
    if-ge v4, v5, :cond_1

    .line 30
    .line 31
    rsub-int/lit8 v4, v4, 0x7f

    .line 32
    .line 33
    ushr-int/lit8 v4, v4, 0x1f

    .line 34
    .line 35
    add-int/2addr v3, v4

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    move v6, v1

    .line 44
    :goto_2
    if-ge v2, v4, :cond_5

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-ge v7, v5, :cond_2

    .line 51
    .line 52
    rsub-int/lit8 v7, v7, 0x7f

    .line 53
    .line 54
    ushr-int/lit8 v7, v7, 0x1f

    .line 55
    .line 56
    add-int/2addr v6, v7

    .line 57
    goto :goto_3

    .line 58
    :cond_2
    add-int/lit8 v6, v6, 0x2

    .line 59
    .line 60
    const v8, 0xd800

    .line 61
    .line 62
    .line 63
    if-gt v8, v7, :cond_4

    .line 64
    .line 65
    const v8, 0xdfff

    .line 66
    .line 67
    .line 68
    if-gt v7, v8, :cond_4

    .line 69
    .line 70
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    const/high16 v8, 0x10000

    .line 75
    .line 76
    if-lt v7, v8, :cond_3

    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    new-instance v0, Lr89;

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v3, "Unpaired surrogate at index "

    .line 86
    .line 87
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, " of "

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0
    :try_end_0
    .catch Lr89; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    add-int/2addr v3, v6

    .line 113
    goto :goto_4

    .line 114
    :catch_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    array-length p0, p0

    .line 121
    return p0

    .line 122
    :cond_6
    :goto_4
    if-lt v3, v0, :cond_7

    .line 123
    .line 124
    return v3

    .line 125
    :cond_7
    int-to-long v2, v3

    .line 126
    const-wide v4, 0x100000000L

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    add-long/2addr v2, v4

    .line 132
    const-string p0, "UTF-8 length does not fit in int: "

    .line 133
    .line 134
    invoke-static {v2, v3, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return v1
.end method

.method public static F(Ljava/lang/String;[BII)I
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int v1, p2, p3

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    const/16 v4, 0x80

    .line 10
    .line 11
    if-ge v3, v0, :cond_0

    .line 12
    .line 13
    add-int v5, v3, p2

    .line 14
    .line 15
    if-ge v5, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-ge v6, v4, :cond_0

    .line 22
    .line 23
    int-to-byte v4, v6

    .line 24
    aput-byte v4, p1, v5

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-ne v3, v0, :cond_1

    .line 30
    .line 31
    add-int/2addr p2, v0

    .line 32
    return p2

    .line 33
    :cond_1
    add-int v5, p2, v3

    .line 34
    .line 35
    :goto_1
    if-ge v3, v0, :cond_d

    .line 36
    .line 37
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-ge v6, v4, :cond_2

    .line 42
    .line 43
    if-ge v5, v1, :cond_2

    .line 44
    .line 45
    add-int/lit8 v7, v5, 0x1

    .line 46
    .line 47
    int-to-byte v6, v6

    .line 48
    aput-byte v6, p1, v5

    .line 49
    .line 50
    move v5, v7

    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_2
    const/16 v7, 0x800

    .line 54
    .line 55
    if-ge v6, v7, :cond_3

    .line 56
    .line 57
    add-int/lit8 v7, v1, -0x2

    .line 58
    .line 59
    if-gt v5, v7, :cond_3

    .line 60
    .line 61
    add-int/lit8 v7, v5, 0x1

    .line 62
    .line 63
    ushr-int/lit8 v8, v6, 0x6

    .line 64
    .line 65
    or-int/lit16 v8, v8, 0x3c0

    .line 66
    .line 67
    int-to-byte v8, v8

    .line 68
    aput-byte v8, p1, v5

    .line 69
    .line 70
    add-int/lit8 v5, v5, 0x2

    .line 71
    .line 72
    and-int/lit8 v6, v6, 0x3f

    .line 73
    .line 74
    or-int/2addr v6, v4

    .line 75
    int-to-byte v6, v6

    .line 76
    aput-byte v6, p1, v7

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const v7, 0xdfff

    .line 80
    .line 81
    .line 82
    const v8, 0xd800

    .line 83
    .line 84
    .line 85
    if-lt v6, v8, :cond_4

    .line 86
    .line 87
    if-ge v7, v6, :cond_5

    .line 88
    .line 89
    :cond_4
    add-int/lit8 v9, v1, -0x3

    .line 90
    .line 91
    if-gt v5, v9, :cond_5

    .line 92
    .line 93
    add-int/lit8 v7, v5, 0x1

    .line 94
    .line 95
    ushr-int/lit8 v8, v6, 0xc

    .line 96
    .line 97
    or-int/lit16 v8, v8, 0x1e0

    .line 98
    .line 99
    int-to-byte v8, v8

    .line 100
    aput-byte v8, p1, v5

    .line 101
    .line 102
    add-int/lit8 v8, v5, 0x2

    .line 103
    .line 104
    ushr-int/lit8 v9, v6, 0x6

    .line 105
    .line 106
    and-int/lit8 v9, v9, 0x3f

    .line 107
    .line 108
    or-int/2addr v9, v4

    .line 109
    int-to-byte v9, v9

    .line 110
    aput-byte v9, p1, v7

    .line 111
    .line 112
    add-int/lit8 v5, v5, 0x3

    .line 113
    .line 114
    and-int/lit8 v6, v6, 0x3f

    .line 115
    .line 116
    or-int/2addr v6, v4

    .line 117
    int-to-byte v6, v6

    .line 118
    aput-byte v6, p1, v8

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_5
    add-int/lit8 v9, v1, -0x4

    .line 122
    .line 123
    const-string v10, "Not enough space in output buffer to encode UTF-8 string"

    .line 124
    .line 125
    if-gt v5, v9, :cond_9

    .line 126
    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-eq v3, v7, :cond_7

    .line 134
    .line 135
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    invoke-static {v6, v7}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-nez v8, :cond_6

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    invoke-static {v6, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    add-int/lit8 v7, v5, 0x1

    .line 151
    .line 152
    ushr-int/lit8 v8, v6, 0x12

    .line 153
    .line 154
    or-int/lit16 v8, v8, 0xf0

    .line 155
    .line 156
    int-to-byte v8, v8

    .line 157
    aput-byte v8, p1, v5

    .line 158
    .line 159
    add-int/lit8 v8, v5, 0x2

    .line 160
    .line 161
    ushr-int/lit8 v9, v6, 0xc

    .line 162
    .line 163
    and-int/lit8 v9, v9, 0x3f

    .line 164
    .line 165
    or-int/2addr v9, v4

    .line 166
    int-to-byte v9, v9

    .line 167
    aput-byte v9, p1, v7

    .line 168
    .line 169
    add-int/lit8 v7, v5, 0x3

    .line 170
    .line 171
    ushr-int/lit8 v9, v6, 0x6

    .line 172
    .line 173
    and-int/lit8 v9, v9, 0x3f

    .line 174
    .line 175
    or-int/2addr v9, v4

    .line 176
    int-to-byte v9, v9

    .line 177
    aput-byte v9, p1, v8

    .line 178
    .line 179
    add-int/lit8 v5, v5, 0x4

    .line 180
    .line 181
    and-int/lit8 v6, v6, 0x3f

    .line 182
    .line 183
    or-int/2addr v6, v4

    .line 184
    int-to-byte v6, v6

    .line 185
    aput-byte v6, p1, v7

    .line 186
    .line 187
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :cond_7
    :goto_3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 192
    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    array-length v0, p0

    .line 198
    sub-int/2addr v0, p2

    .line 199
    if-gt v0, p3, :cond_8

    .line 200
    .line 201
    array-length p3, p0

    .line 202
    invoke-static {p0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    .line 204
    .line 205
    array-length p0, p0

    .line 206
    :goto_4
    add-int/2addr p2, p0

    .line 207
    return p2

    .line 208
    :cond_8
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 209
    .line 210
    invoke-direct {p0, v10}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p0

    .line 214
    :cond_9
    if-gt v8, v6, :cond_c

    .line 215
    .line 216
    if-gt v6, v7, :cond_c

    .line 217
    .line 218
    add-int/lit8 v3, v3, 0x1

    .line 219
    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eq v3, v0, :cond_a

    .line 225
    .line 226
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    invoke-static {v6, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-nez v0, :cond_c

    .line 235
    .line 236
    :cond_a
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 237
    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    array-length v0, p0

    .line 243
    sub-int/2addr v0, p2

    .line 244
    if-gt v0, p3, :cond_b

    .line 245
    .line 246
    array-length p3, p0

    .line 247
    invoke-static {p0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    .line 249
    .line 250
    array-length p0, p0

    .line 251
    goto :goto_4

    .line 252
    :cond_b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 253
    .line 254
    invoke-direct {p0, v10}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw p0

    .line 258
    :cond_c
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 259
    .line 260
    invoke-direct {p0, v10}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw p0

    .line 264
    :cond_d
    return v5
.end method

.method public static G([BII)Ljava/lang/String;
    .locals 10

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    or-int v0, p1, p2

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    sub-int/2addr v1, p1

    .line 10
    sub-int/2addr v1, p2

    .line 11
    or-int/2addr v0, v1

    .line 12
    if-ltz v0, :cond_f

    .line 13
    .line 14
    add-int v0, p1, p2

    .line 15
    .line 16
    new-array p2, p2, [C

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge p1, v0, :cond_1

    .line 21
    .line 22
    aget-byte v3, p0, p1

    .line 23
    .line 24
    if-ltz v3, :cond_1

    .line 25
    .line 26
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    add-int/lit8 v4, v2, 0x1

    .line 29
    .line 30
    int-to-char v3, v3

    .line 31
    aput-char v3, p2, v2

    .line 32
    .line 33
    move v2, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    if-ge p1, v0, :cond_e

    .line 36
    .line 37
    add-int/lit8 v3, p1, 0x1

    .line 38
    .line 39
    aget-byte v4, p0, p1

    .line 40
    .line 41
    if-ltz v4, :cond_3

    .line 42
    .line 43
    add-int/lit8 p1, v2, 0x1

    .line 44
    .line 45
    int-to-char v4, v4

    .line 46
    aput-char v4, p2, v2

    .line 47
    .line 48
    :goto_2
    if-ge v3, v0, :cond_2

    .line 49
    .line 50
    aget-byte v2, p0, v3

    .line 51
    .line 52
    if-ltz v2, :cond_2

    .line 53
    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    add-int/lit8 v4, p1, 0x1

    .line 57
    .line 58
    int-to-char v2, v2

    .line 59
    aput-char v2, p2, p1

    .line 60
    .line 61
    move p1, v4

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move v2, p1

    .line 64
    move p1, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/16 v5, -0x20

    .line 67
    .line 68
    if-ge v4, v5, :cond_6

    .line 69
    .line 70
    if-ge v3, v0, :cond_5

    .line 71
    .line 72
    add-int/lit8 p1, p1, 0x2

    .line 73
    .line 74
    aget-byte v3, p0, v3

    .line 75
    .line 76
    add-int/lit8 v5, v2, 0x1

    .line 77
    .line 78
    const/16 v6, -0x3e

    .line 79
    .line 80
    if-lt v4, v6, :cond_4

    .line 81
    .line 82
    invoke-static {v3}, Lcy0;->M(B)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-nez v6, :cond_4

    .line 87
    .line 88
    and-int/lit8 v4, v4, 0x1f

    .line 89
    .line 90
    shl-int/lit8 v4, v4, 0x6

    .line 91
    .line 92
    and-int/lit8 v3, v3, 0x3f

    .line 93
    .line 94
    or-int/2addr v3, v4

    .line 95
    int-to-char v3, v3

    .line 96
    aput-char v3, p2, v2

    .line 97
    .line 98
    move v2, v5

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    invoke-static {}, Lp79;->c()Lp79;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    throw p0

    .line 105
    :cond_5
    invoke-static {}, Lp79;->c()Lp79;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    throw p0

    .line 110
    :cond_6
    const/16 v6, -0x10

    .line 111
    .line 112
    if-ge v4, v6, :cond_b

    .line 113
    .line 114
    add-int/lit8 v6, v0, -0x1

    .line 115
    .line 116
    if-ge v3, v6, :cond_a

    .line 117
    .line 118
    add-int/lit8 v6, p1, 0x2

    .line 119
    .line 120
    aget-byte v3, p0, v3

    .line 121
    .line 122
    add-int/lit8 p1, p1, 0x3

    .line 123
    .line 124
    aget-byte v6, p0, v6

    .line 125
    .line 126
    add-int/lit8 v7, v2, 0x1

    .line 127
    .line 128
    invoke-static {v3}, Lcy0;->M(B)Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-nez v8, :cond_9

    .line 133
    .line 134
    const/16 v8, -0x60

    .line 135
    .line 136
    if-ne v4, v5, :cond_7

    .line 137
    .line 138
    if-lt v3, v8, :cond_9

    .line 139
    .line 140
    :cond_7
    const/16 v5, -0x13

    .line 141
    .line 142
    if-ne v4, v5, :cond_8

    .line 143
    .line 144
    if-ge v3, v8, :cond_9

    .line 145
    .line 146
    :cond_8
    invoke-static {v6}, Lcy0;->M(B)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-nez v5, :cond_9

    .line 151
    .line 152
    and-int/lit8 v4, v4, 0xf

    .line 153
    .line 154
    shl-int/lit8 v4, v4, 0xc

    .line 155
    .line 156
    and-int/lit8 v3, v3, 0x3f

    .line 157
    .line 158
    shl-int/lit8 v3, v3, 0x6

    .line 159
    .line 160
    or-int/2addr v3, v4

    .line 161
    and-int/lit8 v4, v6, 0x3f

    .line 162
    .line 163
    or-int/2addr v3, v4

    .line 164
    int-to-char v3, v3

    .line 165
    aput-char v3, p2, v2

    .line 166
    .line 167
    move v2, v7

    .line 168
    goto/16 :goto_1

    .line 169
    .line 170
    :cond_9
    invoke-static {}, Lp79;->c()Lp79;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    throw p0

    .line 175
    :cond_a
    invoke-static {}, Lp79;->c()Lp79;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    throw p0

    .line 180
    :cond_b
    add-int/lit8 v5, v0, -0x2

    .line 181
    .line 182
    if-ge v3, v5, :cond_d

    .line 183
    .line 184
    add-int/lit8 v5, p1, 0x2

    .line 185
    .line 186
    aget-byte v3, p0, v3

    .line 187
    .line 188
    add-int/lit8 v6, p1, 0x3

    .line 189
    .line 190
    aget-byte v5, p0, v5

    .line 191
    .line 192
    add-int/lit8 p1, p1, 0x4

    .line 193
    .line 194
    aget-byte v6, p0, v6

    .line 195
    .line 196
    add-int/lit8 v7, v2, 0x1

    .line 197
    .line 198
    invoke-static {v3}, Lcy0;->M(B)Z

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    if-nez v8, :cond_c

    .line 203
    .line 204
    shl-int/lit8 v8, v4, 0x1c

    .line 205
    .line 206
    add-int/lit8 v9, v3, 0x70

    .line 207
    .line 208
    add-int/2addr v9, v8

    .line 209
    shr-int/lit8 v8, v9, 0x1e

    .line 210
    .line 211
    if-nez v8, :cond_c

    .line 212
    .line 213
    invoke-static {v5}, Lcy0;->M(B)Z

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    if-nez v8, :cond_c

    .line 218
    .line 219
    invoke-static {v6}, Lcy0;->M(B)Z

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    if-nez v8, :cond_c

    .line 224
    .line 225
    and-int/lit8 v4, v4, 0x7

    .line 226
    .line 227
    shl-int/lit8 v4, v4, 0x12

    .line 228
    .line 229
    and-int/lit8 v3, v3, 0x3f

    .line 230
    .line 231
    shl-int/lit8 v3, v3, 0xc

    .line 232
    .line 233
    or-int/2addr v3, v4

    .line 234
    and-int/lit8 v4, v5, 0x3f

    .line 235
    .line 236
    shl-int/lit8 v4, v4, 0x6

    .line 237
    .line 238
    or-int/2addr v3, v4

    .line 239
    and-int/lit8 v4, v6, 0x3f

    .line 240
    .line 241
    or-int/2addr v3, v4

    .line 242
    ushr-int/lit8 v4, v3, 0xa

    .line 243
    .line 244
    const v5, 0xd7c0

    .line 245
    .line 246
    .line 247
    add-int/2addr v4, v5

    .line 248
    int-to-char v4, v4

    .line 249
    aput-char v4, p2, v2

    .line 250
    .line 251
    and-int/lit16 v3, v3, 0x3ff

    .line 252
    .line 253
    const v4, 0xdc00

    .line 254
    .line 255
    .line 256
    add-int/2addr v3, v4

    .line 257
    int-to-char v3, v3

    .line 258
    aput-char v3, p2, v7

    .line 259
    .line 260
    add-int/lit8 v2, v2, 0x2

    .line 261
    .line 262
    goto/16 :goto_1

    .line 263
    .line 264
    :cond_c
    invoke-static {}, Lp79;->c()Lp79;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    throw p0

    .line 269
    :cond_d
    invoke-static {}, Lp79;->c()Lp79;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    throw p0

    .line 274
    :cond_e
    new-instance p0, Ljava/lang/String;

    .line 275
    .line 276
    invoke-direct {p0, p2, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 277
    .line 278
    .line 279
    return-object p0

    .line 280
    :cond_f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 281
    .line 282
    array-length p0, p0

    .line 283
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    const-string p1, "buffer length=%d, index=%d, size=%d"

    .line 300
    .line 301
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw v0
.end method

.method public static final H(Lvm9;)Lrm9;
    .locals 10

    .line 1
    const-string v0, "Unidentifiable major type: "

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lvm9;->h()Lsm9;

    .line 4
    .line 5
    .line 6
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 7
    if-eqz v1, :cond_10

    .line 8
    .line 9
    :try_start_1
    iget-byte v2, v1, Lsm9;->b:B

    .line 10
    .line 11
    iget-byte v1, v1, Lsm9;->a:B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    .line 13
    const/16 v3, -0x80

    .line 14
    .line 15
    const-wide/16 v4, 0x3e8

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    if-eq v1, v3, :cond_d

    .line 19
    .line 20
    const/16 v3, -0x60

    .line 21
    .line 22
    if-eq v1, v3, :cond_6

    .line 23
    .line 24
    const/16 v3, -0x40

    .line 25
    .line 26
    if-eq v1, v3, :cond_5

    .line 27
    .line 28
    const/16 v3, -0x20

    .line 29
    .line 30
    if-eq v1, v3, :cond_4

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const/16 v3, 0x20

    .line 35
    .line 36
    if-eq v1, v3, :cond_2

    .line 37
    .line 38
    const/16 v3, 0x40

    .line 39
    .line 40
    if-eq v1, v3, :cond_1

    .line 41
    .line 42
    const/16 v3, 0x60

    .line 43
    .line 44
    if-ne v1, v3, :cond_0

    .line 45
    .line 46
    :try_start_2
    invoke-virtual {p0, v3}, Lvm9;->q(B)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0}, Lvm9;->u()[B

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 56
    .line 57
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    .line 59
    .line 60
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    int-to-long v3, p0

    .line 65
    invoke-static {v2, v3, v4}, Ltu0;->J(BJ)V

    .line 66
    .line 67
    .line 68
    new-instance p0, Lmm9;

    .line 69
    .line 70
    invoke-direct {p0, v0}, Lmm9;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object p0

    .line 74
    :catch_0
    move-exception p0

    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :cond_0
    new-instance p0, Ldm9;

    .line 78
    .line 79
    shr-int/lit8 v1, v1, 0x5

    .line 80
    .line 81
    and-int/lit8 v1, v1, 0x7

    .line 82
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 99
    :cond_1
    :try_start_4
    invoke-virtual {p0, v3}, Lvm9;->q(B)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lvm9;->u()[B

    .line 103
    .line 104
    .line 105
    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 106
    :try_start_5
    array-length v0, p0

    .line 107
    int-to-long v3, v0

    .line 108
    invoke-static {v2, v3, v4}, Ltu0;->J(BJ)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Lam9;

    .line 112
    .line 113
    invoke-static {p0, v0}, Lwk9;->l([BI)Lwk9;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-direct {v1, p0}, Lam9;-><init>(Lwk9;)V

    .line 118
    .line 119
    .line 120
    return-object v1

    .line 121
    :cond_2
    invoke-virtual {p0}, Lvm9;->b()J

    .line 122
    .line 123
    .line 124
    move-result-wide v0

    .line 125
    const-wide/16 v3, 0x0

    .line 126
    .line 127
    cmp-long p0, v0, v3

    .line 128
    .line 129
    if-lez p0, :cond_3

    .line 130
    .line 131
    move-wide v3, v0

    .line 132
    goto :goto_0

    .line 133
    :cond_3
    not-long v3, v0

    .line 134
    :goto_0
    invoke-static {v2, v3, v4}, Ltu0;->J(BJ)V

    .line 135
    .line 136
    .line 137
    new-instance p0, Lgm9;

    .line 138
    .line 139
    invoke-direct {p0, v0, v1}, Lgm9;-><init>(J)V

    .line 140
    .line 141
    .line 142
    return-object p0

    .line 143
    :cond_4
    invoke-virtual {p0}, Lvm9;->j()Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    new-instance v0, Lxl9;

    .line 148
    .line 149
    invoke-direct {v0, p0}, Lxl9;-><init>(Z)V

    .line 150
    .line 151
    .line 152
    return-object v0

    .line 153
    :cond_5
    new-instance p0, Ldm9;

    .line 154
    .line 155
    const-string v0, "Tags are currently unsupported"

    .line 156
    .line 157
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p0

    .line 161
    :cond_6
    invoke-virtual {p0}, Lvm9;->g()J

    .line 162
    .line 163
    .line 164
    move-result-wide v0

    .line 165
    cmp-long v3, v0, v4

    .line 166
    .line 167
    if-gtz v3, :cond_c

    .line 168
    .line 169
    invoke-static {v2, v0, v1}, Ltu0;->J(BJ)V

    .line 170
    .line 171
    .line 172
    long-to-int v2, v0

    .line 173
    new-array v3, v2, [Lib;

    .line 174
    .line 175
    const/4 v4, 0x0

    .line 176
    move v5, v6

    .line 177
    :goto_1
    int-to-long v7, v5

    .line 178
    cmp-long v7, v7, v0

    .line 179
    .line 180
    if-gez v7, :cond_9

    .line 181
    .line 182
    invoke-static {p0}, Ltu0;->H(Lvm9;)Lrm9;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    if-eqz v4, :cond_8

    .line 187
    .line 188
    invoke-interface {v7, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-lez v8, :cond_7

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_7
    new-instance p0, Lrl9;

    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 205
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v3, "Keys in CBOR Map not in strictly ascending natural order:\nPrevious key: "

    .line 211
    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v0, "\nCurrent key: "

    .line 219
    .line 220
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 230
    :try_start_7
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw p0

    .line 234
    :cond_8
    :goto_2
    new-instance v4, Lib;

    .line 235
    .line 236
    invoke-static {p0}, Ltu0;->H(Lvm9;)Lrm9;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    const/16 v9, 0x11

    .line 241
    .line 242
    invoke-direct {v4, v9, v7, v8}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    aput-object v4, v3, v5

    .line 246
    .line 247
    add-int/lit8 v5, v5, 0x1

    .line 248
    .line 249
    move-object v4, v7

    .line 250
    goto :goto_1

    .line 251
    :cond_9
    new-instance p0, Ljava/util/TreeMap;

    .line 252
    .line 253
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 254
    .line 255
    .line 256
    :goto_3
    if-ge v6, v2, :cond_b

    .line 257
    .line 258
    aget-object v0, v3, v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 259
    .line 260
    :try_start_8
    iget-object v1, v0, Lib;->b:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v1, Lrm9;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 263
    .line 264
    :try_start_9
    invoke-virtual {p0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 268
    if-nez v1, :cond_a

    .line 269
    .line 270
    :try_start_a
    iget-object v1, v0, Lib;->b:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v1, Lrm9;

    .line 273
    .line 274
    iget-object v0, v0, Lib;->c:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v0, Lrm9;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    .line 277
    .line 278
    :try_start_b
    invoke-virtual {p0, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    add-int/lit8 v6, v6, 0x1

    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_a
    new-instance p0, Lrl9;

    .line 285
    .line 286
    const-string v0, "Attempted to add duplicate key to canonical CBOR Map."

    .line 287
    .line 288
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    throw p0

    .line 292
    :cond_b
    new-instance v0, Lkm9;

    .line 293
    .line 294
    invoke-static {p0}, Ldc9;->b(Ljava/util/TreeMap;)Ldc9;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    invoke-direct {v0, p0}, Lkm9;-><init>(Ldc9;)V

    .line 299
    .line 300
    .line 301
    return-object v0

    .line 302
    :cond_c
    new-instance p0, Ldm9;

    .line 303
    .line 304
    const-string v0, "Parser being asked to read a large CBOR map"

    .line 305
    .line 306
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw p0

    .line 310
    :cond_d
    invoke-virtual {p0}, Lvm9;->a()J

    .line 311
    .line 312
    .line 313
    move-result-wide v0

    .line 314
    cmp-long v3, v0, v4

    .line 315
    .line 316
    if-gtz v3, :cond_f

    .line 317
    .line 318
    invoke-static {v2, v0, v1}, Ltu0;->J(BJ)V

    .line 319
    .line 320
    .line 321
    long-to-int v2, v0

    .line 322
    new-array v2, v2, [Lrm9;

    .line 323
    .line 324
    :goto_4
    int-to-long v3, v6

    .line 325
    cmp-long v3, v3, v0

    .line 326
    .line 327
    if-gez v3, :cond_e

    .line 328
    .line 329
    invoke-static {p0}, Ltu0;->H(Lvm9;)Lrm9;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    aput-object v3, v2, v6

    .line 334
    .line 335
    add-int/lit8 v6, v6, 0x1

    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_e
    new-instance p0, Lvl9;

    .line 339
    .line 340
    invoke-static {v2}, Lib9;->C([Ljava/lang/Object;)Lid9;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-direct {p0, v0}, Lvl9;-><init>(Lid9;)V

    .line 345
    .line 346
    .line 347
    return-object p0

    .line 348
    :cond_f
    new-instance p0, Ldm9;

    .line 349
    .line 350
    const-string v0, "Parser being asked to read a large CBOR array"

    .line 351
    .line 352
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    .line 356
    :catch_1
    move-exception p0

    .line 357
    :goto_5
    new-instance v0, Ldm9;

    .line 358
    .line 359
    invoke-direct {v0, p0}, Ldm9;-><init>(Ljava/lang/Exception;)V

    .line 360
    .line 361
    .line 362
    throw v0

    .line 363
    :cond_10
    new-instance p0, Ldm9;

    .line 364
    .line 365
    const-string v0, "Parser being asked to parse an empty input stream"

    .line 366
    .line 367
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw p0

    .line 371
    :catch_2
    move-exception p0

    .line 372
    new-instance v0, Ldm9;

    .line 373
    .line 374
    invoke-direct {v0, p0}, Ldm9;-><init>(Ljava/lang/Exception;)V

    .line 375
    .line 376
    .line 377
    throw v0
.end method

.method public static I([BII)Z
    .locals 6

    .line 1
    :goto_0
    if-ge p1, p2, :cond_0

    .line 2
    .line 3
    aget-byte v0, p0, p1

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-lt p1, p2, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    :goto_1
    if-lt p1, p2, :cond_2

    .line 14
    .line 15
    :goto_2
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_2
    add-int/lit8 v0, p1, 0x1

    .line 18
    .line 19
    aget-byte v1, p0, p1

    .line 20
    .line 21
    if-gez v1, :cond_b

    .line 22
    .line 23
    const/16 v2, -0x20

    .line 24
    .line 25
    const/16 v3, -0x41

    .line 26
    .line 27
    if-ge v1, v2, :cond_4

    .line 28
    .line 29
    if-lt v0, p2, :cond_3

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_3
    const/16 v2, -0x3e

    .line 33
    .line 34
    if-lt v1, v2, :cond_a

    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x2

    .line 37
    .line 38
    aget-byte v0, p0, v0

    .line 39
    .line 40
    if-le v0, v3, :cond_1

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_4
    const/16 v4, -0x10

    .line 44
    .line 45
    if-ge v1, v4, :cond_8

    .line 46
    .line 47
    add-int/lit8 v4, p2, -0x1

    .line 48
    .line 49
    if-lt v0, v4, :cond_5

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_5
    add-int/lit8 v4, p1, 0x2

    .line 53
    .line 54
    aget-byte v0, p0, v0

    .line 55
    .line 56
    if-gt v0, v3, :cond_a

    .line 57
    .line 58
    const/16 v5, -0x60

    .line 59
    .line 60
    if-ne v1, v2, :cond_6

    .line 61
    .line 62
    if-lt v0, v5, :cond_a

    .line 63
    .line 64
    :cond_6
    const/16 v2, -0x13

    .line 65
    .line 66
    if-ne v1, v2, :cond_7

    .line 67
    .line 68
    if-ge v0, v5, :cond_a

    .line 69
    .line 70
    :cond_7
    add-int/lit8 p1, p1, 0x3

    .line 71
    .line 72
    aget-byte v0, p0, v4

    .line 73
    .line 74
    if-le v0, v3, :cond_1

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_8
    add-int/lit8 v2, p2, -0x2

    .line 78
    .line 79
    if-lt v0, v2, :cond_9

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_9
    add-int/lit8 v2, p1, 0x2

    .line 83
    .line 84
    aget-byte v0, p0, v0

    .line 85
    .line 86
    if-gt v0, v3, :cond_a

    .line 87
    .line 88
    shl-int/lit8 v1, v1, 0x1c

    .line 89
    .line 90
    add-int/lit8 v0, v0, 0x70

    .line 91
    .line 92
    add-int/2addr v0, v1

    .line 93
    shr-int/lit8 v0, v0, 0x1e

    .line 94
    .line 95
    if-nez v0, :cond_a

    .line 96
    .line 97
    add-int/lit8 v0, p1, 0x3

    .line 98
    .line 99
    aget-byte v1, p0, v2

    .line 100
    .line 101
    if-gt v1, v3, :cond_a

    .line 102
    .line 103
    add-int/lit8 p1, p1, 0x4

    .line 104
    .line 105
    aget-byte v0, p0, v0

    .line 106
    .line 107
    if-le v0, v3, :cond_1

    .line 108
    .line 109
    :cond_a
    :goto_3
    const/4 p0, 0x0

    .line 110
    return p0

    .line 111
    :cond_b
    move p1, v0

    .line 112
    goto :goto_1
.end method

.method public static final J(BJ)V
    .locals 3

    .line 1
    const-string v0, "Integer value "

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    const-wide v1, 0x100000000L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long p0, p1, v1

    .line 13
    .line 14
    if-ltz p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Lrl9;

    .line 18
    .line 19
    const-string v1, " after add info could have been represented in 0-4 additional bytes, but used 8"

    .line 20
    .line 21
    invoke-static {v0, v1, p1, p2}, Lfz5;->m(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :pswitch_1
    const-wide/32 v1, 0x10000

    .line 30
    .line 31
    .line 32
    cmp-long p0, p1, v1

    .line 33
    .line 34
    if-ltz p0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p0, Lrl9;

    .line 38
    .line 39
    const-string v1, " after add info could have been represented in 0-2 additional bytes, but used 4"

    .line 40
    .line 41
    invoke-static {v0, v1, p1, p2}, Lfz5;->m(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :pswitch_2
    const-wide/16 v1, 0x100

    .line 50
    .line 51
    cmp-long p0, p1, v1

    .line 52
    .line 53
    if-ltz p0, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance p0, Lrl9;

    .line 57
    .line 58
    const-string v1, " after add info could have been represented in 0-1 additional bytes, but used 2"

    .line 59
    .line 60
    invoke-static {v0, v1, p1, p2}, Lfz5;->m(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :pswitch_3
    const-wide/16 v1, 0x18

    .line 69
    .line 70
    cmp-long p0, p1, v1

    .line 71
    .line 72
    if-ltz p0, :cond_3

    .line 73
    .line 74
    :goto_0
    return-void

    .line 75
    :cond_3
    new-instance p0, Lrl9;

    .line 76
    .line 77
    const-string v1, " after add info could have been represented in 0 additional bytes, but used 1"

    .line 78
    .line 79
    invoke-static {v0, v1, p1, p2}, Lfz5;->m(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-class v0, Ltu0;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    filled-new-array {p0}, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_6

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_5

    .line 16
    .line 17
    const-string p1, "Failed to close SBA output parent directory: "

    .line 18
    .line 19
    const-string v0, "Failed to sync SBA output parent directory: "

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static {v2, v3, v4}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 36
    .line 37
    .line 38
    move-result-object v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :try_start_1
    invoke-static {v2}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    :try_start_2
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Ljava/io/IOException;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object v1, v2

    .line 65
    goto :goto_3

    .line 66
    :catch_1
    move-exception v1

    .line 67
    goto :goto_0

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    goto :goto_3

    .line 70
    :catch_2
    move-exception v2

    .line 71
    move-object v6, v2

    .line 72
    move-object v2, v1

    .line 73
    move-object v1, v6

    .line 74
    :goto_0
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {v3, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    .line 94
    .line 95
    if-eqz v2, :cond_0

    .line 96
    .line 97
    :try_start_4
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_3

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_3
    move-exception v0

    .line 102
    new-instance v1, Ljava/io/IOException;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v3, v1}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    :cond_0
    :goto_1
    move-object v1, v3

    .line 119
    :cond_1
    :goto_2
    if-nez v1, :cond_2

    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    throw v1

    .line 123
    :goto_3
    if-eqz v1, :cond_3

    .line 124
    .line 125
    :try_start_5
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_4

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :catch_4
    move-exception v1

    .line 130
    new-instance v2, Ljava/io/IOException;

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-direct {v2, p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    :cond_3
    :goto_4
    throw v0

    .line 144
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    const-string p1, "SBA output parent is not a directory: "

    .line 149
    .line 150
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    const-string p1, "SBA output path has no parent: "

    .line 163
    .line 164
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    const-string p1, "Failed to move temporary SBA archive to final path: "

    .line 180
    .line 181
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public static c(Landroid/content/Context;I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static d(Ljava/io/File;Ljava/util/ArrayList;Lf27;Lcy0;Lzv1;Ljava/lang/String;JLny6;Lh07;Lmt3;Z)Lky6;
    .locals 15

    .line 1
    move-object/from16 v5, p4

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    cmp-long v0, p6, v0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-ltz v0, :cond_8

    .line 21
    .line 22
    sget-object v0, Lvy6;->m:Lvy6;

    .line 23
    .line 24
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    move-object v6, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    instance-of v0, v5, Luy6;

    .line 33
    .line 34
    if-eqz v0, :cond_7

    .line 35
    .line 36
    move-object v0, v5

    .line 37
    check-cast v0, Luy6;

    .line 38
    .line 39
    iget-object v0, v0, Luy6;->m:[C

    .line 40
    .line 41
    array-length v2, v0

    .line 42
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    move-object v6, v0

    .line 47
    :goto_0
    const/4 v14, 0x0

    .line 48
    :try_start_0
    instance-of v0, v5, Luy6;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    sget-object v0, Lcom/swiftapps/sba/SbaLibaegisCryptoNative;->a:Lcom/swiftapps/sba/SbaLibaegisCryptoNative;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/swiftapps/sba/SbaLibaegisCryptoNative;->isAvailable()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const-string p0, "SBA AEGIS encryption backend is not available"

    .line 62
    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    move-object p0, v0

    .line 71
    goto :goto_4

    .line 72
    :cond_2
    :goto_1
    invoke-static {p0}, Ltu0;->g(Ljava/io/File;)Ljava/io/File;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-nez p5, :cond_3

    .line 77
    .line 78
    const-string v0, ""

    .line 79
    .line 80
    move-object v7, v0

    .line 81
    :goto_2
    move-object/from16 v2, p1

    .line 82
    .line 83
    move-object/from16 v3, p2

    .line 84
    .line 85
    move-object/from16 v4, p3

    .line 86
    .line 87
    move-wide/from16 v10, p6

    .line 88
    .line 89
    move-object/from16 v9, p8

    .line 90
    .line 91
    move-object/from16 v12, p9

    .line 92
    .line 93
    move-object/from16 v13, p10

    .line 94
    .line 95
    move/from16 v8, p11

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_3
    move-object/from16 v7, p5

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :goto_3
    invoke-static/range {v1 .. v13}, Ltu0;->f(Ljava/io/File;Ljava/util/ArrayList;Lf27;Lcy0;Lzv1;[CLjava/lang/String;ZLny6;JLh07;Lmt3;)V

    .line 102
    .line 103
    .line 104
    new-instance v2, Lz07;

    .line 105
    .line 106
    invoke-direct {v2, v1}, Lz07;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    :try_start_1
    invoke-virtual {v2}, Lz07;->A()Lky6;

    .line 110
    .line 111
    .line 112
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    :try_start_2
    invoke-virtual {v2}, Lz07;->close()V

    .line 114
    .line 115
    .line 116
    invoke-static {v1, p0}, Ltu0;->b(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .line 118
    .line 119
    if-eqz v6, :cond_4

    .line 120
    .line 121
    array-length p0, v6

    .line 122
    invoke-static {v6, v14, p0, v14}, Ljava/util/Arrays;->fill([CIIC)V

    .line 123
    .line 124
    .line 125
    :cond_4
    return-object v0

    .line 126
    :catchall_1
    move-exception v0

    .line 127
    move-object p0, v0

    .line 128
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 129
    :catchall_2
    move-exception v0

    .line 130
    :try_start_4
    invoke-static {v2, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 134
    :goto_4
    if-eqz v1, :cond_5

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 137
    .line 138
    .line 139
    :cond_5
    if-eqz v6, :cond_6

    .line 140
    .line 141
    array-length v0, v6

    .line 142
    invoke-static {v6, v14, v0, v14}, Ljava/util/Arrays;->fill([CIIC)V

    .line 143
    .line 144
    .line 145
    :cond_6
    throw p0

    .line 146
    :cond_7
    invoke-static {}, Lq;->j()V

    .line 147
    .line 148
    .line 149
    return-object v1

    .line 150
    :cond_8
    move-wide/from16 v10, p6

    .line 151
    .line 152
    const-string p0, "SBA progress update interval must be >= 0 ms: "

    .line 153
    .line 154
    invoke-static {v10, v11, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    return-object v1
.end method

.method public static e(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ln60;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_48

    .line 5
    .line 6
    iget-object v2, v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->c:Lj1;

    .line 7
    .line 8
    iget-object v3, v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->e:Lu;

    .line 9
    .line 10
    iget-object v4, v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->b:Lya;

    .line 11
    .line 12
    iget-object v5, v4, Lya;->a:Lf1;

    .line 13
    .line 14
    iget-object v4, v4, Lya;->b:Lb0;

    .line 15
    .line 16
    sget-object v6, Lbw5;->a:Lf1;

    .line 17
    .line 18
    invoke-virtual {v5, v6}, Lq1;->s(Lq1;)Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    new-instance v1, Ldw6;

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lj1;->a:[B

    .line 35
    .line 36
    invoke-static {v4}, Ltv6;->k(Ljava/lang/Object;)Ltv6;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Lfi8;->e(Ltv6;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v1, v2, v0}, Ldw6;-><init>(Ljava/lang/String;[B)V

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_0
    sget-object v6, Lbw5;->b:Lf1;

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Lq1;->s(Lq1;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const/4 v7, 0x2

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v9, 0x1

    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    new-instance v1, Lnj5;

    .line 60
    .line 61
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v0, v0, Lj1;->a:[B

    .line 70
    .line 71
    array-length v2, v0

    .line 72
    div-int/2addr v2, v7

    .line 73
    new-array v3, v2, [S

    .line 74
    .line 75
    :goto_0
    if-eq v8, v2, :cond_1

    .line 76
    .line 77
    mul-int/lit8 v4, v8, 0x2

    .line 78
    .line 79
    aget-byte v5, v0, v4

    .line 80
    .line 81
    and-int/lit16 v5, v5, 0xff

    .line 82
    .line 83
    add-int/2addr v4, v9

    .line 84
    aget-byte v4, v0, v4

    .line 85
    .line 86
    and-int/lit16 v4, v4, 0xff

    .line 87
    .line 88
    shl-int/lit8 v4, v4, 0x8

    .line 89
    .line 90
    or-int/2addr v4, v5

    .line 91
    int-to-short v4, v4

    .line 92
    aput-short v4, v3, v8

    .line 93
    .line 94
    add-int/lit8 v8, v8, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    invoke-direct {v1, v3}, Lnj5;-><init>([S)V

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_2
    sget-object v6, Ltv5;->a:Lf1;

    .line 102
    .line 103
    invoke-virtual {v5, v6}, Lq1;->s(Lq1;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    const/16 v10, 0x40

    .line 108
    .line 109
    const/4 v11, 0x4

    .line 110
    if-eqz v6, :cond_7

    .line 111
    .line 112
    new-instance v0, Lp82;

    .line 113
    .line 114
    iget-object v2, v2, Lj1;->a:[B

    .line 115
    .line 116
    invoke-direct {v0, v2}, Lj1;-><init>([B)V

    .line 117
    .line 118
    .line 119
    array-length v4, v2

    .line 120
    if-ne v4, v10, :cond_3

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    invoke-static {v2}, Lfi8;->b([B)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_4

    .line 128
    .line 129
    aget-byte v4, v2, v8

    .line 130
    .line 131
    if-ne v4, v11, :cond_4

    .line 132
    .line 133
    invoke-static {v2}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    :cond_4
    if-eqz v1, :cond_5

    .line 138
    .line 139
    invoke-static {v1}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    :cond_5
    :goto_1
    iget-object v0, v0, Lj1;->a:[B

    .line 144
    .line 145
    if-eqz v3, :cond_6

    .line 146
    .line 147
    invoke-virtual {v3}, Lu;->C()[B

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    array-length v2, v0

    .line 152
    invoke-static {v0, v11, v2}, Lms8;->t([BII)[B

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0}, Lm24;->a(Ljava/lang/Object;)Lm24;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v1}, Ln24;->a(Ljava/lang/Object;)Ln24;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    return-object v0

    .line 167
    :cond_6
    array-length v1, v0

    .line 168
    invoke-static {v0, v11, v1}, Lms8;->t([BII)[B

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v0}, Lm24;->a(Ljava/lang/Object;)Lm24;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    return-object v0

    .line 177
    :cond_7
    sget-object v6, Lvg0;->d:Lf1;

    .line 178
    .line 179
    invoke-virtual {v5, v6}, Lf1;->F(Lf1;)Z

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    const-string v12, "unrecognized version"

    .line 184
    .line 185
    const/4 v13, 0x3

    .line 186
    if-nez v6, :cond_42

    .line 187
    .line 188
    sget-object v6, Lvg0;->O:Lf1;

    .line 189
    .line 190
    invoke-virtual {v5, v6}, Lf1;->F(Lf1;)Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-eqz v6, :cond_8

    .line 195
    .line 196
    goto/16 :goto_13

    .line 197
    .line 198
    :cond_8
    sget-object v6, Lfi8;->L:Ljava/util/HashMap;

    .line 199
    .line 200
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v14

    .line 204
    if-eqz v14, :cond_c

    .line 205
    .line 206
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Lrr6;

    .line 211
    .line 212
    new-instance v3, Lp82;

    .line 213
    .line 214
    iget-object v2, v2, Lj1;->a:[B

    .line 215
    .line 216
    invoke-direct {v3, v2}, Lj1;-><init>([B)V

    .line 217
    .line 218
    .line 219
    iget-object v4, v0, Lrr6;->a:Lpr6;

    .line 220
    .line 221
    invoke-interface {v4}, Lpr6;->getN()I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    mul-int/2addr v4, v11

    .line 226
    array-length v5, v2

    .line 227
    if-ne v5, v4, :cond_9

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_9
    invoke-static {v2}, Lfi8;->b([B)Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-nez v4, :cond_a

    .line 235
    .line 236
    aget-byte v4, v2, v8

    .line 237
    .line 238
    if-ne v4, v11, :cond_a

    .line 239
    .line 240
    invoke-static {v2}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    :cond_a
    if-eqz v1, :cond_b

    .line 245
    .line 246
    invoke-static {v1}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    :cond_b
    :goto_2
    new-instance v1, Lsr6;

    .line 251
    .line 252
    iget-object v2, v3, Lj1;->a:[B

    .line 253
    .line 254
    invoke-direct {v1, v0, v2}, Lsr6;-><init>(Lrr6;[B)V

    .line 255
    .line 256
    .line 257
    return-object v1

    .line 258
    :cond_c
    sget-object v6, Lvg0;->b0:Lf1;

    .line 259
    .line 260
    invoke-virtual {v5, v6}, Lf1;->F(Lf1;)Z

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    if-eqz v6, :cond_d

    .line 265
    .line 266
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    iget-object v0, v0, Lj1;->a:[B

    .line 275
    .line 276
    sget-object v1, Lfi8;->h:Ljava/util/HashMap;

    .line 277
    .line 278
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    check-cast v1, Lg06;

    .line 283
    .line 284
    new-instance v2, Lh06;

    .line 285
    .line 286
    invoke-direct {v2, v1, v0}, Lh06;-><init>(Lg06;[B)V

    .line 287
    .line 288
    .line 289
    return-object v2

    .line 290
    :cond_d
    sget-object v6, Lvg0;->H0:Lf1;

    .line 291
    .line 292
    invoke-virtual {v5, v6}, Lf1;->F(Lf1;)Z

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    const/4 v14, 0x7

    .line 297
    const/4 v15, 0x6

    .line 298
    const/4 v10, 0x5

    .line 299
    if-eqz v6, :cond_11

    .line 300
    .line 301
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    if-eqz v0, :cond_10

    .line 306
    .line 307
    new-instance v2, Lty0;

    .line 308
    .line 309
    invoke-static {v0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v8}, Lv1;->C(I)Lb0;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-static {v3}, Lt0;->x(Ljava/lang/Object;)Lt0;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {v3}, Lt0;->C()I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    iput v3, v2, Lty0;->a:I

    .line 329
    .line 330
    if-nez v3, :cond_f

    .line 331
    .line 332
    invoke-virtual {v0, v9}, Lv1;->C(I)Lb0;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-static {v1}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    iget-object v1, v1, Lj1;->a:[B

    .line 341
    .line 342
    invoke-static {v1}, Lms8;->k([B)[B

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    iput-object v1, v2, Lty0;->b:[B

    .line 347
    .line 348
    invoke-virtual {v0, v7}, Lv1;->C(I)Lb0;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-static {v1}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    iget-object v1, v1, Lj1;->a:[B

    .line 357
    .line 358
    invoke-static {v1}, Lms8;->k([B)[B

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    iput-object v1, v2, Lty0;->c:[B

    .line 363
    .line 364
    invoke-virtual {v0, v13}, Lv1;->C(I)Lb0;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-static {v1}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    iget-object v1, v1, Lj1;->a:[B

    .line 373
    .line 374
    invoke-static {v1}, Lms8;->k([B)[B

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    iput-object v1, v2, Lty0;->d:[B

    .line 379
    .line 380
    invoke-virtual {v0, v11}, Lv1;->C(I)Lb0;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-static {v1}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    iget-object v1, v1, Lj1;->a:[B

    .line 389
    .line 390
    invoke-static {v1}, Lms8;->k([B)[B

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    iput-object v1, v2, Lty0;->e:[B

    .line 395
    .line 396
    invoke-virtual {v0, v10}, Lv1;->C(I)Lb0;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-static {v1}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    iget-object v1, v1, Lj1;->a:[B

    .line 405
    .line 406
    invoke-static {v1}, Lms8;->k([B)[B

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    iput-object v1, v2, Lty0;->f:[B

    .line 411
    .line 412
    invoke-virtual {v0}, Lv1;->size()I

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    if-ne v1, v14, :cond_e

    .line 417
    .line 418
    invoke-virtual {v0, v15}, Lv1;->C(I)Lb0;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-static {v0}, Lvy0;->k(Lb0;)Lvy0;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    iput-object v0, v2, Lty0;->k:Lvy0;

    .line 427
    .line 428
    :cond_e
    move-object v1, v2

    .line 429
    goto :goto_3

    .line 430
    :cond_f
    invoke-static {v12}, Lc6;->f(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    return-object v1

    .line 434
    :cond_10
    :goto_3
    sget-object v0, Lfi8;->n:Ljava/util/HashMap;

    .line 435
    .line 436
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    move-object v3, v0

    .line 441
    check-cast v3, Lsy0;

    .line 442
    .line 443
    new-instance v2, Luy0;

    .line 444
    .line 445
    iget-object v0, v1, Lty0;->b:[B

    .line 446
    .line 447
    invoke-static {v0}, Lms8;->k([B)[B

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    iget-object v0, v1, Lty0;->c:[B

    .line 452
    .line 453
    invoke-static {v0}, Lms8;->k([B)[B

    .line 454
    .line 455
    .line 456
    move-result-object v5

    .line 457
    iget-object v0, v1, Lty0;->d:[B

    .line 458
    .line 459
    invoke-static {v0}, Lms8;->k([B)[B

    .line 460
    .line 461
    .line 462
    move-result-object v6

    .line 463
    iget-object v0, v1, Lty0;->e:[B

    .line 464
    .line 465
    invoke-static {v0}, Lms8;->k([B)[B

    .line 466
    .line 467
    .line 468
    move-result-object v7

    .line 469
    iget-object v0, v1, Lty0;->f:[B

    .line 470
    .line 471
    invoke-static {v0}, Lms8;->k([B)[B

    .line 472
    .line 473
    .line 474
    move-result-object v8

    .line 475
    invoke-direct/range {v2 .. v8}, Luy0;-><init>(Lsy0;[B[B[B[B[B)V

    .line 476
    .line 477
    .line 478
    return-object v2

    .line 479
    :cond_11
    sget-object v6, Lvg0;->S0:Lf1;

    .line 480
    .line 481
    invoke-virtual {v5, v6}, Lf1;->F(Lf1;)Z

    .line 482
    .line 483
    .line 484
    move-result v6

    .line 485
    if-eqz v6, :cond_12

    .line 486
    .line 487
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    iget-object v0, v0, Lj1;->a:[B

    .line 496
    .line 497
    sget-object v1, Lfi8;->j:Ljava/util/HashMap;

    .line 498
    .line 499
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    check-cast v1, Lqs3;

    .line 504
    .line 505
    new-instance v2, Lrs3;

    .line 506
    .line 507
    invoke-direct {v2, v1, v9}, Lei0;-><init>(Ljava/lang/Object;Z)V

    .line 508
    .line 509
    .line 510
    invoke-static {v0}, Lms8;->k([B)[B

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    iput-object v0, v2, Lrs3;->c:[B

    .line 515
    .line 516
    return-object v2

    .line 517
    :cond_12
    sget-object v6, Lvg0;->Z0:Lf1;

    .line 518
    .line 519
    invoke-virtual {v5, v6}, Lf1;->F(Lf1;)Z

    .line 520
    .line 521
    .line 522
    move-result v6

    .line 523
    if-eqz v6, :cond_13

    .line 524
    .line 525
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    iget-object v0, v0, Lj1;->a:[B

    .line 534
    .line 535
    sget-object v1, Lfi8;->l:Ljava/util/HashMap;

    .line 536
    .line 537
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    check-cast v1, Lbr6;

    .line 542
    .line 543
    new-instance v2, Lcr6;

    .line 544
    .line 545
    invoke-direct {v2, v1, v9}, Lei0;-><init>(Ljava/lang/Object;Z)V

    .line 546
    .line 547
    .line 548
    invoke-static {v0}, Lms8;->k([B)[B

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    iput-object v0, v2, Lcr6;->c:[B

    .line 553
    .line 554
    return-object v2

    .line 555
    :cond_13
    sget-object v6, Lvg0;->s1:Lf1;

    .line 556
    .line 557
    invoke-virtual {v5, v6}, Lf1;->F(Lf1;)Z

    .line 558
    .line 559
    .line 560
    move-result v6

    .line 561
    if-eqz v6, :cond_14

    .line 562
    .line 563
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    iget-object v0, v0, Lj1;->a:[B

    .line 572
    .line 573
    sget-object v1, Lfi8;->r:Ljava/util/HashMap;

    .line 574
    .line 575
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    check-cast v1, Lxj5;

    .line 580
    .line 581
    new-instance v2, Lyj5;

    .line 582
    .line 583
    invoke-direct {v2, v1, v0}, Lyj5;-><init>(Lxj5;[B)V

    .line 584
    .line 585
    .line 586
    return-object v2

    .line 587
    :cond_14
    sget-object v6, Lpj5;->L:Lf1;

    .line 588
    .line 589
    invoke-virtual {v5, v6}, Lq1;->s(Lq1;)Z

    .line 590
    .line 591
    .line 592
    move-result v6

    .line 593
    const-string v12, "invalid "

    .line 594
    .line 595
    move/from16 v17, v14

    .line 596
    .line 597
    const-string v14, "inconsistent "

    .line 598
    .line 599
    move-object/from16 v18, v1

    .line 600
    .line 601
    const-string v1, " private key"

    .line 602
    .line 603
    if-nez v6, :cond_39

    .line 604
    .line 605
    sget-object v6, Lpj5;->M:Lf1;

    .line 606
    .line 607
    invoke-virtual {v5, v6}, Lq1;->s(Lq1;)Z

    .line 608
    .line 609
    .line 610
    move-result v6

    .line 611
    if-nez v6, :cond_39

    .line 612
    .line 613
    sget-object v6, Lpj5;->N:Lf1;

    .line 614
    .line 615
    invoke-virtual {v5, v6}, Lq1;->s(Lq1;)Z

    .line 616
    .line 617
    .line 618
    move-result v6

    .line 619
    if-eqz v6, :cond_15

    .line 620
    .line 621
    goto/16 :goto_10

    .line 622
    .line 623
    :cond_15
    sget-object v6, Lvg0;->C1:Lf1;

    .line 624
    .line 625
    invoke-virtual {v5, v6}, Lf1;->F(Lf1;)Z

    .line 626
    .line 627
    .line 628
    move-result v6

    .line 629
    if-eqz v6, :cond_16

    .line 630
    .line 631
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-static {v0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    sget-object v1, Lfi8;->v:Ljava/util/HashMap;

    .line 640
    .line 641
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    move-object v15, v1

    .line 646
    check-cast v15, Luj5;

    .line 647
    .line 648
    new-instance v14, Lvj5;

    .line 649
    .line 650
    invoke-virtual {v0, v8}, Lv1;->C(I)Lb0;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    invoke-static {v1}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    iget-object v1, v1, Lj1;->a:[B

    .line 659
    .line 660
    invoke-virtual {v0, v9}, Lv1;->C(I)Lb0;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    invoke-static {v2}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    iget-object v2, v2, Lj1;->a:[B

    .line 669
    .line 670
    invoke-virtual {v0, v7}, Lv1;->C(I)Lb0;

    .line 671
    .line 672
    .line 673
    move-result-object v3

    .line 674
    invoke-static {v3}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 675
    .line 676
    .line 677
    move-result-object v3

    .line 678
    iget-object v3, v3, Lj1;->a:[B

    .line 679
    .line 680
    invoke-virtual {v0, v13}, Lv1;->C(I)Lb0;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    iget-object v0, v0, Lj1;->a:[B

    .line 689
    .line 690
    move-object/from16 v19, v0

    .line 691
    .line 692
    move-object/from16 v16, v1

    .line 693
    .line 694
    move-object/from16 v17, v2

    .line 695
    .line 696
    move-object/from16 v18, v3

    .line 697
    .line 698
    invoke-direct/range {v14 .. v19}, Lvj5;-><init>(Luj5;[B[B[B[B)V

    .line 699
    .line 700
    .line 701
    return-object v14

    .line 702
    :cond_16
    sget-object v6, Lvg0;->J1:Lf1;

    .line 703
    .line 704
    invoke-virtual {v5, v6}, Lf1;->F(Lf1;)Z

    .line 705
    .line 706
    .line 707
    move-result v6

    .line 708
    if-eqz v6, :cond_17

    .line 709
    .line 710
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    invoke-static {v0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    sget-object v1, Lfi8;->x:Ljava/util/HashMap;

    .line 719
    .line 720
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    move-object v15, v1

    .line 725
    check-cast v15, Lov6;

    .line 726
    .line 727
    new-instance v14, Lpv6;

    .line 728
    .line 729
    invoke-virtual {v0, v8}, Lv1;->C(I)Lb0;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    invoke-static {v1}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    iget-object v1, v1, Lj1;->a:[B

    .line 738
    .line 739
    invoke-virtual {v0, v9}, Lv1;->C(I)Lb0;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    invoke-static {v2}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    iget-object v2, v2, Lj1;->a:[B

    .line 748
    .line 749
    invoke-virtual {v0, v7}, Lv1;->C(I)Lb0;

    .line 750
    .line 751
    .line 752
    move-result-object v3

    .line 753
    invoke-static {v3}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 754
    .line 755
    .line 756
    move-result-object v3

    .line 757
    iget-object v3, v3, Lj1;->a:[B

    .line 758
    .line 759
    invoke-virtual {v0, v13}, Lv1;->C(I)Lb0;

    .line 760
    .line 761
    .line 762
    move-result-object v4

    .line 763
    invoke-static {v4}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 764
    .line 765
    .line 766
    move-result-object v4

    .line 767
    iget-object v4, v4, Lj1;->a:[B

    .line 768
    .line 769
    invoke-virtual {v0, v11}, Lv1;->C(I)Lb0;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    iget-object v0, v0, Lj1;->a:[B

    .line 778
    .line 779
    move-object/from16 v20, v0

    .line 780
    .line 781
    move-object/from16 v16, v1

    .line 782
    .line 783
    move-object/from16 v17, v2

    .line 784
    .line 785
    move-object/from16 v18, v3

    .line 786
    .line 787
    move-object/from16 v19, v4

    .line 788
    .line 789
    invoke-direct/range {v14 .. v20}, Lpv6;-><init>(Lov6;[B[B[B[B[B)V

    .line 790
    .line 791
    .line 792
    return-object v14

    .line 793
    :cond_17
    sget-object v6, Lfi8;->J:Ljava/util/HashMap;

    .line 794
    .line 795
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    move-result v16

    .line 799
    if-eqz v16, :cond_1f

    .line 800
    .line 801
    new-instance v0, Lp82;

    .line 802
    .line 803
    iget-object v2, v2, Lj1;->a:[B

    .line 804
    .line 805
    invoke-direct {v0, v2}, Lj1;-><init>([B)V

    .line 806
    .line 807
    .line 808
    const/16 v4, 0x20

    .line 809
    .line 810
    array-length v7, v2

    .line 811
    if-ne v7, v4, :cond_18

    .line 812
    .line 813
    goto :goto_4

    .line 814
    :cond_18
    invoke-static {v2}, Lfi8;->c([B)Lq1;

    .line 815
    .line 816
    .line 817
    move-result-object v2

    .line 818
    instance-of v4, v2, Lj1;

    .line 819
    .line 820
    if-eqz v4, :cond_19

    .line 821
    .line 822
    invoke-static {v2}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    goto :goto_4

    .line 827
    :cond_19
    instance-of v4, v2, Lv1;

    .line 828
    .line 829
    if-eqz v4, :cond_1a

    .line 830
    .line 831
    invoke-static {v2}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    :cond_1a
    :goto_4
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v2

    .line 839
    check-cast v2, Lh45;

    .line 840
    .line 841
    if-eqz v3, :cond_1b

    .line 842
    .line 843
    invoke-static {v2, v3}, Lfb6;->b(Lh45;Lu;)Lj45;

    .line 844
    .line 845
    .line 846
    move-result-object v3

    .line 847
    goto :goto_5

    .line 848
    :cond_1b
    move-object/from16 v3, v18

    .line 849
    .line 850
    :goto_5
    instance-of v4, v0, Lj1;

    .line 851
    .line 852
    if-eqz v4, :cond_1c

    .line 853
    .line 854
    new-instance v1, Li45;

    .line 855
    .line 856
    check-cast v0, Lj1;

    .line 857
    .line 858
    iget-object v0, v0, Lj1;->a:[B

    .line 859
    .line 860
    invoke-direct {v1, v2, v0, v3}, Li45;-><init>(Lh45;[BLj45;)V

    .line 861
    .line 862
    .line 863
    return-object v1

    .line 864
    :cond_1c
    instance-of v4, v0, Lv1;

    .line 865
    .line 866
    if-eqz v4, :cond_1e

    .line 867
    .line 868
    check-cast v0, Lv1;

    .line 869
    .line 870
    invoke-virtual {v0, v8}, Lv1;->C(I)Lb0;

    .line 871
    .line 872
    .line 873
    move-result-object v4

    .line 874
    invoke-static {v4}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 875
    .line 876
    .line 877
    move-result-object v4

    .line 878
    iget-object v4, v4, Lj1;->a:[B

    .line 879
    .line 880
    invoke-virtual {v0, v9}, Lv1;->C(I)Lb0;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    iget-object v0, v0, Lj1;->a:[B

    .line 889
    .line 890
    new-instance v5, Li45;

    .line 891
    .line 892
    invoke-direct {v5, v2, v4, v3}, Li45;-><init>(Lh45;[BLj45;)V

    .line 893
    .line 894
    .line 895
    invoke-virtual {v5}, Li45;->getEncoded()[B

    .line 896
    .line 897
    .line 898
    move-result-object v3

    .line 899
    invoke-static {v3, v0}, Lms8;->r([B[B)Z

    .line 900
    .line 901
    .line 902
    move-result v0

    .line 903
    if-eqz v0, :cond_1d

    .line 904
    .line 905
    return-object v5

    .line 906
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 907
    .line 908
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    iget-object v2, v2, Lh45;->b:Ljava/lang/String;

    .line 912
    .line 913
    invoke-static {v0, v2, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    return-object v18

    .line 921
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 922
    .line 923
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    iget-object v2, v2, Lh45;->b:Ljava/lang/String;

    .line 927
    .line 928
    invoke-static {v0, v2, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    return-object v18

    .line 936
    :cond_1f
    sget-object v1, Lvg0;->t0:Lf1;

    .line 937
    .line 938
    invoke-virtual {v5, v1}, Lq1;->s(Lq1;)Z

    .line 939
    .line 940
    .line 941
    move-result v1

    .line 942
    if-nez v1, :cond_33

    .line 943
    .line 944
    sget-object v1, Lvg0;->u0:Lf1;

    .line 945
    .line 946
    invoke-virtual {v5, v1}, Lq1;->s(Lq1;)Z

    .line 947
    .line 948
    .line 949
    move-result v1

    .line 950
    if-nez v1, :cond_33

    .line 951
    .line 952
    sget-object v1, Lvg0;->v0:Lf1;

    .line 953
    .line 954
    invoke-virtual {v5, v1}, Lq1;->s(Lq1;)Z

    .line 955
    .line 956
    .line 957
    move-result v1

    .line 958
    if-eqz v1, :cond_20

    .line 959
    .line 960
    goto/16 :goto_f

    .line 961
    .line 962
    :cond_20
    sget-object v1, Lvg0;->r0:Lf1;

    .line 963
    .line 964
    invoke-virtual {v5, v1}, Lq1;->s(Lq1;)Z

    .line 965
    .line 966
    .line 967
    move-result v1

    .line 968
    if-nez v1, :cond_32

    .line 969
    .line 970
    sget-object v1, Lvg0;->s0:Lf1;

    .line 971
    .line 972
    invoke-virtual {v5, v1}, Lq1;->s(Lq1;)Z

    .line 973
    .line 974
    .line 975
    move-result v1

    .line 976
    if-eqz v1, :cond_21

    .line 977
    .line 978
    goto/16 :goto_e

    .line 979
    .line 980
    :cond_21
    sget-object v1, Lvg0;->p0:Lf1;

    .line 981
    .line 982
    invoke-virtual {v5, v1}, Lq1;->s(Lq1;)Z

    .line 983
    .line 984
    .line 985
    move-result v1

    .line 986
    if-nez v1, :cond_31

    .line 987
    .line 988
    sget-object v1, Lvg0;->q0:Lf1;

    .line 989
    .line 990
    invoke-virtual {v5, v1}, Lq1;->s(Lq1;)Z

    .line 991
    .line 992
    .line 993
    move-result v1

    .line 994
    if-eqz v1, :cond_22

    .line 995
    .line 996
    goto/16 :goto_d

    .line 997
    .line 998
    :cond_22
    sget-object v1, Lvg0;->Q1:Lf1;

    .line 999
    .line 1000
    invoke-virtual {v5, v1}, Lf1;->F(Lf1;)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v1

    .line 1004
    if-eqz v1, :cond_23

    .line 1005
    .line 1006
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v0

    .line 1014
    iget-object v0, v0, Lj1;->a:[B

    .line 1015
    .line 1016
    sget-object v1, Lfi8;->B:Ljava/util/HashMap;

    .line 1017
    .line 1018
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    check-cast v1, Lfi0;

    .line 1023
    .line 1024
    iget v2, v1, Lfi0;->b:I

    .line 1025
    .line 1026
    iget v3, v1, Lfi0;->b:I

    .line 1027
    .line 1028
    add-int/lit8 v2, v2, 0x7

    .line 1029
    .line 1030
    div-int/lit8 v2, v2, 0x8

    .line 1031
    .line 1032
    invoke-static {v0, v8, v2}, Lms8;->t([BII)[B

    .line 1033
    .line 1034
    .line 1035
    move-result-object v2

    .line 1036
    add-int/lit8 v4, v3, 0x7

    .line 1037
    .line 1038
    div-int/lit8 v4, v4, 0x8

    .line 1039
    .line 1040
    add-int/lit8 v5, v3, 0x7

    .line 1041
    .line 1042
    div-int/lit8 v5, v5, 0x8

    .line 1043
    .line 1044
    mul-int/2addr v5, v7

    .line 1045
    invoke-static {v0, v4, v5}, Lms8;->t([BII)[B

    .line 1046
    .line 1047
    .line 1048
    move-result-object v4

    .line 1049
    add-int/lit8 v3, v3, 0x7

    .line 1050
    .line 1051
    div-int/lit8 v3, v3, 0x8

    .line 1052
    .line 1053
    mul-int/2addr v3, v7

    .line 1054
    array-length v5, v0

    .line 1055
    invoke-static {v0, v3, v5}, Lms8;->t([BII)[B

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    new-instance v3, Lgi0;

    .line 1060
    .line 1061
    invoke-direct {v3, v1, v9}, Lei0;-><init>(Ljava/lang/Object;Z)V

    .line 1062
    .line 1063
    .line 1064
    invoke-static {v2}, Lms8;->k([B)[B

    .line 1065
    .line 1066
    .line 1067
    move-result-object v1

    .line 1068
    iput-object v1, v3, Lgi0;->c:[B

    .line 1069
    .line 1070
    invoke-static {v4}, Lms8;->k([B)[B

    .line 1071
    .line 1072
    .line 1073
    move-result-object v1

    .line 1074
    iput-object v1, v3, Lgi0;->d:[B

    .line 1075
    .line 1076
    invoke-static {v0}, Lms8;->k([B)[B

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    iput-object v0, v3, Lgi0;->e:[B

    .line 1081
    .line 1082
    return-object v3

    .line 1083
    :cond_23
    sget-object v1, Lvg0;->U1:Lf1;

    .line 1084
    .line 1085
    invoke-virtual {v5, v1}, Lf1;->F(Lf1;)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v1

    .line 1089
    if-eqz v1, :cond_24

    .line 1090
    .line 1091
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v0

    .line 1095
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v0

    .line 1099
    iget-object v0, v0, Lj1;->a:[B

    .line 1100
    .line 1101
    sget-object v1, Lfi8;->D:Ljava/util/HashMap;

    .line 1102
    .line 1103
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v1

    .line 1107
    check-cast v1, Lj24;

    .line 1108
    .line 1109
    new-instance v2, Lk24;

    .line 1110
    .line 1111
    invoke-direct {v2, v1, v0}, Lk24;-><init>(Lj24;[B)V

    .line 1112
    .line 1113
    .line 1114
    return-object v2

    .line 1115
    :cond_24
    sget-object v1, Lvg0;->z0:Lf1;

    .line 1116
    .line 1117
    invoke-virtual {v5, v1}, Lf1;->F(Lf1;)Z

    .line 1118
    .line 1119
    .line 1120
    move-result v1

    .line 1121
    if-eqz v1, :cond_25

    .line 1122
    .line 1123
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v0

    .line 1131
    iget-object v0, v0, Lj1;->a:[B

    .line 1132
    .line 1133
    sget-object v1, Lfi8;->F:Ljava/util/HashMap;

    .line 1134
    .line 1135
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v1

    .line 1139
    check-cast v1, Lre6;

    .line 1140
    .line 1141
    new-instance v2, Lse6;

    .line 1142
    .line 1143
    invoke-direct {v2, v1, v0}, Lse6;-><init>(Lre6;[B)V

    .line 1144
    .line 1145
    .line 1146
    return-object v2

    .line 1147
    :cond_25
    sget-object v1, Lbw5;->c:Lf1;

    .line 1148
    .line 1149
    invoke-virtual {v5, v1}, Lq1;->s(Lq1;)Z

    .line 1150
    .line 1151
    .line 1152
    move-result v1

    .line 1153
    const-string v2, "ClassNotFoundException processing BDS state: "

    .line 1154
    .line 1155
    if-eqz v1, :cond_29

    .line 1156
    .line 1157
    invoke-static {v4}, Lhx8;->k(Ljava/lang/Object;)Lhx8;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v1

    .line 1161
    iget-object v3, v1, Lhx8;->c:Lya;

    .line 1162
    .line 1163
    iget-object v3, v3, Lya;->a:Lf1;

    .line 1164
    .line 1165
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v0

    .line 1169
    if-eqz v0, :cond_26

    .line 1170
    .line 1171
    new-instance v4, Lsx8;

    .line 1172
    .line 1173
    invoke-static {v0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v0

    .line 1177
    invoke-direct {v4, v0}, Lsx8;-><init>(Lv1;)V

    .line 1178
    .line 1179
    .line 1180
    goto :goto_6

    .line 1181
    :cond_26
    move-object/from16 v4, v18

    .line 1182
    .line 1183
    :goto_6
    :try_start_0
    new-instance v0, Lvg6;

    .line 1184
    .line 1185
    new-instance v5, Lrx8;

    .line 1186
    .line 1187
    iget v1, v1, Lhx8;->b:I

    .line 1188
    .line 1189
    invoke-static {v3}, Lfi8;->a(Lf1;)Lhl2;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v6

    .line 1193
    invoke-direct {v5, v1, v6}, Lrx8;-><init>(ILhl2;)V

    .line 1194
    .line 1195
    .line 1196
    invoke-direct {v0, v5}, Lvg6;-><init>(Lrx8;)V

    .line 1197
    .line 1198
    .line 1199
    iget v1, v4, Lsx8;->b:I

    .line 1200
    .line 1201
    iget-object v5, v4, Lsx8;->n:[B

    .line 1202
    .line 1203
    iput v1, v0, Lvg6;->a:I

    .line 1204
    .line 1205
    iget-object v1, v4, Lsx8;->c:[B

    .line 1206
    .line 1207
    invoke-static {v1}, Lms8;->k([B)[B

    .line 1208
    .line 1209
    .line 1210
    move-result-object v1

    .line 1211
    invoke-static {v1}, Ljd4;->g([B)[B

    .line 1212
    .line 1213
    .line 1214
    move-result-object v1

    .line 1215
    iput-object v1, v0, Lvg6;->d:Ljava/lang/Object;

    .line 1216
    .line 1217
    iget-object v1, v4, Lsx8;->d:[B

    .line 1218
    .line 1219
    invoke-static {v1}, Lms8;->k([B)[B

    .line 1220
    .line 1221
    .line 1222
    move-result-object v1

    .line 1223
    invoke-static {v1}, Ljd4;->g([B)[B

    .line 1224
    .line 1225
    .line 1226
    move-result-object v1

    .line 1227
    iput-object v1, v0, Lvg6;->e:Ljava/lang/Object;

    .line 1228
    .line 1229
    iget-object v1, v4, Lsx8;->e:[B

    .line 1230
    .line 1231
    invoke-static {v1}, Lms8;->k([B)[B

    .line 1232
    .line 1233
    .line 1234
    move-result-object v1

    .line 1235
    invoke-static {v1}, Ljd4;->g([B)[B

    .line 1236
    .line 1237
    .line 1238
    move-result-object v1

    .line 1239
    iput-object v1, v0, Lvg6;->f:Ljava/lang/Object;

    .line 1240
    .line 1241
    iget-object v1, v4, Lsx8;->f:[B

    .line 1242
    .line 1243
    invoke-static {v1}, Lms8;->k([B)[B

    .line 1244
    .line 1245
    .line 1246
    move-result-object v1

    .line 1247
    invoke-static {v1}, Ljd4;->g([B)[B

    .line 1248
    .line 1249
    .line 1250
    move-result-object v1

    .line 1251
    iput-object v1, v0, Lvg6;->g:Ljava/lang/Object;

    .line 1252
    .line 1253
    iget v1, v4, Lsx8;->a:I

    .line 1254
    .line 1255
    if-eqz v1, :cond_27

    .line 1256
    .line 1257
    iget v1, v4, Lsx8;->k:I

    .line 1258
    .line 1259
    iput v1, v0, Lvg6;->b:I

    .line 1260
    .line 1261
    goto :goto_7

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    goto :goto_8

    .line 1264
    :cond_27
    :goto_7
    invoke-static {v5}, Lms8;->k([B)[B

    .line 1265
    .line 1266
    .line 1267
    move-result-object v1

    .line 1268
    if-eqz v1, :cond_28

    .line 1269
    .line 1270
    invoke-static {v5}, Lms8;->k([B)[B

    .line 1271
    .line 1272
    .line 1273
    move-result-object v1

    .line 1274
    const-class v4, Llh0;

    .line 1275
    .line 1276
    invoke-static {v1, v4}, Ljd4;->l([BLjava/lang/Class;)Ljava/lang/Object;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v1

    .line 1280
    check-cast v1, Llh0;

    .line 1281
    .line 1282
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1283
    .line 1284
    .line 1285
    new-instance v4, Llh0;

    .line 1286
    .line 1287
    invoke-direct {v4, v1, v3}, Llh0;-><init>(Llh0;Lf1;)V

    .line 1288
    .line 1289
    .line 1290
    iput-object v4, v0, Lvg6;->h:Ljava/lang/Object;

    .line 1291
    .line 1292
    :cond_28
    new-instance v1, Ltx8;

    .line 1293
    .line 1294
    invoke-direct {v1, v0}, Ltx8;-><init>(Lvg6;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1295
    .line 1296
    .line 1297
    return-object v1

    .line 1298
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v0

    .line 1302
    invoke-static {v0, v2}, Lc6;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1303
    .line 1304
    .line 1305
    return-object v18

    .line 1306
    :cond_29
    sget-object v1, Lbw5;->d:Lf1;

    .line 1307
    .line 1308
    invoke-virtual {v5, v1}, Lq1;->s(Lq1;)Z

    .line 1309
    .line 1310
    .line 1311
    move-result v1

    .line 1312
    if-eqz v1, :cond_2e

    .line 1313
    .line 1314
    invoke-static {v4}, Ljx8;->k(Ljava/lang/Object;)Ljx8;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v1

    .line 1318
    iget-object v3, v1, Ljx8;->d:Lya;

    .line 1319
    .line 1320
    iget-object v3, v3, Lya;->a:Lf1;

    .line 1321
    .line 1322
    :try_start_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v0

    .line 1326
    if-eqz v0, :cond_2a

    .line 1327
    .line 1328
    new-instance v4, Llx8;

    .line 1329
    .line 1330
    invoke-static {v0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v0

    .line 1334
    invoke-direct {v4, v0}, Llx8;-><init>(Lv1;)V

    .line 1335
    .line 1336
    .line 1337
    goto :goto_9

    .line 1338
    :cond_2a
    move-object/from16 v4, v18

    .line 1339
    .line 1340
    :goto_9
    new-instance v0, Lmx8;

    .line 1341
    .line 1342
    new-instance v5, Lkx8;

    .line 1343
    .line 1344
    iget v6, v1, Ljx8;->b:I

    .line 1345
    .line 1346
    iget v1, v1, Ljx8;->c:I

    .line 1347
    .line 1348
    invoke-static {v3}, Lfi8;->a(Lf1;)Lhl2;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v7

    .line 1352
    invoke-direct {v5, v6, v1, v7}, Lkx8;-><init>(IILhl2;)V

    .line 1353
    .line 1354
    .line 1355
    invoke-direct {v0, v5}, Lmx8;-><init>(Lkx8;)V

    .line 1356
    .line 1357
    .line 1358
    iget-wide v7, v4, Llx8;->b:J

    .line 1359
    .line 1360
    iget-object v1, v4, Llx8;->n:[B

    .line 1361
    .line 1362
    iput-wide v7, v0, Lmx8;->b:J

    .line 1363
    .line 1364
    iget-object v5, v4, Llx8;->d:[B

    .line 1365
    .line 1366
    invoke-static {v5}, Lms8;->k([B)[B

    .line 1367
    .line 1368
    .line 1369
    move-result-object v5

    .line 1370
    invoke-static {v5}, Ljd4;->g([B)[B

    .line 1371
    .line 1372
    .line 1373
    move-result-object v5

    .line 1374
    iput-object v5, v0, Lmx8;->d:[B

    .line 1375
    .line 1376
    iget-object v5, v4, Llx8;->e:[B

    .line 1377
    .line 1378
    invoke-static {v5}, Lms8;->k([B)[B

    .line 1379
    .line 1380
    .line 1381
    move-result-object v5

    .line 1382
    invoke-static {v5}, Ljd4;->g([B)[B

    .line 1383
    .line 1384
    .line 1385
    move-result-object v5

    .line 1386
    iput-object v5, v0, Lmx8;->e:[B

    .line 1387
    .line 1388
    iget-object v5, v4, Llx8;->f:[B

    .line 1389
    .line 1390
    invoke-static {v5}, Lms8;->k([B)[B

    .line 1391
    .line 1392
    .line 1393
    move-result-object v5

    .line 1394
    invoke-static {v5}, Ljd4;->g([B)[B

    .line 1395
    .line 1396
    .line 1397
    move-result-object v5

    .line 1398
    iput-object v5, v0, Lmx8;->f:[B

    .line 1399
    .line 1400
    iget-object v5, v4, Llx8;->k:[B

    .line 1401
    .line 1402
    invoke-static {v5}, Lms8;->k([B)[B

    .line 1403
    .line 1404
    .line 1405
    move-result-object v5

    .line 1406
    invoke-static {v5}, Ljd4;->g([B)[B

    .line 1407
    .line 1408
    .line 1409
    move-result-object v5

    .line 1410
    iput-object v5, v0, Lmx8;->g:[B

    .line 1411
    .line 1412
    iget v5, v4, Llx8;->a:I

    .line 1413
    .line 1414
    if-eqz v5, :cond_2b

    .line 1415
    .line 1416
    iget-wide v4, v4, Llx8;->c:J

    .line 1417
    .line 1418
    iput-wide v4, v0, Lmx8;->c:J

    .line 1419
    .line 1420
    goto :goto_a

    .line 1421
    :catch_1
    move-exception v0

    .line 1422
    goto :goto_c

    .line 1423
    :cond_2b
    :goto_a
    invoke-static {v1}, Lms8;->k([B)[B

    .line 1424
    .line 1425
    .line 1426
    move-result-object v4

    .line 1427
    if-eqz v4, :cond_2d

    .line 1428
    .line 1429
    invoke-static {v1}, Lms8;->k([B)[B

    .line 1430
    .line 1431
    .line 1432
    move-result-object v1

    .line 1433
    const-class v4, Lmh0;

    .line 1434
    .line 1435
    invoke-static {v1, v4}, Ljd4;->l([BLjava/lang/Class;)Ljava/lang/Object;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v1

    .line 1439
    check-cast v1, Lmh0;

    .line 1440
    .line 1441
    invoke-virtual {v1, v3}, Lmh0;->a(Lf1;)Lmh0;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v1

    .line 1445
    iget-wide v3, v1, Lmh0;->b:J

    .line 1446
    .line 1447
    const-wide/16 v7, 0x0

    .line 1448
    .line 1449
    cmp-long v3, v3, v7

    .line 1450
    .line 1451
    if-nez v3, :cond_2c

    .line 1452
    .line 1453
    new-instance v3, Lmh0;

    .line 1454
    .line 1455
    const-wide/16 v4, 0x1

    .line 1456
    .line 1457
    shl-long v6, v4, v6

    .line 1458
    .line 1459
    sub-long/2addr v6, v4

    .line 1460
    invoke-direct {v3, v1, v6, v7}, Lmh0;-><init>(Lmh0;J)V

    .line 1461
    .line 1462
    .line 1463
    iput-object v3, v0, Lmx8;->h:Lmh0;

    .line 1464
    .line 1465
    goto :goto_b

    .line 1466
    :cond_2c
    iput-object v1, v0, Lmx8;->h:Lmh0;

    .line 1467
    .line 1468
    :cond_2d
    :goto_b
    new-instance v1, Lnx8;

    .line 1469
    .line 1470
    invoke-direct {v1, v0}, Lnx8;-><init>(Lmx8;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1471
    .line 1472
    .line 1473
    return-object v1

    .line 1474
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v0

    .line 1478
    invoke-static {v0, v2}, Lc6;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1479
    .line 1480
    .line 1481
    return-object v18

    .line 1482
    :cond_2e
    sget-object v1, Lvg0;->Y1:Lf1;

    .line 1483
    .line 1484
    invoke-virtual {v5, v1}, Lf1;->F(Lf1;)Z

    .line 1485
    .line 1486
    .line 1487
    move-result v1

    .line 1488
    if-eqz v1, :cond_2f

    .line 1489
    .line 1490
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v0

    .line 1494
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v0

    .line 1498
    iget-object v0, v0, Lj1;->a:[B

    .line 1499
    .line 1500
    sget-object v1, Lfi8;->N:Ljava/util/HashMap;

    .line 1501
    .line 1502
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v1

    .line 1506
    check-cast v1, Lm95;

    .line 1507
    .line 1508
    new-instance v2, Ln95;

    .line 1509
    .line 1510
    invoke-direct {v2, v1, v0}, Ln95;-><init>(Lm95;[B)V

    .line 1511
    .line 1512
    .line 1513
    return-object v2

    .line 1514
    :cond_2f
    sget-object v1, Lvg0;->d2:Lf1;

    .line 1515
    .line 1516
    invoke-virtual {v5, v1}, Lf1;->F(Lf1;)Z

    .line 1517
    .line 1518
    .line 1519
    move-result v1

    .line 1520
    if-eqz v1, :cond_30

    .line 1521
    .line 1522
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v0

    .line 1526
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v0

    .line 1530
    iget-object v0, v0, Lj1;->a:[B

    .line 1531
    .line 1532
    sget-object v1, Lfi8;->P:Ljava/util/HashMap;

    .line 1533
    .line 1534
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v1

    .line 1538
    check-cast v1, Lti7;

    .line 1539
    .line 1540
    new-instance v2, Lui7;

    .line 1541
    .line 1542
    invoke-direct {v2, v1, v0}, Lui7;-><init>(Lti7;[B)V

    .line 1543
    .line 1544
    .line 1545
    return-object v2

    .line 1546
    :cond_30
    const-string v0, "algorithm identifier in private key not recognised"

    .line 1547
    .line 1548
    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    .line 1549
    .line 1550
    .line 1551
    return-object v18

    .line 1552
    :cond_31
    :goto_d
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v0

    .line 1556
    invoke-static {v0}, Ll33;->k(Lq1;)Ll33;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v0

    .line 1560
    sget-object v1, Lfi8;->t:Ljava/util/HashMap;

    .line 1561
    .line 1562
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v1

    .line 1566
    move-object v3, v1

    .line 1567
    check-cast v3, Lk33;

    .line 1568
    .line 1569
    new-instance v2, Lm33;

    .line 1570
    .line 1571
    iget-object v1, v0, Ll33;->b:[B

    .line 1572
    .line 1573
    invoke-static {v1}, Lms8;->k([B)[B

    .line 1574
    .line 1575
    .line 1576
    move-result-object v4

    .line 1577
    iget-object v1, v0, Ll33;->c:[B

    .line 1578
    .line 1579
    invoke-static {v1}, Lms8;->k([B)[B

    .line 1580
    .line 1581
    .line 1582
    move-result-object v5

    .line 1583
    iget-object v1, v0, Ll33;->d:[B

    .line 1584
    .line 1585
    invoke-static {v1}, Lms8;->k([B)[B

    .line 1586
    .line 1587
    .line 1588
    move-result-object v6

    .line 1589
    iget-object v0, v0, Ll33;->e:Ln33;

    .line 1590
    .line 1591
    iget-object v7, v0, Ln33;->a:[B

    .line 1592
    .line 1593
    invoke-direct/range {v2 .. v7}, Lm33;-><init>(Lk33;[B[B[B[B)V

    .line 1594
    .line 1595
    .line 1596
    return-object v2

    .line 1597
    :cond_32
    :goto_e
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v0

    .line 1601
    invoke-static {v0}, Ll33;->k(Lq1;)Ll33;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v0

    .line 1605
    sget-object v1, Lfi8;->t:Ljava/util/HashMap;

    .line 1606
    .line 1607
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v1

    .line 1611
    move-object v3, v1

    .line 1612
    check-cast v3, Lk33;

    .line 1613
    .line 1614
    new-instance v2, Lm33;

    .line 1615
    .line 1616
    iget-object v1, v0, Ll33;->b:[B

    .line 1617
    .line 1618
    invoke-static {v1}, Lms8;->k([B)[B

    .line 1619
    .line 1620
    .line 1621
    move-result-object v4

    .line 1622
    iget-object v1, v0, Ll33;->c:[B

    .line 1623
    .line 1624
    invoke-static {v1}, Lms8;->k([B)[B

    .line 1625
    .line 1626
    .line 1627
    move-result-object v5

    .line 1628
    iget-object v1, v0, Ll33;->d:[B

    .line 1629
    .line 1630
    invoke-static {v1}, Lms8;->k([B)[B

    .line 1631
    .line 1632
    .line 1633
    move-result-object v6

    .line 1634
    iget-object v0, v0, Ll33;->e:Ln33;

    .line 1635
    .line 1636
    iget-object v7, v0, Ln33;->a:[B

    .line 1637
    .line 1638
    invoke-direct/range {v2 .. v7}, Lm33;-><init>(Lk33;[B[B[B[B)V

    .line 1639
    .line 1640
    .line 1641
    return-object v2

    .line 1642
    :cond_33
    :goto_f
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v0

    .line 1646
    sget-object v1, Lfi8;->z:Ljava/util/HashMap;

    .line 1647
    .line 1648
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v1

    .line 1652
    check-cast v1, Lol2;

    .line 1653
    .line 1654
    instance-of v2, v0, Lv1;

    .line 1655
    .line 1656
    if-eqz v2, :cond_36

    .line 1657
    .line 1658
    invoke-static {v0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v0

    .line 1662
    invoke-virtual {v0, v8}, Lv1;->C(I)Lb0;

    .line 1663
    .line 1664
    .line 1665
    move-result-object v2

    .line 1666
    invoke-static {v2}, Lt0;->x(Ljava/lang/Object;)Lt0;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v2

    .line 1670
    invoke-virtual {v2}, Lt0;->C()I

    .line 1671
    .line 1672
    .line 1673
    move-result v2

    .line 1674
    if-nez v2, :cond_35

    .line 1675
    .line 1676
    if-eqz v3, :cond_34

    .line 1677
    .line 1678
    invoke-static {v1, v3}, Lab6;->b(Lol2;Lu;)Lql2;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v2

    .line 1682
    new-instance v19, Lpl2;

    .line 1683
    .line 1684
    invoke-virtual {v0, v9}, Lv1;->C(I)Lb0;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v3

    .line 1688
    invoke-static {v3}, Lu;->B(Ljava/lang/Object;)Lu;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v3

    .line 1692
    invoke-virtual {v3}, Lu;->C()[B

    .line 1693
    .line 1694
    .line 1695
    move-result-object v21

    .line 1696
    invoke-virtual {v0, v7}, Lv1;->C(I)Lb0;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v3

    .line 1700
    invoke-static {v3}, Lu;->B(Ljava/lang/Object;)Lu;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v3

    .line 1704
    invoke-virtual {v3}, Lu;->C()[B

    .line 1705
    .line 1706
    .line 1707
    move-result-object v22

    .line 1708
    invoke-virtual {v0, v13}, Lv1;->C(I)Lb0;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v3

    .line 1712
    invoke-static {v3}, Lu;->B(Ljava/lang/Object;)Lu;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v3

    .line 1716
    invoke-virtual {v3}, Lu;->C()[B

    .line 1717
    .line 1718
    .line 1719
    move-result-object v23

    .line 1720
    invoke-virtual {v0, v11}, Lv1;->C(I)Lb0;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v3

    .line 1724
    invoke-static {v3}, Lu;->B(Ljava/lang/Object;)Lu;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v3

    .line 1728
    invoke-virtual {v3}, Lu;->C()[B

    .line 1729
    .line 1730
    .line 1731
    move-result-object v24

    .line 1732
    invoke-virtual {v0, v10}, Lv1;->C(I)Lb0;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v3

    .line 1736
    invoke-static {v3}, Lu;->B(Ljava/lang/Object;)Lu;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v3

    .line 1740
    invoke-virtual {v3}, Lu;->C()[B

    .line 1741
    .line 1742
    .line 1743
    move-result-object v25

    .line 1744
    invoke-virtual {v0, v15}, Lv1;->C(I)Lb0;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v0

    .line 1748
    invoke-static {v0}, Lu;->B(Ljava/lang/Object;)Lu;

    .line 1749
    .line 1750
    .line 1751
    move-result-object v0

    .line 1752
    invoke-virtual {v0}, Lu;->C()[B

    .line 1753
    .line 1754
    .line 1755
    move-result-object v26

    .line 1756
    iget-object v0, v2, Lql2;->d:[B

    .line 1757
    .line 1758
    invoke-static {v0}, Lms8;->k([B)[B

    .line 1759
    .line 1760
    .line 1761
    move-result-object v27

    .line 1762
    move-object/from16 v20, v1

    .line 1763
    .line 1764
    invoke-direct/range {v19 .. v27}, Lpl2;-><init>(Lol2;[B[B[B[B[B[B[B)V

    .line 1765
    .line 1766
    .line 1767
    return-object v19

    .line 1768
    :cond_34
    move-object/from16 v20, v1

    .line 1769
    .line 1770
    new-instance v19, Lpl2;

    .line 1771
    .line 1772
    invoke-virtual {v0, v9}, Lv1;->C(I)Lb0;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v1

    .line 1776
    invoke-static {v1}, Lu;->B(Ljava/lang/Object;)Lu;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v1

    .line 1780
    invoke-virtual {v1}, Lu;->C()[B

    .line 1781
    .line 1782
    .line 1783
    move-result-object v21

    .line 1784
    invoke-virtual {v0, v7}, Lv1;->C(I)Lb0;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v1

    .line 1788
    invoke-static {v1}, Lu;->B(Ljava/lang/Object;)Lu;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v1

    .line 1792
    invoke-virtual {v1}, Lu;->C()[B

    .line 1793
    .line 1794
    .line 1795
    move-result-object v22

    .line 1796
    invoke-virtual {v0, v13}, Lv1;->C(I)Lb0;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v1

    .line 1800
    invoke-static {v1}, Lu;->B(Ljava/lang/Object;)Lu;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v1

    .line 1804
    invoke-virtual {v1}, Lu;->C()[B

    .line 1805
    .line 1806
    .line 1807
    move-result-object v23

    .line 1808
    invoke-virtual {v0, v11}, Lv1;->C(I)Lb0;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v1

    .line 1812
    invoke-static {v1}, Lu;->B(Ljava/lang/Object;)Lu;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v1

    .line 1816
    invoke-virtual {v1}, Lu;->C()[B

    .line 1817
    .line 1818
    .line 1819
    move-result-object v24

    .line 1820
    invoke-virtual {v0, v10}, Lv1;->C(I)Lb0;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v1

    .line 1824
    invoke-static {v1}, Lu;->B(Ljava/lang/Object;)Lu;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v1

    .line 1828
    invoke-virtual {v1}, Lu;->C()[B

    .line 1829
    .line 1830
    .line 1831
    move-result-object v25

    .line 1832
    invoke-virtual {v0, v15}, Lv1;->C(I)Lb0;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v0

    .line 1836
    invoke-static {v0}, Lu;->B(Ljava/lang/Object;)Lu;

    .line 1837
    .line 1838
    .line 1839
    move-result-object v0

    .line 1840
    invoke-virtual {v0}, Lu;->C()[B

    .line 1841
    .line 1842
    .line 1843
    move-result-object v26

    .line 1844
    const/16 v27, 0x0

    .line 1845
    .line 1846
    invoke-direct/range {v19 .. v27}, Lpl2;-><init>(Lol2;[B[B[B[B[B[B[B)V

    .line 1847
    .line 1848
    .line 1849
    return-object v19

    .line 1850
    :cond_35
    const-string v0, "unknown private key version: "

    .line 1851
    .line 1852
    invoke-static {v2, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v0

    .line 1856
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1857
    .line 1858
    .line 1859
    return-object v18

    .line 1860
    :cond_36
    instance-of v2, v0, Lp82;

    .line 1861
    .line 1862
    if-eqz v2, :cond_38

    .line 1863
    .line 1864
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v0

    .line 1868
    iget-object v0, v0, Lj1;->a:[B

    .line 1869
    .line 1870
    if-eqz v3, :cond_37

    .line 1871
    .line 1872
    invoke-static {v1, v3}, Lab6;->b(Lol2;Lu;)Lql2;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v2

    .line 1876
    new-instance v3, Lpl2;

    .line 1877
    .line 1878
    invoke-direct {v3, v1, v0, v2}, Lpl2;-><init>(Lol2;[BLql2;)V

    .line 1879
    .line 1880
    .line 1881
    return-object v3

    .line 1882
    :cond_37
    new-instance v2, Lpl2;

    .line 1883
    .line 1884
    move-object/from16 v3, v18

    .line 1885
    .line 1886
    invoke-direct {v2, v1, v0, v3}, Lpl2;-><init>(Lol2;[BLql2;)V

    .line 1887
    .line 1888
    .line 1889
    return-object v2

    .line 1890
    :cond_38
    move-object/from16 v3, v18

    .line 1891
    .line 1892
    const-string v0, "not supported"

    .line 1893
    .line 1894
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1895
    .line 1896
    .line 1897
    return-object v3

    .line 1898
    :cond_39
    :goto_10
    new-instance v0, Lp82;

    .line 1899
    .line 1900
    iget-object v2, v2, Lj1;->a:[B

    .line 1901
    .line 1902
    invoke-direct {v0, v2}, Lj1;-><init>([B)V

    .line 1903
    .line 1904
    .line 1905
    array-length v4, v2

    .line 1906
    const/16 v6, 0x40

    .line 1907
    .line 1908
    if-ne v4, v6, :cond_3a

    .line 1909
    .line 1910
    goto :goto_11

    .line 1911
    :cond_3a
    invoke-static {v2}, Lfi8;->c([B)Lq1;

    .line 1912
    .line 1913
    .line 1914
    move-result-object v2

    .line 1915
    instance-of v4, v2, Lj1;

    .line 1916
    .line 1917
    if-eqz v4, :cond_3b

    .line 1918
    .line 1919
    invoke-static {v2}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v0

    .line 1923
    goto :goto_11

    .line 1924
    :cond_3b
    instance-of v4, v2, Lv1;

    .line 1925
    .line 1926
    if-eqz v4, :cond_3c

    .line 1927
    .line 1928
    invoke-static {v2}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 1929
    .line 1930
    .line 1931
    move-result-object v0

    .line 1932
    :cond_3c
    :goto_11
    sget-object v2, Lfi8;->H:Ljava/util/HashMap;

    .line 1933
    .line 1934
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v2

    .line 1938
    check-cast v2, Lo45;

    .line 1939
    .line 1940
    if-eqz v3, :cond_3e

    .line 1941
    .line 1942
    :try_start_2
    invoke-virtual {v3}, Lu;->C()[B

    .line 1943
    .line 1944
    .line 1945
    move-result-object v4

    .line 1946
    invoke-static {v4}, Lq1;->t([B)Lq1;

    .line 1947
    .line 1948
    .line 1949
    move-result-object v4

    .line 1950
    instance-of v5, v4, Lv1;

    .line 1951
    .line 1952
    if-eqz v5, :cond_3d

    .line 1953
    .line 1954
    invoke-static {v4}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v4

    .line 1958
    new-instance v5, Lr45;

    .line 1959
    .line 1960
    invoke-virtual {v4, v8}, Lv1;->C(I)Lb0;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v6

    .line 1964
    invoke-static {v6}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 1965
    .line 1966
    .line 1967
    move-result-object v6

    .line 1968
    iget-object v6, v6, Lj1;->a:[B

    .line 1969
    .line 1970
    invoke-virtual {v4, v9}, Lv1;->C(I)Lb0;

    .line 1971
    .line 1972
    .line 1973
    move-result-object v4

    .line 1974
    invoke-static {v4}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v4

    .line 1978
    iget-object v4, v4, Lj1;->a:[B

    .line 1979
    .line 1980
    invoke-direct {v5, v2, v6, v4}, Lr45;-><init>(Lo45;[B[B)V

    .line 1981
    .line 1982
    .line 1983
    goto :goto_12

    .line 1984
    :cond_3d
    invoke-static {v4}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v4

    .line 1988
    iget-object v4, v4, Lj1;->a:[B

    .line 1989
    .line 1990
    new-instance v5, Lr45;

    .line 1991
    .line 1992
    invoke-direct {v5, v2, v4}, Lr45;-><init>(Lo45;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1993
    .line 1994
    .line 1995
    goto :goto_12

    .line 1996
    :catch_2
    new-instance v4, Lr45;

    .line 1997
    .line 1998
    invoke-virtual {v3}, Lu;->C()[B

    .line 1999
    .line 2000
    .line 2001
    move-result-object v3

    .line 2002
    invoke-direct {v4, v2, v3}, Lr45;-><init>(Lo45;[B)V

    .line 2003
    .line 2004
    .line 2005
    move-object v5, v4

    .line 2006
    goto :goto_12

    .line 2007
    :cond_3e
    const/4 v5, 0x0

    .line 2008
    :goto_12
    instance-of v3, v0, Lj1;

    .line 2009
    .line 2010
    if-eqz v3, :cond_3f

    .line 2011
    .line 2012
    new-instance v1, Lp45;

    .line 2013
    .line 2014
    check-cast v0, Lj1;

    .line 2015
    .line 2016
    iget-object v0, v0, Lj1;->a:[B

    .line 2017
    .line 2018
    invoke-direct {v1, v2, v0, v5}, Lp45;-><init>(Lo45;[BLr45;)V

    .line 2019
    .line 2020
    .line 2021
    return-object v1

    .line 2022
    :cond_3f
    instance-of v3, v0, Lv1;

    .line 2023
    .line 2024
    if-eqz v3, :cond_41

    .line 2025
    .line 2026
    check-cast v0, Lv1;

    .line 2027
    .line 2028
    invoke-virtual {v0, v8}, Lv1;->C(I)Lb0;

    .line 2029
    .line 2030
    .line 2031
    move-result-object v3

    .line 2032
    invoke-static {v3}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 2033
    .line 2034
    .line 2035
    move-result-object v3

    .line 2036
    iget-object v3, v3, Lj1;->a:[B

    .line 2037
    .line 2038
    invoke-virtual {v0, v9}, Lv1;->C(I)Lb0;

    .line 2039
    .line 2040
    .line 2041
    move-result-object v0

    .line 2042
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v0

    .line 2046
    iget-object v0, v0, Lj1;->a:[B

    .line 2047
    .line 2048
    new-instance v4, Lp45;

    .line 2049
    .line 2050
    invoke-direct {v4, v2, v3, v5}, Lp45;-><init>(Lo45;[BLr45;)V

    .line 2051
    .line 2052
    .line 2053
    invoke-virtual {v4}, Lp45;->getEncoded()[B

    .line 2054
    .line 2055
    .line 2056
    move-result-object v3

    .line 2057
    invoke-static {v3, v0}, Lms8;->r([B[B)Z

    .line 2058
    .line 2059
    .line 2060
    move-result v0

    .line 2061
    if-eqz v0, :cond_40

    .line 2062
    .line 2063
    return-object v4

    .line 2064
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2065
    .line 2066
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2067
    .line 2068
    .line 2069
    iget-object v2, v2, Lo45;->a:Ljava/lang/String;

    .line 2070
    .line 2071
    invoke-static {v0, v2, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2072
    .line 2073
    .line 2074
    move-result-object v0

    .line 2075
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 2076
    .line 2077
    .line 2078
    const/16 v18, 0x0

    .line 2079
    .line 2080
    return-object v18

    .line 2081
    :cond_41
    const/16 v18, 0x0

    .line 2082
    .line 2083
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2084
    .line 2085
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2086
    .line 2087
    .line 2088
    iget-object v2, v2, Lo45;->a:Ljava/lang/String;

    .line 2089
    .line 2090
    invoke-static {v0, v2, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2091
    .line 2092
    .line 2093
    move-result-object v0

    .line 2094
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 2095
    .line 2096
    .line 2097
    return-object v18

    .line 2098
    :cond_42
    :goto_13
    sget-object v1, Lfi8;->p:Ljava/util/HashMap;

    .line 2099
    .line 2100
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    .line 2102
    .line 2103
    move-result-object v1

    .line 2104
    move-object/from16 v20, v1

    .line 2105
    .line 2106
    check-cast v20, Law6;

    .line 2107
    .line 2108
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->l()Lq1;

    .line 2109
    .line 2110
    .line 2111
    move-result-object v0

    .line 2112
    instance-of v1, v0, Lv1;

    .line 2113
    .line 2114
    if-eqz v1, :cond_47

    .line 2115
    .line 2116
    new-instance v1, Lvv6;

    .line 2117
    .line 2118
    invoke-static {v0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 2119
    .line 2120
    .line 2121
    move-result-object v0

    .line 2122
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2123
    .line 2124
    .line 2125
    invoke-virtual {v0, v8}, Lv1;->C(I)Lb0;

    .line 2126
    .line 2127
    .line 2128
    move-result-object v2

    .line 2129
    invoke-static {v2}, Lt0;->x(Ljava/lang/Object;)Lt0;

    .line 2130
    .line 2131
    .line 2132
    move-result-object v2

    .line 2133
    invoke-virtual {v2}, Lt0;->C()I

    .line 2134
    .line 2135
    .line 2136
    move-result v2

    .line 2137
    iput v2, v1, Lvv6;->a:I

    .line 2138
    .line 2139
    if-nez v2, :cond_46

    .line 2140
    .line 2141
    invoke-virtual {v0, v9}, Lv1;->C(I)Lb0;

    .line 2142
    .line 2143
    .line 2144
    move-result-object v2

    .line 2145
    invoke-static {v2}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 2146
    .line 2147
    .line 2148
    move-result-object v2

    .line 2149
    iget-object v2, v2, Lj1;->a:[B

    .line 2150
    .line 2151
    invoke-static {v2}, Lms8;->k([B)[B

    .line 2152
    .line 2153
    .line 2154
    move-result-object v2

    .line 2155
    iput-object v2, v1, Lvv6;->b:[B

    .line 2156
    .line 2157
    invoke-virtual {v0, v7}, Lv1;->C(I)Lb0;

    .line 2158
    .line 2159
    .line 2160
    move-result-object v2

    .line 2161
    invoke-static {v2}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 2162
    .line 2163
    .line 2164
    move-result-object v2

    .line 2165
    iget-object v2, v2, Lj1;->a:[B

    .line 2166
    .line 2167
    invoke-static {v2}, Lms8;->k([B)[B

    .line 2168
    .line 2169
    .line 2170
    move-result-object v2

    .line 2171
    iput-object v2, v1, Lvv6;->c:[B

    .line 2172
    .line 2173
    invoke-virtual {v0}, Lv1;->size()I

    .line 2174
    .line 2175
    .line 2176
    move-result v2

    .line 2177
    if-ne v2, v11, :cond_45

    .line 2178
    .line 2179
    invoke-virtual {v0, v13}, Lv1;->C(I)Lb0;

    .line 2180
    .line 2181
    .line 2182
    move-result-object v0

    .line 2183
    instance-of v2, v0, Lwv6;

    .line 2184
    .line 2185
    if-eqz v2, :cond_43

    .line 2186
    .line 2187
    check-cast v0, Lwv6;

    .line 2188
    .line 2189
    goto :goto_14

    .line 2190
    :cond_43
    if-eqz v0, :cond_44

    .line 2191
    .line 2192
    new-instance v2, Lwv6;

    .line 2193
    .line 2194
    invoke-static {v0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 2195
    .line 2196
    .line 2197
    move-result-object v0

    .line 2198
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2199
    .line 2200
    .line 2201
    invoke-virtual {v0, v8}, Lv1;->C(I)Lb0;

    .line 2202
    .line 2203
    .line 2204
    move-result-object v3

    .line 2205
    invoke-static {v3}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 2206
    .line 2207
    .line 2208
    move-result-object v3

    .line 2209
    iget-object v3, v3, Lj1;->a:[B

    .line 2210
    .line 2211
    invoke-static {v3}, Lms8;->k([B)[B

    .line 2212
    .line 2213
    .line 2214
    move-result-object v3

    .line 2215
    iput-object v3, v2, Lwv6;->a:[B

    .line 2216
    .line 2217
    invoke-virtual {v0, v9}, Lv1;->C(I)Lb0;

    .line 2218
    .line 2219
    .line 2220
    move-result-object v0

    .line 2221
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 2222
    .line 2223
    .line 2224
    move-result-object v0

    .line 2225
    iget-object v0, v0, Lj1;->a:[B

    .line 2226
    .line 2227
    invoke-static {v0}, Lms8;->k([B)[B

    .line 2228
    .line 2229
    .line 2230
    move-result-object v0

    .line 2231
    iput-object v0, v2, Lwv6;->b:[B

    .line 2232
    .line 2233
    move-object v0, v2

    .line 2234
    goto :goto_14

    .line 2235
    :cond_44
    const/4 v0, 0x0

    .line 2236
    :goto_14
    iput-object v0, v1, Lvv6;->d:Lwv6;

    .line 2237
    .line 2238
    :cond_45
    iget-object v0, v1, Lvv6;->d:Lwv6;

    .line 2239
    .line 2240
    new-instance v19, Lbw6;

    .line 2241
    .line 2242
    iget-object v2, v1, Lvv6;->b:[B

    .line 2243
    .line 2244
    invoke-static {v2}, Lms8;->k([B)[B

    .line 2245
    .line 2246
    .line 2247
    move-result-object v21

    .line 2248
    iget-object v1, v1, Lvv6;->c:[B

    .line 2249
    .line 2250
    invoke-static {v1}, Lms8;->k([B)[B

    .line 2251
    .line 2252
    .line 2253
    move-result-object v22

    .line 2254
    iget-object v1, v0, Lwv6;->a:[B

    .line 2255
    .line 2256
    invoke-static {v1}, Lms8;->k([B)[B

    .line 2257
    .line 2258
    .line 2259
    move-result-object v23

    .line 2260
    iget-object v0, v0, Lwv6;->b:[B

    .line 2261
    .line 2262
    invoke-static {v0}, Lms8;->k([B)[B

    .line 2263
    .line 2264
    .line 2265
    move-result-object v24

    .line 2266
    invoke-direct/range {v19 .. v24}, Lbw6;-><init>(Law6;[B[B[B[B)V

    .line 2267
    .line 2268
    .line 2269
    return-object v19

    .line 2270
    :cond_46
    invoke-static {v12}, Lc6;->f(Ljava/lang/String;)V

    .line 2271
    .line 2272
    .line 2273
    const/16 v18, 0x0

    .line 2274
    .line 2275
    return-object v18

    .line 2276
    :cond_47
    move-object/from16 v1, v20

    .line 2277
    .line 2278
    new-instance v2, Lbw6;

    .line 2279
    .line 2280
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 2281
    .line 2282
    .line 2283
    move-result-object v0

    .line 2284
    iget-object v0, v0, Lj1;->a:[B

    .line 2285
    .line 2286
    invoke-direct {v2, v1, v0}, Lbw6;-><init>(Law6;[B)V

    .line 2287
    .line 2288
    .line 2289
    return-object v2

    .line 2290
    :cond_48
    move-object/from16 v18, v1

    .line 2291
    .line 2292
    const-string v0, "keyInfo array null"

    .line 2293
    .line 2294
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 2295
    .line 2296
    .line 2297
    return-object v18
.end method

.method public static f(Ljava/io/File;Ljava/util/ArrayList;Lf27;Lcy0;Lzv1;[CLjava/lang/String;ZLny6;JLh07;Lmt3;)V
    .locals 36

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move/from16 v3, p7

    .line 8
    .line 9
    move-object/from16 v4, p8

    .line 10
    .line 11
    move-wide/from16 v5, p9

    .line 12
    .line 13
    move-object/from16 v7, p11

    .line 14
    .line 15
    sget-object v8, Lf51;->a:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    move-object/from16 v9, p6

    .line 18
    .line 19
    invoke-virtual {v9, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v12

    .line 23
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    array-length v8, v12

    .line 27
    const-string v9, " bytes"

    .line 28
    .line 29
    const/high16 v10, 0x100000

    .line 30
    .line 31
    if-gt v8, v10, :cond_2f

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    new-array v11, v8, [Ljava/lang/String;

    .line 38
    .line 39
    const/4 v14, 0x0

    .line 40
    :goto_0
    if-ge v14, v8, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v15

    .line 46
    check-cast v15, Ley6;

    .line 47
    .line 48
    iget-object v15, v15, Ley6;->a:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v15}, Liz1;->A(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v10, Lf51;->a:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    invoke-virtual {v15, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    array-length v13, v10

    .line 63
    move-object/from16 v17, v11

    .line 64
    .line 65
    const v11, 0xffff

    .line 66
    .line 67
    .line 68
    if-gt v13, v11, :cond_0

    .line 69
    .line 70
    aput-object v15, v17, v14

    .line 71
    .line 72
    add-int/lit8 v14, v14, 0x1

    .line 73
    .line 74
    move-object/from16 v11, v17

    .line 75
    .line 76
    const/high16 v10, 0x100000

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    array-length v0, v10

    .line 80
    const-string v1, "Entry name too large: "

    .line 81
    .line 82
    invoke-static {v0, v1, v9}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_1
    move-object/from16 v17, v11

    .line 91
    .line 92
    invoke-static/range {v17 .. v17}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-interface {v9}, Ljava/util/Set;->size()I

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-ne v9, v8, :cond_2e

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    new-array v13, v8, [[B

    .line 107
    .line 108
    const/4 v9, 0x0

    .line 109
    :goto_1
    if-ge v9, v8, :cond_2

    .line 110
    .line 111
    aget-object v10, v17, v9

    .line 112
    .line 113
    sget-object v11, Lf51;->a:Ljava/nio/charset/Charset;

    .line 114
    .line 115
    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    aput-object v10, v13, v9

    .line 123
    .line 124
    add-int/lit8 v9, v9, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    new-array v14, v8, [Ljava/lang/String;

    .line 132
    .line 133
    const/4 v9, 0x0

    .line 134
    :goto_2
    if-ge v9, v8, :cond_5

    .line 135
    .line 136
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    check-cast v10, Ley6;

    .line 141
    .line 142
    iget-object v10, v10, Ley6;->b:Ljava/io/File;

    .line 143
    .line 144
    if-nez v3, :cond_4

    .line 145
    .line 146
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    if-eqz v11, :cond_3

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v1, "Source path does not exist: "

    .line 158
    .line 159
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_4
    :goto_3
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    aput-object v10, v14, v9

    .line 172
    .line 173
    add-int/lit8 v9, v9, 0x1

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    new-array v15, v8, [I

    .line 181
    .line 182
    const/4 v9, 0x0

    .line 183
    :goto_4
    const/4 v10, 0x1

    .line 184
    if-ge v9, v8, :cond_d

    .line 185
    .line 186
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v18

    .line 190
    move-object/from16 v11, v18

    .line 191
    .line 192
    check-cast v11, Ley6;

    .line 193
    .line 194
    iget-boolean v11, v11, Ley6;->c:Z

    .line 195
    .line 196
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    sget-object v18, Lb07;->a:[I

    .line 200
    .line 201
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    .line 202
    .line 203
    .line 204
    move-result v20

    .line 205
    move/from16 v21, v8

    .line 206
    .line 207
    aget v8, v18, v20

    .line 208
    .line 209
    if-eq v8, v10, :cond_8

    .line 210
    .line 211
    const/4 v10, 0x2

    .line 212
    if-eq v8, v10, :cond_7

    .line 213
    .line 214
    const/4 v10, 0x3

    .line 215
    if-ne v8, v10, :cond_6

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_6
    invoke-static {}, Lq;->j()V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :cond_7
    :goto_5
    new-instance v8, Le27;

    .line 223
    .line 224
    const/4 v10, 0x1

    .line 225
    invoke-direct {v8, v11, v10, v10, v3}, Le27;-><init>(ZZZZ)V

    .line 226
    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_8
    new-instance v8, Le27;

    .line 230
    .line 231
    const/4 v10, 0x0

    .line 232
    invoke-direct {v8, v11, v10, v10, v3}, Le27;-><init>(ZZZZ)V

    .line 233
    .line 234
    .line 235
    :goto_6
    iget-boolean v10, v8, Le27;->a:Z

    .line 236
    .line 237
    if-eqz v10, :cond_9

    .line 238
    .line 239
    const/16 v10, 0x8

    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_9
    const/4 v10, 0x0

    .line 243
    :goto_7
    iget-boolean v11, v8, Le27;->b:Z

    .line 244
    .line 245
    if-eqz v11, :cond_a

    .line 246
    .line 247
    or-int/lit8 v10, v10, 0x1

    .line 248
    .line 249
    :cond_a
    iget-boolean v11, v8, Le27;->c:Z

    .line 250
    .line 251
    if-eqz v11, :cond_b

    .line 252
    .line 253
    or-int/lit8 v10, v10, 0x4

    .line 254
    .line 255
    :cond_b
    iget-boolean v8, v8, Le27;->d:Z

    .line 256
    .line 257
    if-eqz v8, :cond_c

    .line 258
    .line 259
    or-int/lit8 v10, v10, 0x10

    .line 260
    .line 261
    :cond_c
    aput v10, v15, v9

    .line 262
    .line 263
    add-int/lit8 v9, v9, 0x1

    .line 264
    .line 265
    move/from16 v8, v21

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_d
    move/from16 v18, v10

    .line 269
    .line 270
    const/4 v10, 0x2

    .line 271
    const/16 v17, 0x3

    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    new-array v8, v3, [[Ljava/lang/String;

    .line 278
    .line 279
    const/4 v9, 0x0

    .line 280
    :goto_8
    if-ge v9, v3, :cond_f

    .line 281
    .line 282
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v19

    .line 286
    move-object/from16 v10, v19

    .line 287
    .line 288
    check-cast v10, Ley6;

    .line 289
    .line 290
    iget-object v10, v10, Ley6;->d:Ljava/util/List;

    .line 291
    .line 292
    move/from16 p7, v3

    .line 293
    .line 294
    if-eqz v10, :cond_e

    .line 295
    .line 296
    const/4 v11, 0x0

    .line 297
    new-array v3, v11, [Ljava/lang/String;

    .line 298
    .line 299
    invoke-interface {v10, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    move-object v11, v3

    .line 304
    check-cast v11, [Ljava/lang/String;

    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_e
    const/4 v11, 0x0

    .line 308
    :goto_9
    aput-object v11, v8, v9

    .line 309
    .line 310
    add-int/lit8 v9, v9, 0x1

    .line 311
    .line 312
    move/from16 v3, p7

    .line 313
    .line 314
    const/4 v10, 0x2

    .line 315
    goto :goto_8

    .line 316
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    new-array v9, v3, [[Ljava/lang/String;

    .line 321
    .line 322
    const/4 v10, 0x0

    .line 323
    :goto_a
    if-ge v10, v3, :cond_11

    .line 324
    .line 325
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v11

    .line 329
    check-cast v11, Ley6;

    .line 330
    .line 331
    iget-object v11, v11, Ley6;->e:Ljava/util/List;

    .line 332
    .line 333
    move/from16 p7, v3

    .line 334
    .line 335
    move-object/from16 v19, v8

    .line 336
    .line 337
    if-eqz v11, :cond_10

    .line 338
    .line 339
    const/4 v3, 0x0

    .line 340
    new-array v8, v3, [Ljava/lang/String;

    .line 341
    .line 342
    invoke-interface {v11, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    check-cast v3, [Ljava/lang/String;

    .line 347
    .line 348
    goto :goto_b

    .line 349
    :cond_10
    const/4 v3, 0x0

    .line 350
    :goto_b
    aput-object v3, v9, v10

    .line 351
    .line 352
    add-int/lit8 v10, v10, 0x1

    .line 353
    .line 354
    move/from16 v3, p7

    .line 355
    .line 356
    move-object/from16 v8, v19

    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_11
    move-object/from16 v19, v8

    .line 360
    .line 361
    sget-object v3, Loy6;->j:Loy6;

    .line 362
    .line 363
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v8

    .line 367
    if-eqz v8, :cond_12

    .line 368
    .line 369
    const/4 v10, 0x0

    .line 370
    goto :goto_c

    .line 371
    :cond_12
    instance-of v8, v1, Lpy6;

    .line 372
    .line 373
    if-eqz v8, :cond_2d

    .line 374
    .line 375
    move/from16 v10, v18

    .line 376
    .line 377
    :goto_c
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    if-eqz v3, :cond_13

    .line 382
    .line 383
    const/4 v3, 0x0

    .line 384
    goto :goto_d

    .line 385
    :cond_13
    instance-of v3, v1, Lpy6;

    .line 386
    .line 387
    if-eqz v3, :cond_2c

    .line 388
    .line 389
    move-object v3, v1

    .line 390
    check-cast v3, Lpy6;

    .line 391
    .line 392
    iget v3, v3, Lpy6;->j:I

    .line 393
    .line 394
    :goto_d
    sget-object v8, Lvy6;->m:Lvy6;

    .line 395
    .line 396
    invoke-static {v2, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    const-wide/16 v21, 0x0

    .line 401
    .line 402
    if-eqz v8, :cond_14

    .line 403
    .line 404
    move/from16 p7, v3

    .line 405
    .line 406
    move-object/from16 v25, v9

    .line 407
    .line 408
    move-wide/from16 v2, v21

    .line 409
    .line 410
    const/4 v8, 0x0

    .line 411
    goto :goto_e

    .line 412
    :cond_14
    instance-of v2, v2, Luy6;

    .line 413
    .line 414
    if-eqz v2, :cond_2b

    .line 415
    .line 416
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 417
    .line 418
    .line 419
    move-result-wide v23

    .line 420
    if-eqz p5, :cond_2a

    .line 421
    .line 422
    const/16 v2, 0x10

    .line 423
    .line 424
    new-array v8, v2, [B

    .line 425
    .line 426
    new-array v11, v2, [B

    .line 427
    .line 428
    new-instance v2, Ljava/security/SecureRandom;

    .line 429
    .line 430
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v2, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 437
    .line 438
    .line 439
    const/16 v29, 0x1

    .line 440
    .line 441
    const/16 v30, 0x20

    .line 442
    .line 443
    const/16 v27, 0x3

    .line 444
    .line 445
    const/16 v28, 0x4000

    .line 446
    .line 447
    move-object/from16 v25, p5

    .line 448
    .line 449
    move-object/from16 v26, v8

    .line 450
    .line 451
    :try_start_0
    invoke-static/range {v25 .. v30}, Lsy6;->a([C[BIIII)[B

    .line 452
    .line 453
    .line 454
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 455
    move/from16 p7, v3

    .line 456
    .line 457
    :try_start_1
    sget-object v3, Ll27;->Aegis256:Ll27;

    .line 458
    .line 459
    invoke-static {v3, v2, v8, v11}, Lsy6;->d(Ll27;[B[B[B)[B

    .line 460
    .line 461
    .line 462
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 463
    move-object/from16 v25, v9

    .line 464
    .line 465
    :try_start_2
    new-instance v9, Lcy6;

    .line 466
    .line 467
    invoke-direct {v9, v2, v3, v8, v11}, Lcy6;-><init>([B[B[B[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 468
    .line 469
    .line 470
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 471
    .line 472
    .line 473
    move-result-wide v2

    .line 474
    sub-long v2, v2, v23

    .line 475
    .line 476
    move-object v8, v9

    .line 477
    :goto_e
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 478
    .line 479
    .line 480
    move-result-object v9

    .line 481
    if-eqz v9, :cond_15

    .line 482
    .line 483
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 484
    .line 485
    .line 486
    :cond_15
    const-string v9, "before native SBA create"

    .line 487
    .line 488
    invoke-static {v4, v9}, Lx13;->S(Lny6;Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    if-eqz v7, :cond_17

    .line 492
    .line 493
    cmp-long v9, v5, v21

    .line 494
    .line 495
    if-gtz v9, :cond_16

    .line 496
    .line 497
    goto :goto_f

    .line 498
    :cond_16
    new-instance v9, Lg27;

    .line 499
    .line 500
    invoke-direct {v9, v7, v5, v6}, Lg27;-><init>(Lh07;J)V

    .line 501
    .line 502
    .line 503
    move-object/from16 v26, v9

    .line 504
    .line 505
    goto :goto_10

    .line 506
    :cond_17
    :goto_f
    move-object/from16 v26, v7

    .line 507
    .line 508
    :goto_10
    sget-object v27, Li07;->Create:Li07;

    .line 509
    .line 510
    sget-object v28, Ll07;->Entry:Ll07;

    .line 511
    .line 512
    sget-object v29, Lm07;->Started:Lm07;

    .line 513
    .line 514
    const/16 v33, 0x0

    .line 515
    .line 516
    const/16 v34, 0x38

    .line 517
    .line 518
    const/16 v30, 0x0

    .line 519
    .line 520
    const-wide/16 v31, 0x0

    .line 521
    .line 522
    invoke-static/range {v26 .. v34}, Lx13;->l(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;I)V

    .line 523
    .line 524
    .line 525
    move-object/from16 v7, v26

    .line 526
    .line 527
    move-object/from16 v5, v27

    .line 528
    .line 529
    move-object/from16 v6, v28

    .line 530
    .line 531
    :try_start_3
    sget-object v9, Lcom/swiftapps/sba/SbaArchiveNative;->a:Lcom/swiftapps/sba/SbaArchiveNative;

    .line 532
    .line 533
    if-eqz v8, :cond_18

    .line 534
    .line 535
    const/4 v11, 0x2

    .line 536
    goto :goto_11

    .line 537
    :cond_18
    move/from16 v11, v18

    .line 538
    .line 539
    :goto_11
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v20

    .line 543
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    if-eqz v8, :cond_19

    .line 547
    .line 548
    const/16 v21, 0x4

    .line 549
    .line 550
    move/from16 v35, v18

    .line 551
    .line 552
    move/from16 v18, v10

    .line 553
    .line 554
    move v10, v11

    .line 555
    move-object/from16 v11, v20

    .line 556
    .line 557
    move/from16 v20, v21

    .line 558
    .line 559
    move/from16 v21, v35

    .line 560
    .line 561
    goto :goto_12

    .line 562
    :cond_19
    move/from16 v21, v18

    .line 563
    .line 564
    move/from16 v18, v10

    .line 565
    .line 566
    move v10, v11

    .line 567
    move-object/from16 v11, v20

    .line 568
    .line 569
    const/16 v20, 0x0

    .line 570
    .line 571
    :goto_12
    move/from16 v22, v21

    .line 572
    .line 573
    if-eqz v8, :cond_1a

    .line 574
    .line 575
    goto :goto_13

    .line 576
    :cond_1a
    const/16 v21, 0x0

    .line 577
    .line 578
    :goto_13
    if-eqz v8, :cond_1b

    .line 579
    .line 580
    move/from16 v35, v22

    .line 581
    .line 582
    move/from16 v22, v17

    .line 583
    .line 584
    move/from16 v17, v35

    .line 585
    .line 586
    goto :goto_14

    .line 587
    :cond_1b
    move/from16 v17, v22

    .line 588
    .line 589
    const/16 v22, 0x0

    .line 590
    .line 591
    :goto_14
    if-eqz v8, :cond_1c

    .line 592
    .line 593
    const/16 v23, 0x4000

    .line 594
    .line 595
    goto :goto_15

    .line 596
    :cond_1c
    const/16 v23, 0x0

    .line 597
    .line 598
    :goto_15
    if-eqz v8, :cond_1d

    .line 599
    .line 600
    move/from16 v24, v17

    .line 601
    .line 602
    goto :goto_16

    .line 603
    :cond_1d
    const/16 v24, 0x0

    .line 604
    .line 605
    :goto_16
    move/from16 v26, v17

    .line 606
    .line 607
    move-object/from16 v17, v25

    .line 608
    .line 609
    if-eqz v8, :cond_1e

    .line 610
    .line 611
    const/high16 v25, 0x100000

    .line 612
    .line 613
    goto :goto_17

    .line 614
    :cond_1e
    const/16 v25, 0x0

    .line 615
    .line 616
    :goto_17
    if-eqz v8, :cond_1f

    .line 617
    .line 618
    goto :goto_18

    .line 619
    :cond_1f
    const/16 v26, 0x0

    .line 620
    .line 621
    :goto_18
    if-eqz v8, :cond_20

    .line 622
    .line 623
    const/16 v16, 0x20

    .line 624
    .line 625
    move/from16 v27, v16

    .line 626
    .line 627
    goto :goto_19

    .line 628
    :cond_20
    const/16 v27, 0x0

    .line 629
    .line 630
    :goto_19
    if-eqz v8, :cond_21

    .line 631
    .line 632
    move-object/from16 p4, v5

    .line 633
    .line 634
    iget-object v5, v8, Lcy6;->b:Ljava/lang/Object;

    .line 635
    .line 636
    check-cast v5, [B

    .line 637
    .line 638
    move-object/from16 v28, v5

    .line 639
    .line 640
    goto :goto_1b

    .line 641
    :goto_1a
    move-object/from16 v1, p0

    .line 642
    .line 643
    goto/16 :goto_20

    .line 644
    .line 645
    :cond_21
    move-object/from16 p4, v5

    .line 646
    .line 647
    const/16 v28, 0x0

    .line 648
    .line 649
    :goto_1b
    if-eqz v8, :cond_22

    .line 650
    .line 651
    iget-object v5, v8, Lcy6;->c:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v5, [B

    .line 654
    .line 655
    move-object/from16 v29, v5

    .line 656
    .line 657
    goto :goto_1c

    .line 658
    :cond_22
    const/16 v29, 0x0

    .line 659
    .line 660
    :goto_1c
    if-eqz v8, :cond_23

    .line 661
    .line 662
    iget-object v5, v8, Lcy6;->d:Ljava/lang/Object;

    .line 663
    .line 664
    check-cast v5, [B

    .line 665
    .line 666
    move-object/from16 v30, v5

    .line 667
    .line 668
    goto :goto_1d

    .line 669
    :cond_23
    const/16 v30, 0x0

    .line 670
    .line 671
    :goto_1d
    if-eqz v8, :cond_24

    .line 672
    .line 673
    iget-object v5, v8, Lcy6;->e:Ljava/lang/Object;

    .line 674
    .line 675
    check-cast v5, [B

    .line 676
    .line 677
    move-object/from16 v31, v5

    .line 678
    .line 679
    goto :goto_1e

    .line 680
    :cond_24
    const/16 v31, 0x0

    .line 681
    .line 682
    :goto_1e
    new-instance v5, Lby6;

    .line 683
    .line 684
    invoke-direct {v5, v8, v1, v0}, Lby6;-><init>(Lcy6;Lcy0;Ljava/util/ArrayList;)V

    .line 685
    .line 686
    .line 687
    invoke-static {v7, v4, v5}, Lx13;->Q(Lh07;Lny6;Lrt3;)Lvq;

    .line 688
    .line 689
    .line 690
    move-result-object v32

    .line 691
    move-object/from16 v16, v19

    .line 692
    .line 693
    move/from16 v19, p7

    .line 694
    .line 695
    invoke-virtual/range {v9 .. v32}, Lcom/swiftapps/sba/SbaArchiveNative;->createArchive(ILjava/lang/String;[B[[B[Ljava/lang/String;[I[[Ljava/lang/String;[[Ljava/lang/String;IIIIIIIIII[B[B[B[BLcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J

    .line 696
    .line 697
    .line 698
    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 699
    if-eqz v8, :cond_25

    .line 700
    .line 701
    move-object/from16 v1, p0

    .line 702
    .line 703
    :try_start_4
    invoke-virtual {v8, v1}, Lcy6;->h(Ljava/io/File;)V

    .line 704
    .line 705
    .line 706
    goto :goto_1f

    .line 707
    :catchall_0
    move-exception v0

    .line 708
    goto :goto_21

    .line 709
    :catch_0
    move-exception v0

    .line 710
    goto :goto_20

    .line 711
    :cond_25
    move-object/from16 v1, p0

    .line 712
    .line 713
    :goto_1f
    invoke-static {v0, v2, v3}, Ltu0;->A([JJ)Lqy6;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    move-object/from16 v2, p12

    .line 718
    .line 719
    invoke-interface {v2, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 720
    .line 721
    .line 722
    if-eqz v8, :cond_26

    .line 723
    .line 724
    invoke-virtual {v8}, Lcy6;->e()V

    .line 725
    .line 726
    .line 727
    :cond_26
    sget-object v29, Lm07;->Completed:Lm07;

    .line 728
    .line 729
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 730
    .line 731
    .line 732
    move-result-wide v31

    .line 733
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 734
    .line 735
    .line 736
    move-result-wide v0

    .line 737
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 738
    .line 739
    .line 740
    move-result-object v33

    .line 741
    const/16 v34, 0x8

    .line 742
    .line 743
    const/16 v30, 0x0

    .line 744
    .line 745
    move-object/from16 v27, p4

    .line 746
    .line 747
    move-object/from16 v28, v6

    .line 748
    .line 749
    move-object/from16 v26, v7

    .line 750
    .line 751
    invoke-static/range {v26 .. v34}, Lx13;->l(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;I)V

    .line 752
    .line 753
    .line 754
    sget-object v28, Ll07;->Finalize:Ll07;

    .line 755
    .line 756
    const/16 v33, 0x0

    .line 757
    .line 758
    const/16 v34, 0x38

    .line 759
    .line 760
    const-wide/16 v31, 0x0

    .line 761
    .line 762
    invoke-static/range {v26 .. v34}, Lx13;->l(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;I)V

    .line 763
    .line 764
    .line 765
    return-void

    .line 766
    :catch_1
    move-exception v0

    .line 767
    goto :goto_1a

    .line 768
    :goto_20
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    new-instance v2, Ljava/lang/StringBuilder;

    .line 773
    .line 774
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 775
    .line 776
    .line 777
    const-string v3, "Failed to create native SBA archive \'"

    .line 778
    .line 779
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    const-string v1, "\'"

    .line 786
    .line 787
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    invoke-static {v0, v1}, Lw13;->t(Ljava/io/IOException;Ljava/lang/String;)Lyy6;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 799
    :goto_21
    if-eqz v8, :cond_27

    .line 800
    .line 801
    invoke-virtual {v8}, Lcy6;->e()V

    .line 802
    .line 803
    .line 804
    :cond_27
    throw v0

    .line 805
    :catchall_1
    move-exception v0

    .line 806
    goto :goto_23

    .line 807
    :catchall_2
    move-exception v0

    .line 808
    :goto_22
    const/4 v3, 0x0

    .line 809
    goto :goto_23

    .line 810
    :catchall_3
    move-exception v0

    .line 811
    move-object/from16 v8, v26

    .line 812
    .line 813
    const/4 v2, 0x0

    .line 814
    goto :goto_22

    .line 815
    :goto_23
    if-eqz v2, :cond_28

    .line 816
    .line 817
    array-length v1, v2

    .line 818
    const/4 v10, 0x0

    .line 819
    invoke-static {v2, v10, v1, v10}, Ljava/util/Arrays;->fill([BIIB)V

    .line 820
    .line 821
    .line 822
    goto :goto_24

    .line 823
    :cond_28
    const/4 v10, 0x0

    .line 824
    :goto_24
    if-eqz v3, :cond_29

    .line 825
    .line 826
    array-length v1, v3

    .line 827
    invoke-static {v3, v10, v1, v10}, Ljava/util/Arrays;->fill([BIIB)V

    .line 828
    .line 829
    .line 830
    :cond_29
    const/16 v1, 0x10

    .line 831
    .line 832
    invoke-static {v8, v10, v1, v10}, Ljava/util/Arrays;->fill([BIIB)V

    .line 833
    .line 834
    .line 835
    invoke-static {v11, v10, v1, v10}, Ljava/util/Arrays;->fill([BIIB)V

    .line 836
    .line 837
    .line 838
    throw v0

    .line 839
    :cond_2a
    const-string v0, "Required value was null."

    .line 840
    .line 841
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    return-void

    .line 845
    :cond_2b
    invoke-static {}, Lq;->j()V

    .line 846
    .line 847
    .line 848
    return-void

    .line 849
    :cond_2c
    invoke-static {}, Lq;->j()V

    .line 850
    .line 851
    .line 852
    return-void

    .line 853
    :cond_2d
    invoke-static {}, Lq;->j()V

    .line 854
    .line 855
    .line 856
    return-void

    .line 857
    :cond_2e
    const-string v0, "Duplicate SBA entry name"

    .line 858
    .line 859
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    return-void

    .line 863
    :cond_2f
    array-length v0, v12

    .line 864
    const-string v1, "SBA archive metadata too large: "

    .line 865
    .line 866
    invoke-static {v0, v1, v9}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v0

    .line 870
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 871
    .line 872
    .line 873
    return-void
.end method

.method public static g(Ljava/io/File;)Ljava/io/File;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "Failed to create SBA output parent directory: "

    .line 30
    .line 31
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_4

    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    :goto_1
    const/16 v3, 0x64

    .line 47
    .line 48
    if-ge p0, v3, :cond_3

    .line 49
    .line 50
    new-instance v3, Ljava/io/File;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v5

    .line 60
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    const-string v8, "."

    .line 69
    .line 70
    const-string v9, ".tmp-"

    .line 71
    .line 72
    invoke-static {v8, v4, v5, v6, v9}, Lu48;->o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const-string v5, "-"

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_2

    .line 102
    .line 103
    return-object v3

    .line 104
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    const-string v0, "Failed to allocate temporary SBA output file beside "

    .line 112
    .line 113
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-object v2

    .line 121
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const-string v0, "SBA output parent is not a directory: "

    .line 126
    .line 127
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-object v2

    .line 135
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    const-string v0, "SBA output path has no parent: "

    .line 140
    .line 141
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-object v2
.end method

.method public static h(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    sget-object v0, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x1c

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcl8;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    const v0, 0x7f0a04ab

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcl8;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Lcl8;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v3, v1, Lcl8;->a:Ljava/util/WeakHashMap;

    .line 32
    .line 33
    iput-object v3, v1, Lcl8;->b:Landroid/util/SparseArray;

    .line 34
    .line 35
    iput-object v3, v1, Lcl8;->c:Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p0, v1, Lcl8;->c:Ljava/lang/ref/WeakReference;

    .line 41
    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-ne p0, p1, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput-object p0, v1, Lcl8;->c:Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    iget-object p0, v1, Lcl8;->b:Landroid/util/SparseArray;

    .line 59
    .line 60
    if-nez p0, :cond_3

    .line 61
    .line 62
    new-instance p0, Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p0, v1, Lcl8;->b:Landroid/util/SparseArray;

    .line 68
    .line 69
    :cond_3
    iget-object p0, v1, Lcl8;->b:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v1, 0x1

    .line 76
    if-ne v0, v1, :cond_4

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-ltz v0, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 95
    .line 96
    .line 97
    :cond_4
    if-nez v3, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    move-object v3, p0

    .line 108
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 109
    .line 110
    :cond_5
    if-eqz v3, :cond_8

    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    check-cast p0, Landroid/view/View;

    .line 117
    .line 118
    if-eqz p0, :cond_7

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_7

    .line 125
    .line 126
    const p1, 0x7f0a04ac

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Ljava/util/ArrayList;

    .line 134
    .line 135
    if-eqz p0, :cond_7

    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    sub-int/2addr p1, v1

    .line 142
    if-gez p1, :cond_6

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {}, Le6;->d()V

    .line 153
    .line 154
    .line 155
    return v2

    .line 156
    :cond_7
    :goto_0
    return v1

    .line 157
    :cond_8
    :goto_1
    return v2
.end method

.method public static i(Lmo4;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto/16 :goto_4

    .line 5
    .line 6
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x1c

    .line 9
    .line 10
    if-lt v1, v2, :cond_1

    .line 11
    .line 12
    invoke-interface {p0, p3}, Lmo4;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_1
    instance-of v1, p2, Landroid/app/Activity;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v1, :cond_9

    .line 22
    .line 23
    check-cast p2, Landroid/app/Activity;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/app/Activity;->onUserInteraction()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/16 p1, 0x8

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/Window;->hasFeature(I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/16 v4, 0x52

    .line 49
    .line 50
    if-ne v1, v4, :cond_5

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    sget-boolean v1, Ltu0;->j:Z

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v4, "onMenuKeyEvent"

    .line 63
    .line 64
    const-class v5, Landroid/view/KeyEvent;

    .line 65
    .line 66
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sput-object v1, Ltu0;->k:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    :catch_0
    sput-boolean v3, Ltu0;->j:Z

    .line 77
    .line 78
    :cond_2
    sget-object v1, Ltu0;->k:Ljava/lang/reflect/Method;

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    :try_start_1
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-nez p1, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    check-cast p1, Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :catch_1
    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {p0, p3}, Ldl8;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_7

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_7
    if-eqz p0, :cond_8

    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    :cond_8
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    :goto_1
    return v3

    .line 131
    :cond_9
    instance-of v1, p2, Landroid/app/Dialog;

    .line 132
    .line 133
    if-eqz v1, :cond_10

    .line 134
    .line 135
    check-cast p2, Landroid/app/Dialog;

    .line 136
    .line 137
    sget-boolean p0, Ltu0;->l:Z

    .line 138
    .line 139
    if-nez p0, :cond_a

    .line 140
    .line 141
    :try_start_2
    const-class p0, Landroid/app/Dialog;

    .line 142
    .line 143
    const-string p1, "mOnKeyListener"

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    sput-object p0, Ltu0;->m:Ljava/lang/reflect/Field;

    .line 150
    .line 151
    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 152
    .line 153
    .line 154
    :catch_2
    sput-boolean v3, Ltu0;->l:Z

    .line 155
    .line 156
    :cond_a
    sget-object p0, Ltu0;->m:Ljava/lang/reflect/Field;

    .line 157
    .line 158
    if-eqz p0, :cond_b

    .line 159
    .line 160
    :try_start_3
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :catch_3
    :cond_b
    move-object p0, v2

    .line 168
    :goto_2
    if-eqz p0, :cond_c

    .line 169
    .line 170
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    invoke-interface {p0, p2, p1, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-eqz p0, :cond_c

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_c
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_d

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_d
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {p0, p3}, Ldl8;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_e

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_e
    if-eqz p0, :cond_f

    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :cond_f
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    :goto_3
    return v3

    .line 214
    :cond_10
    if-eqz p1, :cond_11

    .line 215
    .line 216
    invoke-static {p1, p3}, Ldl8;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-nez p1, :cond_12

    .line 221
    .line 222
    :cond_11
    invoke-interface {p0, p3}, Lmo4;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    if-eqz p0, :cond_13

    .line 227
    .line 228
    :cond_12
    return v3

    .line 229
    :cond_13
    :goto_4
    return v0
.end method

.method public static j(Landroid/content/Context;F)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    float-to-int p0, p0

    .line 15
    return p0
.end method

.method public static k(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lf27;[CLjava/util/List;JLny6;Lh07;Lmt3;Z)V
    .locals 12

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    const-string v1, "SBA entryName is required when archive contains "

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    array-length v3, v0

    .line 15
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v5, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v5, v2

    .line 22
    :goto_0
    const/4 v11, 0x0

    .line 23
    :try_start_0
    new-instance v3, Lb17;

    .line 24
    .line 25
    move-object v4, p3

    .line 26
    move-wide/from16 v7, p6

    .line 27
    .line 28
    move-object/from16 v9, p8

    .line 29
    .line 30
    move-object/from16 v6, p9

    .line 31
    .line 32
    move/from16 v10, p11

    .line 33
    .line 34
    invoke-direct/range {v3 .. v10}, Lb17;-><init>(Lf27;[CLh07;JLny6;Z)V

    .line 35
    .line 36
    .line 37
    new-instance p3, Lz07;

    .line 38
    .line 39
    invoke-direct {p3, p0, v3}, Lz07;-><init>(Ljava/io/File;Lb17;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .line 41
    .line 42
    if-nez p2, :cond_1

    .line 43
    .line 44
    :try_start_1
    invoke-virtual {p3}, Lz07;->j()Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v3, 0x1

    .line 53
    if-ne v0, v3, :cond_2

    .line 54
    .line 55
    invoke-static {p2}, Lel1;->k1(Ljava/util/List;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lxy6;

    .line 60
    .line 61
    iget-object p2, p0, Lxy6;->a:Ljava/lang/String;

    .line 62
    .line 63
    :cond_1
    move-object/from16 p0, p5

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    move-object p0, v0

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    new-instance p1, Lqz6;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p2, " entries: "

    .line 88
    .line 89
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-direct {p1, p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :goto_1
    invoke-virtual {p3, p2, p1, p0}, Lz07;->h(Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lzy6;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    move-object/from16 p1, p10

    .line 108
    .line 109
    invoke-interface {p1, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .line 111
    .line 112
    :try_start_2
    invoke-virtual {p3}, Lz07;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    .line 114
    .line 115
    if-eqz v5, :cond_3

    .line 116
    .line 117
    array-length p0, v5

    .line 118
    invoke-static {v5, v11, p0, v11}, Ljava/util/Arrays;->fill([CIIC)V

    .line 119
    .line 120
    .line 121
    :cond_3
    return-void

    .line 122
    :catchall_1
    move-exception v0

    .line 123
    move-object p0, v0

    .line 124
    goto :goto_3

    .line 125
    :goto_2
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 126
    :catchall_2
    move-exception v0

    .line 127
    move-object p1, v0

    .line 128
    :try_start_4
    invoke-static {p3, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    :goto_3
    if-eqz v5, :cond_4

    .line 133
    .line 134
    array-length p1, v5

    .line 135
    invoke-static {v5, v11, p1, v11}, Ljava/util/Arrays;->fill([CIIC)V

    .line 136
    .line 137
    .line 138
    :cond_4
    throw p0
.end method

.method public static l(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Lq63;)J
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x100000000L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    const-string v1, "APKS archive entry is too large: "

    .line 15
    .line 16
    if-gtz v0, :cond_2

    .line 17
    .line 18
    const/high16 v0, 0x40000

    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :try_start_0
    sget-boolean v6, Lq63;->d:Z

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    invoke-virtual {p2, v6}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 30
    .line 31
    .line 32
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :goto_0
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 34
    .line 35
    .line 36
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    if-gez v6, :cond_0

    .line 38
    .line 39
    :try_start_2
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .line 41
    .line 42
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 43
    .line 44
    .line 45
    return-wide v4

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    int-to-long v7, v6

    .line 49
    add-long/2addr v4, v7

    .line 50
    cmp-long v7, v4, v2

    .line 51
    .line 52
    if-gtz v7, :cond_1

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    :try_start_3
    invoke-virtual {p2, v0, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_1
    move-exception p1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    :goto_1
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 91
    :catchall_2
    move-exception v0

    .line 92
    :try_start_5
    invoke-static {p2, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 96
    :goto_2
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 97
    :catchall_3
    move-exception p2

    .line 98
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw p2

    .line 102
    :cond_2
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {v1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    return-wide v4
.end method

.method public static m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 8

    .line 1
    sget v0, Ljq7;->a:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    move v0, v1

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    move v3, v2

    .line 14
    :goto_0
    if-ge v3, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_2

    .line 25
    .line 26
    move v0, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    new-array v3, v2, [Ljava/lang/Object;

    .line 32
    .line 33
    if-nez v0, :cond_a

    .line 34
    .line 35
    move-object v0, p0

    .line 36
    :goto_2
    if-eqz v0, :cond_5

    .line 37
    .line 38
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    move v4, v1

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    move v4, v2

    .line 57
    :goto_3
    if-nez v4, :cond_4

    .line 58
    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    :cond_4
    return-object v3

    .line 63
    :catch_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_2

    .line 68
    :cond_5
    sget-object v0, Lx81;->a:Ljava/util/HashMap;

    .line 69
    .line 70
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v0}, Lx81;->a(Ljava/lang/Class;Ljava/util/LinkedHashSet;)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/4 v3, 0x0

    .line 88
    :catch_1
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_9

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Ljava/lang/Class;

    .line 99
    .line 100
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    if-nez v3, :cond_6

    .line 105
    .line 106
    move v5, v1

    .line 107
    goto :goto_5

    .line 108
    :cond_6
    move v5, v2

    .line 109
    :goto_5
    const-string v6, "Reference to field %s is ambiguous relative to %s; a matching field exists on two or more implemented interfaces."

    .line 110
    .line 111
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    if-eqz v5, :cond_7

    .line 116
    .line 117
    move-object v3, v4

    .line 118
    goto :goto_4

    .line 119
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    invoke-static {v7}, Lod2;->o(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_8

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_8
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    :goto_6
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    :cond_9
    return-object v3

    .line 137
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    invoke-static {v3}, Lod2;->o(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    const-string v0, "The field name must not be blank/empty"

    .line 144
    .line 145
    if-eqz p1, :cond_b

    .line 146
    .line 147
    goto :goto_7

    .line 148
    :cond_b
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    :goto_7
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p0
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {v0, p0, v0}, Ldj7;->q(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "meta.sai_v2.json"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const-string v0, "meta.swiftbackup_v1.json"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public static o(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0xd

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public static p(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x6

    .line 10
    const/16 v2, 0x3a

    .line 11
    .line 12
    invoke-static {v2, v0, v1, p0}, Lnq7;->g0(CIILjava/lang/CharSequence;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, -0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    .line 1
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    new-instance v2, Lbn6;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    move-object v0, v2

    .line 37
    :goto_0
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    goto :goto_5

    .line 44
    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/time/OffsetDateTime;->toInstant()Ljava/time/Instant;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    goto :goto_1

    .line 61
    :catchall_1
    move-exception v0

    .line 62
    new-instance v2, Lbn6;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    move-object v0, v2

    .line 68
    :goto_1
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_2
    :try_start_2
    sget-object v0, Ljava/time/format/DateTimeFormatter;->RFC_1123_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 76
    .line 77
    invoke-static {p0, v0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 93
    goto :goto_2

    .line 94
    :catchall_2
    move-exception p0

    .line 95
    new-instance v0, Lbn6;

    .line 96
    .line 97
    invoke-direct {v0, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    move-object p0, v0

    .line 101
    :goto_2
    nop

    .line 102
    instance-of v0, p0, Lbn6;

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_3
    move-object v1, p0

    .line 108
    :goto_3
    move-object v0, v1

    .line 109
    check-cast v0, Ljava/lang/Long;

    .line 110
    .line 111
    :goto_4
    check-cast v0, Ljava/lang/Long;

    .line 112
    .line 113
    :goto_5
    check-cast v0, Ljava/lang/Long;

    .line 114
    .line 115
    return-object v0
.end method

.method public static r(Ljava/lang/String;)Lni1;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p0, Lni1;

    .line 12
    .line 13
    invoke-direct {p0, v1, v1}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v3, Ljava/io/StringReader;

    .line 30
    .line 31
    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    move v5, p0

    .line 39
    move-object v3, v1

    .line 40
    move-object v4, v3

    .line 41
    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eq v6, v2, :cond_c

    .line 46
    .line 47
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    const/4 v7, 0x2

    .line 52
    const-string v8, "prop"

    .line 53
    .line 54
    if-eq v6, v7, :cond_3

    .line 55
    .line 56
    const/4 v7, 0x3

    .line 57
    if-eq v6, v7, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-static {v0}, Ltu0;->p(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_1

    .line 69
    .line 70
    move v5, p0

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-static {v0}, Ltu0;->p(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    const v9, -0x46ea4cee

    .line 81
    .line 82
    .line 83
    const-wide/16 v10, 0x0

    .line 84
    .line 85
    if-eq v7, v9, :cond_9

    .line 86
    .line 87
    const v9, -0xbcccf30

    .line 88
    .line 89
    .line 90
    if-eq v7, v9, :cond_6

    .line 91
    .line 92
    const v9, 0x34a363

    .line 93
    .line 94
    .line 95
    if-eq v7, v9, :cond_4

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-nez v6, :cond_5

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    move v5, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_6
    const-string v7, "quota-used-bytes"

    .line 108
    .line 109
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-nez v6, :cond_7

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_7
    if-eqz v5, :cond_1

    .line 117
    .line 118
    invoke-static {v0}, Ltu0;->t(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v3}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    if-eqz v3, :cond_8

    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 129
    .line 130
    .line 131
    move-result-wide v6

    .line 132
    cmp-long v6, v6, v10

    .line 133
    .line 134
    if-ltz v6, :cond_8

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_8
    move-object v3, v1

    .line 138
    goto :goto_0

    .line 139
    :cond_9
    const-string v7, "quota-available-bytes"

    .line 140
    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-nez v6, :cond_a

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_a
    if-eqz v5, :cond_1

    .line 149
    .line 150
    invoke-static {v0}, Ltu0;->t(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-static {v4}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    if-eqz v4, :cond_b

    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 161
    .line 162
    .line 163
    move-result-wide v6

    .line 164
    cmp-long v6, v6, v10

    .line 165
    .line 166
    if-ltz v6, :cond_b

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_b
    move-object v4, v1

    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_c
    if-eqz v3, :cond_d

    .line 173
    .line 174
    if-eqz v4, :cond_d

    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 177
    .line 178
    .line 179
    move-result-wide v0

    .line 180
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 181
    .line 182
    .line 183
    move-result-wide v4

    .line 184
    add-long/2addr v4, v0

    .line 185
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    :cond_d
    new-instance p0, Lni1;

    .line 190
    .line 191
    invoke-direct {p0, v3, v1}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 192
    .line 193
    .line 194
    return-object p0
.end method

.method public static s(Ljava/lang/String;)Ljava/util/List;
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static/range {p0 .. p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lov2;->a:Lov2;

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v2, Ljava/io/StringReader;

    .line 26
    .line 27
    move-object/from16 v3, p0

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    move v5, v3

    .line 43
    move-object v6, v4

    .line 44
    move-object v7, v6

    .line 45
    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eq v8, v1, :cond_20

    .line 50
    .line 51
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    const-string v9, "propstat"

    .line 56
    .line 57
    const-string v10, "response"

    .line 58
    .line 59
    const-string v11, "prop"

    .line 60
    .line 61
    const/4 v12, 0x2

    .line 62
    if-eq v8, v12, :cond_16

    .line 63
    .line 64
    const/4 v12, 0x3

    .line 65
    if-eq v8, v12, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-static {v0}, Ltu0;->p(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v12

    .line 76
    const v13, -0x3b2bbfc9

    .line 77
    .line 78
    .line 79
    if-eq v12, v13, :cond_c

    .line 80
    .line 81
    const v9, -0x1448ebbf

    .line 82
    .line 83
    .line 84
    if-eq v12, v9, :cond_4

    .line 85
    .line 86
    const v9, 0x34a363

    .line 87
    .line 88
    .line 89
    if-eq v12, v9, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eqz v8, :cond_1

    .line 97
    .line 98
    move v5, v3

    .line 99
    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-nez v8, :cond_5

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    if-eqz v7, :cond_b

    .line 108
    .line 109
    iget-object v8, v7, Lxq8;->a:Ljava/lang/String;

    .line 110
    .line 111
    if-eqz v8, :cond_a

    .line 112
    .line 113
    invoke-static {v8}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-nez v9, :cond_6

    .line 118
    .line 119
    move-object v11, v8

    .line 120
    goto :goto_1

    .line 121
    :cond_6
    move-object v11, v4

    .line 122
    :goto_1
    if-nez v11, :cond_7

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_7
    new-instance v10, Lqq8;

    .line 126
    .line 127
    const/16 v8, 0x3f

    .line 128
    .line 129
    invoke-static {v11, v8}, Lnq7;->D0(Ljava/lang/String;C)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    new-array v9, v1, [C

    .line 134
    .line 135
    const/16 v12, 0x2f

    .line 136
    .line 137
    aput-char v12, v9, v3

    .line 138
    .line 139
    invoke-static {v8, v9}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-static {v8, v12}, Lnq7;->B0(Ljava/lang/String;C)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result v12

    .line 151
    if-lez v12, :cond_8

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_8
    move-object v9, v4

    .line 155
    :goto_2
    if-nez v9, :cond_9

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_9
    move-object v8, v9

    .line 159
    :goto_3
    const-string v9, "+"

    .line 160
    .line 161
    const-string v12, "%2B"

    .line 162
    .line 163
    invoke-static {v8, v9, v12}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 168
    .line 169
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    iget-boolean v13, v7, Lxq8;->b:Z

    .line 181
    .line 182
    iget-object v14, v7, Lxq8;->c:Ljava/lang/Long;

    .line 183
    .line 184
    iget-object v15, v7, Lxq8;->d:Ljava/lang/Long;

    .line 185
    .line 186
    iget-object v7, v7, Lxq8;->e:Ljava/lang/Long;

    .line 187
    .line 188
    move-object/from16 v16, v7

    .line 189
    .line 190
    invoke-direct/range {v10 .. v16}, Lqq8;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_a
    :goto_4
    move-object v10, v4

    .line 195
    :goto_5
    if-eqz v10, :cond_b

    .line 196
    .line 197
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    :cond_b
    move-object v7, v4

    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_c
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    if-nez v8, :cond_d

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_d
    if-eqz v6, :cond_15

    .line 212
    .line 213
    iget-object v8, v6, Lwq8;->a:Ljava/lang/String;

    .line 214
    .line 215
    if-eqz v8, :cond_f

    .line 216
    .line 217
    const-string v9, " 200 "

    .line 218
    .line 219
    invoke-static {v8, v9, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    if-ne v8, v1, :cond_e

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_e
    iget-object v8, v6, Lwq8;->a:Ljava/lang/String;

    .line 227
    .line 228
    if-eqz v8, :cond_15

    .line 229
    .line 230
    const-string v9, " 200 OK"

    .line 231
    .line 232
    invoke-static {v8, v9, v3}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    if-ne v8, v1, :cond_15

    .line 237
    .line 238
    :cond_f
    :goto_6
    if-eqz v7, :cond_15

    .line 239
    .line 240
    iget-boolean v8, v7, Lxq8;->b:Z

    .line 241
    .line 242
    if-nez v8, :cond_11

    .line 243
    .line 244
    iget-boolean v8, v6, Lwq8;->b:Z

    .line 245
    .line 246
    if-eqz v8, :cond_10

    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_10
    move v8, v3

    .line 250
    goto :goto_8

    .line 251
    :cond_11
    :goto_7
    move v8, v1

    .line 252
    :goto_8
    iput-boolean v8, v7, Lxq8;->b:Z

    .line 253
    .line 254
    iget-object v8, v6, Lwq8;->c:Ljava/lang/Long;

    .line 255
    .line 256
    if-nez v8, :cond_12

    .line 257
    .line 258
    iget-object v8, v7, Lxq8;->c:Ljava/lang/Long;

    .line 259
    .line 260
    :cond_12
    iput-object v8, v7, Lxq8;->c:Ljava/lang/Long;

    .line 261
    .line 262
    iget-object v8, v6, Lwq8;->d:Ljava/lang/Long;

    .line 263
    .line 264
    if-nez v8, :cond_13

    .line 265
    .line 266
    iget-object v8, v7, Lxq8;->d:Ljava/lang/Long;

    .line 267
    .line 268
    :cond_13
    iput-object v8, v7, Lxq8;->d:Ljava/lang/Long;

    .line 269
    .line 270
    iget-object v6, v6, Lwq8;->e:Ljava/lang/Long;

    .line 271
    .line 272
    if-nez v6, :cond_14

    .line 273
    .line 274
    iget-object v6, v7, Lxq8;->e:Ljava/lang/Long;

    .line 275
    .line 276
    :cond_14
    iput-object v6, v7, Lxq8;->e:Ljava/lang/Long;

    .line 277
    .line 278
    :cond_15
    move-object v6, v4

    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_16
    invoke-static {v0}, Ltu0;->p(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 286
    .line 287
    .line 288
    move-result v12

    .line 289
    sparse-switch v12, :sswitch_data_0

    .line 290
    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :sswitch_0
    const-string v9, "creationdate"

    .line 295
    .line 296
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    if-nez v8, :cond_17

    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :cond_17
    if-eqz v5, :cond_1

    .line 305
    .line 306
    if-eqz v6, :cond_1

    .line 307
    .line 308
    invoke-static {v0}, Ltu0;->t(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    invoke-static {v8}, Ltu0;->q(Ljava/lang/String;)Ljava/lang/Long;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    iput-object v8, v6, Lwq8;->d:Ljava/lang/Long;

    .line 317
    .line 318
    goto/16 :goto_0

    .line 319
    .line 320
    :sswitch_1
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v8

    .line 324
    if-nez v8, :cond_18

    .line 325
    .line 326
    goto/16 :goto_0

    .line 327
    .line 328
    :cond_18
    move v5, v1

    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :sswitch_2
    const-string v9, "href"

    .line 332
    .line 333
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v8

    .line 337
    if-nez v8, :cond_19

    .line 338
    .line 339
    goto/16 :goto_0

    .line 340
    .line 341
    :cond_19
    if-eqz v7, :cond_1

    .line 342
    .line 343
    invoke-static {v0}, Ltu0;->t(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v8

    .line 347
    iput-object v8, v7, Lxq8;->a:Ljava/lang/String;

    .line 348
    .line 349
    goto/16 :goto_0

    .line 350
    .line 351
    :sswitch_3
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v8

    .line 355
    if-nez v8, :cond_1a

    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :cond_1a
    new-instance v7, Lxq8;

    .line 360
    .line 361
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 362
    .line 363
    .line 364
    iput-object v4, v7, Lxq8;->a:Ljava/lang/String;

    .line 365
    .line 366
    iput-boolean v3, v7, Lxq8;->b:Z

    .line 367
    .line 368
    iput-object v4, v7, Lxq8;->c:Ljava/lang/Long;

    .line 369
    .line 370
    iput-object v4, v7, Lxq8;->d:Ljava/lang/Long;

    .line 371
    .line 372
    iput-object v4, v7, Lxq8;->e:Ljava/lang/Long;

    .line 373
    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :sswitch_4
    const-string v9, "status"

    .line 377
    .line 378
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v8

    .line 382
    if-nez v8, :cond_1b

    .line 383
    .line 384
    goto/16 :goto_0

    .line 385
    .line 386
    :cond_1b
    if-eqz v6, :cond_1

    .line 387
    .line 388
    invoke-static {v0}, Ltu0;->t(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v8

    .line 392
    iput-object v8, v6, Lwq8;->a:Ljava/lang/String;

    .line 393
    .line 394
    goto/16 :goto_0

    .line 395
    .line 396
    :sswitch_5
    const-string v9, "getlastmodified"

    .line 397
    .line 398
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v8

    .line 402
    if-nez v8, :cond_1c

    .line 403
    .line 404
    goto/16 :goto_0

    .line 405
    .line 406
    :cond_1c
    if-eqz v5, :cond_1

    .line 407
    .line 408
    if-eqz v6, :cond_1

    .line 409
    .line 410
    invoke-static {v0}, Ltu0;->t(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v8

    .line 414
    invoke-static {v8}, Ltu0;->q(Ljava/lang/String;)Ljava/lang/Long;

    .line 415
    .line 416
    .line 417
    move-result-object v8

    .line 418
    iput-object v8, v6, Lwq8;->e:Ljava/lang/Long;

    .line 419
    .line 420
    goto/16 :goto_0

    .line 421
    .line 422
    :sswitch_6
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v8

    .line 426
    if-nez v8, :cond_1d

    .line 427
    .line 428
    goto/16 :goto_0

    .line 429
    .line 430
    :cond_1d
    new-instance v6, Lwq8;

    .line 431
    .line 432
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 433
    .line 434
    .line 435
    iput-object v4, v6, Lwq8;->a:Ljava/lang/String;

    .line 436
    .line 437
    iput-boolean v3, v6, Lwq8;->b:Z

    .line 438
    .line 439
    iput-object v4, v6, Lwq8;->c:Ljava/lang/Long;

    .line 440
    .line 441
    iput-object v4, v6, Lwq8;->d:Ljava/lang/Long;

    .line 442
    .line 443
    iput-object v4, v6, Lwq8;->e:Ljava/lang/Long;

    .line 444
    .line 445
    goto/16 :goto_0

    .line 446
    .line 447
    :sswitch_7
    const-string v9, "getcontentlength"

    .line 448
    .line 449
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v8

    .line 453
    if-nez v8, :cond_1e

    .line 454
    .line 455
    goto/16 :goto_0

    .line 456
    .line 457
    :cond_1e
    if-eqz v5, :cond_1

    .line 458
    .line 459
    if-eqz v6, :cond_1

    .line 460
    .line 461
    invoke-static {v0}, Ltu0;->t(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v8

    .line 465
    invoke-static {v8}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    iput-object v8, v6, Lwq8;->c:Ljava/lang/Long;

    .line 470
    .line 471
    goto/16 :goto_0

    .line 472
    .line 473
    :sswitch_8
    const-string v9, "collection"

    .line 474
    .line 475
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v8

    .line 479
    if-nez v8, :cond_1f

    .line 480
    .line 481
    goto/16 :goto_0

    .line 482
    .line 483
    :cond_1f
    if-eqz v5, :cond_1

    .line 484
    .line 485
    if-eqz v6, :cond_1

    .line 486
    .line 487
    iput-boolean v1, v6, Lwq8;->b:Z

    .line 488
    .line 489
    goto/16 :goto_0

    .line 490
    .line 491
    :cond_20
    return-object v2

    .line 492
    nop

    .line 493
    :sswitch_data_0
    .sparse-switch
        -0x67ca5162 -> :sswitch_8
        -0x5bdf02f7 -> :sswitch_7
        -0x3b2bbfc9 -> :sswitch_6
        -0x37ef224b -> :sswitch_5
        -0x3532300e -> :sswitch_4
        -0x1448ebbf -> :sswitch_3
        0x30ff2b -> :sswitch_2
        0x34a363 -> :sswitch_1
        0x5e8fd70d -> :sswitch_0
    .end sparse-switch
.end method

.method public static t(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v2, v3, :cond_3

    .line 16
    .line 17
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x3

    .line 22
    if-eq v2, v3, :cond_2

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    if-eq v2, v3, :cond_1

    .line 26
    .line 27
    const/4 v3, 0x5

    .line 28
    if-eq v2, v3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-ne v2, v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-class v0, Landroid/app/ActivityManager;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ltu0;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Lri8;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lri8;-><init>([Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    and-int/lit8 p0, p0, 0x7

    .line 69
    .line 70
    if-nez p0, :cond_1

    .line 71
    .line 72
    const/4 p0, 0x1

    .line 73
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    :catch_0
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    invoke-static {v0}, Lod2;->o(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const-string v2, "The field \'%s\' is not static"

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :goto_1
    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method public static v(F)I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const-string p0, "Cannot round NaN value."

    .line 13
    .line 14
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static w(D)J
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0

    .line 12
    :cond_0
    const-string p0, "Cannot round NaN value."

    .line 13
    .line 14
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 p0, 0x0

    .line 18
    .line 19
    return-wide p0
.end method

.method public static x(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/app/Activity;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p0, Landroid/content/ContextWrapper;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Ltu0;->x(Landroid/content/Context;)Landroid/app/Activity;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static y(Lil0;Ljava/lang/String;Lmt3;)V
    .locals 7

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget p1, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 10
    .line 11
    invoke-static {p0}, Lrs9;->u(Lk28;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Lj75;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lj75;-><init>(Lil0;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lj75;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/16 v3, 0x1e

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-static {v3, v4}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-lez v5, :cond_1

    .line 58
    .line 59
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move-object v4, v2

    .line 67
    :goto_0
    iget-object v5, v0, Lj75;->c:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v5, Lcom/google/android/material/textfield/TextInputLayout;

    .line 70
    .line 71
    invoke-virtual {v5, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 72
    .line 73
    .line 74
    const/4 v6, 0x2

    .line 75
    invoke-virtual {v5, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 76
    .line 77
    .line 78
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    .line 79
    .line 80
    invoke-direct {v5, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 81
    .line 82
    .line 83
    filled-new-array {v5}, [Landroid/text/InputFilter$LengthFilter;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, [Landroid/text/InputFilter;

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 90
    .line 91
    .line 92
    if-eqz v4, :cond_3

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_2

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_1
    iget-object v3, v0, Lj75;->b:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v3, Landroid/widget/TextView;

    .line 107
    .line 108
    if-eqz v4, :cond_5

    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-nez v4, :cond_4

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    const v4, 0x7f130213

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    :goto_2
    const v4, 0x7f130028

    .line 122
    .line 123
    .line 124
    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 125
    .line 126
    .line 127
    new-instance v3, Lhv1;

    .line 128
    .line 129
    const v4, 0x7f140160

    .line 130
    .line 131
    .line 132
    invoke-direct {v3, p0, v4}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 133
    .line 134
    .line 135
    new-instance v5, Ls35;

    .line 136
    .line 137
    invoke-direct {v5, p0, v4, v3, v2}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 138
    .line 139
    .line 140
    iget-object p0, v0, Lj75;->a:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p0, Lke;

    .line 143
    .line 144
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 147
    .line 148
    iget-object v2, v5, Lva;->b:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v2, Lra;

    .line 151
    .line 152
    iput-object p0, v2, Lra;->s:Landroid/view/View;

    .line 153
    .line 154
    invoke-virtual {v5}, Ls35;->m()Lwa;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    iget-object v2, v0, Lj75;->e:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 161
    .line 162
    new-instance v3, Lko5;

    .line 163
    .line 164
    invoke-direct {v3, p1, v0, p2, p0}, Lko5;-><init>(Ljava/lang/String;Lj75;Lmt3;Lwa;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    invoke-static {p1, v0}, Lj75;->b(Ljava/lang/String;Lj75;)V

    .line 171
    .line 172
    .line 173
    new-instance v2, Lm52;

    .line 174
    .line 175
    const/4 v3, 0x1

    .line 176
    invoke-direct {v2, v3, p1, v0}, Lm52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    .line 181
    .line 182
    iget-object p1, v0, Lj75;->f:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 185
    .line 186
    new-instance v1, Lm51;

    .line 187
    .line 188
    const/4 v2, 0x4

    .line 189
    invoke-direct {v1, v2, p2, p0}, Lm51;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    iget-object p1, v0, Lj75;->k:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast p1, Landroid/widget/ImageView;

    .line 198
    .line 199
    new-instance p2, Lh00;

    .line 200
    .line 201
    const/16 v0, 0x8

    .line 202
    .line 203
    invoke-direct {p2, p0, v0}, Lh00;-><init>(Ljava/lang/Object;I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method public static z(ILc33;)Ll22;
    .locals 6

    .line 1
    new-instance v1, Lf36;

    .line 2
    .line 3
    invoke-direct {v1, p0}, Lf36;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ll22;

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x0

    .line 10
    sget-object v3, Ltu0;->g:Lhx0;

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Ll22;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
