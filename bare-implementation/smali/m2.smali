.class public abstract Lm2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final e:Ljava/util/HashMap;

.field public static final f:Ld2;

.field public static final g:Le2;

.field public static final h:Lg2;

.field public static final i:Lh2;

.field public static final j:Li2;

.field public static final k:Lj2;

.field public static final l:Lk2;

.field public static final m:Ll2;


# instance fields
.field public final a:Ln2;

.field public final b:I

.field public final c:Ljava/util/Set;

.field public final d:Ld0;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm2;->e:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Ld2;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    sget-object v3, Ld0;->b:Ld0;

    .line 12
    .line 13
    invoke-direct {v1, v2, v3}, Lm2;-><init>(ILd0;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lm2;->f:Ld2;

    .line 17
    .line 18
    new-instance v4, Le2;

    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    invoke-direct {v4, v5, v3}, Lm2;-><init>(ILd0;)V

    .line 22
    .line 23
    .line 24
    sput-object v4, Lm2;->g:Le2;

    .line 25
    .line 26
    new-instance v6, Lf2;

    .line 27
    .line 28
    sget-object v7, Ld0;->c:Ld0;

    .line 29
    .line 30
    invoke-static {v3, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    sget-object v9, Ln2;->b:Ln2;

    .line 35
    .line 36
    const/4 v10, 0x3

    .line 37
    invoke-direct {v6, v9, v10, v3, v8}, Lm2;-><init>(Ln2;ILd0;Ljava/util/Set;)V

    .line 38
    .line 39
    .line 40
    new-instance v8, Lg2;

    .line 41
    .line 42
    invoke-static {v3, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    const/4 v12, 0x4

    .line 47
    invoke-direct {v8, v9, v12, v11}, Lm2;-><init>(Ln2;ILjava/util/EnumSet;)V

    .line 48
    .line 49
    .line 50
    sput-object v8, Lm2;->h:Lg2;

    .line 51
    .line 52
    new-instance v9, Lh2;

    .line 53
    .line 54
    const/4 v11, 0x5

    .line 55
    invoke-direct {v9, v11, v3}, Lm2;-><init>(ILd0;)V

    .line 56
    .line 57
    .line 58
    sput-object v9, Lm2;->i:Lh2;

    .line 59
    .line 60
    new-instance v13, Li2;

    .line 61
    .line 62
    const/4 v14, 0x6

    .line 63
    invoke-direct {v13, v14, v3}, Lm2;-><init>(ILd0;)V

    .line 64
    .line 65
    .line 66
    sput-object v13, Lm2;->j:Li2;

    .line 67
    .line 68
    new-instance v15, Lj2;

    .line 69
    .line 70
    move/from16 v16, v2

    .line 71
    .line 72
    const/16 v2, 0xa

    .line 73
    .line 74
    invoke-direct {v15, v2, v3}, Lm2;-><init>(ILd0;)V

    .line 75
    .line 76
    .line 77
    sput-object v15, Lm2;->k:Lj2;

    .line 78
    .line 79
    new-instance v3, Lk2;

    .line 80
    .line 81
    move/from16 v17, v2

    .line 82
    .line 83
    const/16 v2, 0x11

    .line 84
    .line 85
    invoke-direct {v3, v2, v7}, Lm2;-><init>(ILd0;)V

    .line 86
    .line 87
    .line 88
    sput-object v3, Lm2;->l:Lk2;

    .line 89
    .line 90
    move/from16 v18, v2

    .line 91
    .line 92
    new-instance v2, Ll2;

    .line 93
    .line 94
    move/from16 v19, v5

    .line 95
    .line 96
    const/16 v5, 0x10

    .line 97
    .line 98
    invoke-direct {v2, v5, v7}, Lm2;-><init>(ILd0;)V

    .line 99
    .line 100
    .line 101
    sput-object v2, Lm2;->m:Ll2;

    .line 102
    .line 103
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public constructor <init>(ILd0;)V
    .locals 2

    sget-object v0, Ln2;->b:Ln2;

    .line 16
    invoke-static {p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lm2;-><init>(Ln2;ILd0;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ln2;ILd0;Ljava/util/Set;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lm2;->a:Ln2;

    .line 19
    iput p2, p0, Lm2;->b:I

    .line 20
    iput-object p4, p0, Lm2;->c:Ljava/util/Set;

    .line 21
    iput-object p3, p0, Lm2;->d:Ld0;

    return-void
.end method

.method public constructor <init>(Ln2;ILjava/util/EnumSet;)V
    .locals 2

    .line 1
    sget-object v0, Ld0;->b:Ld0;

    .line 2
    .line 3
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Ld0;->c:Ld0;

    .line 11
    .line 12
    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Lm2;-><init>(Ln2;ILd0;Ljava/util/Set;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static b(Ln2;I)Lm2;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lm2;->e:Ljava/util/HashMap;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-ne v0, v2, :cond_3

    .line 17
    .line 18
    :cond_0
    new-instance v0, Lc2;

    .line 19
    .line 20
    sget-object v1, Ld0;->b:Ld0;

    .line 21
    .line 22
    sget-object v2, Ld0;->c:Ld0;

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, p0, p1, v1}, Lm2;-><init>(Ln2;ILjava/util/EnumSet;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lm2;

    .line 51
    .line 52
    iget v3, v2, Lm2;->b:I

    .line 53
    .line 54
    if-ne v3, p1, :cond_2

    .line 55
    .line 56
    iget-object v3, v2, Lm2;->a:Ln2;

    .line 57
    .line 58
    if-ne p0, v3, :cond_2

    .line 59
    .line 60
    return-object v2

    .line 61
    :cond_3
    new-instance v0, Lo1;

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    filled-new-array {p0, p1, v1}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string p1, "Unknown ASN.1 tag \'%s:%s\' found (%s)"

    .line 72
    .line 73
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0
.end method


# virtual methods
.method public final a(Ld0;)Lm2;
    .locals 7

    .line 1
    iget-object v0, p0, Lm2;->d:Ld0;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lm2;->c:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v1, Lb2;

    .line 15
    .line 16
    iget v4, p0, Lm2;->b:I

    .line 17
    .line 18
    iget-object v6, p0, Lm2;->c:Ljava/util/Set;

    .line 19
    .line 20
    iget-object v3, p0, Lm2;->a:Ln2;

    .line 21
    .line 22
    move-object v2, p0

    .line 23
    move-object v5, p1

    .line 24
    invoke-direct/range {v1 .. v6}, Lb2;-><init>(Lm2;Ln2;ILd0;Ljava/util/Set;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    move-object v2, p0

    .line 29
    move-object v5, p1

    .line 30
    const-string p0, "The ASN.1 tag %s does not support encoding as %s"

    .line 31
    .line 32
    filled-new-array {v2, v5}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Ll0;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method public abstract c(Lnh4;)Lol1;
.end method

.method public abstract d(Lnh4;)Lol1;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    check-cast p1, Lm2;

    .line 20
    .line 21
    iget v2, p0, Lm2;->b:I

    .line 22
    .line 23
    iget v3, p1, Lm2;->b:I

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Lm2;->a:Ln2;

    .line 28
    .line 29
    iget-object v3, p1, Lm2;->a:Ln2;

    .line 30
    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    iget-object p0, p0, Lm2;->d:Ld0;

    .line 34
    .line 35
    iget-object p1, p1, Lm2;->d:Ld0;

    .line 36
    .line 37
    if-ne p0, p1, :cond_2

    .line 38
    .line 39
    return v0

    .line 40
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lm2;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lm2;->d:Ld0;

    .line 8
    .line 9
    iget-object p0, p0, Lm2;->a:Ln2;

    .line 10
    .line 11
    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ASN1Tag["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lm2;->a:Ln2;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ","

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lm2;->d:Ld0;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget p0, p0, Lm2;->b:I

    .line 27
    .line 28
    const/16 v1, 0x5d

    .line 29
    .line 30
    invoke-static {v0, p0, v1}, Leq3;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
