.class public final Lrx8;
.super Ljava/lang/Object;


# static fields
.field public static final h:Ljava/util/Map;


# instance fields
.field public final a:Lhg2;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Lun8;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lrx8;

    .line 12
    .line 13
    sget-object v3, Lpj5;->a:Lf1;

    .line 14
    .line 15
    const/16 v4, 0xa

    .line 16
    .line 17
    invoke-direct {v2, v4, v3}, Lrx8;-><init>(ILf1;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lrx8;

    .line 29
    .line 30
    const/16 v5, 0x10

    .line 31
    .line 32
    invoke-direct {v2, v5, v3}, Lrx8;-><init>(ILf1;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v2, Lrx8;

    .line 44
    .line 45
    const/16 v6, 0x14

    .line 46
    .line 47
    invoke-direct {v2, v6, v3}, Lrx8;-><init>(ILf1;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x4

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Lrx8;

    .line 59
    .line 60
    sget-object v3, Lpj5;->b:Lf1;

    .line 61
    .line 62
    invoke-direct {v2, v4, v3}, Lrx8;-><init>(ILf1;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x5

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Lrx8;

    .line 74
    .line 75
    invoke-direct {v2, v5, v3}, Lrx8;-><init>(ILf1;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x6

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    new-instance v2, Lrx8;

    .line 87
    .line 88
    invoke-direct {v2, v6, v3}, Lrx8;-><init>(ILf1;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    const/4 v1, 0x7

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    new-instance v2, Lrx8;

    .line 100
    .line 101
    sget-object v3, Lpj5;->e:Lf1;

    .line 102
    .line 103
    invoke-direct {v2, v4, v3}, Lrx8;-><init>(ILf1;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    const/16 v1, 0x8

    .line 110
    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    new-instance v2, Lrx8;

    .line 116
    .line 117
    invoke-direct {v2, v5, v3}, Lrx8;-><init>(ILf1;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    const/16 v1, 0x9

    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    new-instance v2, Lrx8;

    .line 130
    .line 131
    invoke-direct {v2, v6, v3}, Lrx8;-><init>(ILf1;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    new-instance v2, Lrx8;

    .line 142
    .line 143
    sget-object v3, Lpj5;->f:Lf1;

    .line 144
    .line 145
    invoke-direct {v2, v4, v3}, Lrx8;-><init>(ILf1;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    const/16 v1, 0xb

    .line 152
    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    new-instance v2, Lrx8;

    .line 158
    .line 159
    invoke-direct {v2, v5, v3}, Lrx8;-><init>(ILf1;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    const/16 v1, 0xc

    .line 166
    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    new-instance v2, Lrx8;

    .line 172
    .line 173
    invoke-direct {v2, v6, v3}, Lrx8;-><init>(ILf1;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    sput-object v0, Lrx8;->h:Ljava/util/Map;

    .line 184
    .line 185
    return-void
.end method

.method public constructor <init>(ILf1;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-lt p1, v1, :cond_4

    .line 7
    .line 8
    if-eqz p2, :cond_3

    .line 9
    .line 10
    iput p1, p0, Lrx8;->b:I

    .line 11
    .line 12
    move v2, v1

    .line 13
    :goto_0
    iget v3, p0, Lrx8;->b:I

    .line 14
    .line 15
    if-gt v2, v3, :cond_2

    .line 16
    .line 17
    sub-int/2addr v3, v2

    .line 18
    rem-int/2addr v3, v1

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    iput v2, p0, Lrx8;->c:I

    .line 22
    .line 23
    sget-object v1, Lll2;->b:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iput-object v1, p0, Lrx8;->e:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Lun8;

    .line 36
    .line 37
    invoke-direct {v0, p2}, Lun8;-><init>(Lf1;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lrx8;->g:Lun8;

    .line 41
    .line 42
    iget p2, v0, Lun8;->a:I

    .line 43
    .line 44
    iput p2, p0, Lrx8;->f:I

    .line 45
    .line 46
    iget v2, v0, Lun8;->b:I

    .line 47
    .line 48
    iput v2, p0, Lrx8;->d:I

    .line 49
    .line 50
    sget-object v3, Lhg2;->c:Ljava/util/Map;

    .line 51
    .line 52
    iget v0, v0, Lun8;->c:I

    .line 53
    .line 54
    invoke-static {v1, p2, v2, v0, p1}, Lhg2;->a(Ljava/lang/String;IIII)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lhg2;

    .line 63
    .line 64
    iput-object p1, p0, Lrx8;->a:Lhg2;

    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    const-string p0, "unrecognized digest oid: "

    .line 68
    .line 69
    invoke-static {p2, p0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-string p0, "should never happen..."

    .line 77
    .line 78
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_3
    const-string p0, "digest == null"

    .line 83
    .line 84
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_4
    const-string p0, "height must be >= 2"

    .line 89
    .line 90
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0
.end method

.method public constructor <init>(ILhl2;)V
    .locals 0

    .line 94
    invoke-interface {p2}, Lhl2;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lll2;->b(Ljava/lang/String;)Lf1;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lrx8;-><init>(ILf1;)V

    return-void
.end method
