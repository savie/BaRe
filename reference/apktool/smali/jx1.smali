.class public final Ljx1;
.super Lr4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/util/ArrayList;


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
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ljx1;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    return-void
.end method

.method public static j(Lbs2;Ljava/lang/String;Ljava/lang/String;Lws0;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lbs2;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lbs2;->g()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lbs2;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lwj7;

    .line 11
    .line 12
    iget-object v2, v1, Lwj7;->a:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const/16 v3, 0xa0

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v4, 0xa

    .line 20
    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v4, p0, Lbs2;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v4, Lj75;

    .line 27
    .line 28
    iget-object v4, v4, Lj75;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v4, Lsl4;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v1, v4, p2}, Lwj7;->b(ILjava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lbs2;->b()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3}, Lwj7;->a(C)V

    .line 49
    .line 50
    .line 51
    sget-object p2, Llg7;->g:Lq86;

    .line 52
    .line 53
    iget-object v1, p0, Lbs2;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Ldi4;

    .line 56
    .line 57
    invoke-virtual {p2, v1, p1}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p3, v0}, Lbs2;->h(Lon5;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p3}, Lbs2;->a(Lon5;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final b(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final d(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V
    .locals 7

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const-class v0, Lru5;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p2, v1, p0, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, [Lru5;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    array-length v2, p0

    .line 21
    move v3, v1

    .line 22
    :goto_0
    if-ge v3, v2, :cond_0

    .line 23
    .line 24
    aget-object v4, p0, v3

    .line 25
    .line 26
    iget-object v5, v4, Lru5;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/high16 v6, 0x3f000000    # 0.5f

    .line 33
    .line 34
    add-float/2addr v5, v6

    .line 35
    float-to-int v5, v5

    .line 36
    iput v5, v4, Lru5;->d:I

    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    const-class v0, Ly18;

    .line 46
    .line 47
    invoke-interface {p2, v1, p0, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, [Ly18;

    .line 52
    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    array-length v0, p0

    .line 56
    move v2, v1

    .line 57
    :goto_1
    if-ge v2, v0, :cond_1

    .line 58
    .line 59
    aget-object v3, p0, v2

    .line 60
    .line 61
    invoke-interface {p2, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    new-instance p0, Ly18;

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ly18;-><init>(Landroid/widget/TextView;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const/16 v0, 0x12

    .line 77
    .line 78
    invoke-interface {p2, p0, v1, p1, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final g(Lbb2;)V
    .locals 4

    .line 1
    new-instance p0, Lak1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lak1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lhv2;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2}, Lhv2;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const-class v3, Lar7;

    .line 14
    .line 15
    invoke-virtual {p1, v3, v1}, Lbb2;->a(Ljava/lang/Class;Lsj7;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lhv2;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lhv2;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const-class v3, Ldv2;

    .line 24
    .line 25
    invoke-virtual {p1, v3, v1}, Lbb2;->a(Ljava/lang/Class;Lsj7;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Let0;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    const-class v3, Lat0;

    .line 34
    .line 35
    invoke-virtual {p1, v3, v1}, Lbb2;->a(Ljava/lang/Class;Lsj7;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lck1;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Lck1;-><init>(I)V

    .line 41
    .line 42
    .line 43
    const-class v0, Lyj1;

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Lbb2;->a(Ljava/lang/Class;Lsj7;)V

    .line 46
    .line 47
    .line 48
    const-class v0, Lz53;

    .line 49
    .line 50
    invoke-virtual {p1, v0, p0}, Lbb2;->a(Ljava/lang/Class;Lsj7;)V

    .line 51
    .line 52
    .line 53
    const-class v0, Lib4;

    .line 54
    .line 55
    invoke-virtual {p1, v0, p0}, Lbb2;->a(Ljava/lang/Class;Lsj7;)V

    .line 56
    .line 57
    .line 58
    new-instance p0, Ljx4;

    .line 59
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    const-class v0, Lbx4;

    .line 64
    .line 65
    invoke-virtual {p1, v0, p0}, Lbb2;->a(Ljava/lang/Class;Lsj7;)V

    .line 66
    .line 67
    .line 68
    new-instance p0, Lp34;

    .line 69
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    const-class v0, Lk34;

    .line 74
    .line 75
    invoke-virtual {p1, v0, p0}, Lbb2;->a(Ljava/lang/Class;Lsj7;)V

    .line 76
    .line 77
    .line 78
    new-instance p0, Lqv4;

    .line 79
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    const-class v0, Llv4;

    .line 84
    .line 85
    invoke-virtual {p1, v0, p0}, Lbb2;->a(Ljava/lang/Class;Lsj7;)V

    .line 86
    .line 87
    .line 88
    new-instance p0, Lak1;

    .line 89
    .line 90
    invoke-direct {p0, v2}, Lak1;-><init>(I)V

    .line 91
    .line 92
    .line 93
    const-class v0, La28;

    .line 94
    .line 95
    invoke-virtual {p1, v0, p0}, Lbb2;->a(Ljava/lang/Class;Lsj7;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final i(Lom5;)V
    .locals 3

    .line 1
    new-instance v0, Lcx1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcx1;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    const-class p0, Lr08;

    .line 8
    .line 9
    invoke-virtual {p1, p0, v0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 10
    .line 11
    .line 12
    new-instance p0, Ldx1;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const-class v0, Lar7;

    .line 18
    .line 19
    invoke-virtual {p1, v0, p0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Lex1;

    .line 23
    .line 24
    invoke-direct {p0, v1}, Lex1;-><init>(I)V

    .line 25
    .line 26
    .line 27
    const-class v0, Ldv2;

    .line 28
    .line 29
    invoke-virtual {p1, v0, p0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 30
    .line 31
    .line 32
    new-instance p0, Lfx1;

    .line 33
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    const-class v0, Lat0;

    .line 38
    .line 39
    invoke-virtual {p1, v0, p0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 40
    .line 41
    .line 42
    new-instance p0, Lgx1;

    .line 43
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    const-class v0, Lyj1;

    .line 48
    .line 49
    invoke-virtual {p1, v0, p0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 50
    .line 51
    .line 52
    new-instance p0, Lhx1;

    .line 53
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    const-class v0, Lz53;

    .line 58
    .line 59
    invoke-virtual {p1, v0, p0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 60
    .line 61
    .line 62
    new-instance p0, Lix1;

    .line 63
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    const-class v0, Lib4;

    .line 68
    .line 69
    invoke-virtual {p1, v0, p0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 70
    .line 71
    .line 72
    new-instance p0, Lww1;

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    invoke-direct {p0, v0}, Lww1;-><init>(I)V

    .line 76
    .line 77
    .line 78
    const-class v2, Ls94;

    .line 79
    .line 80
    invoke-virtual {p1, v2, p0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 81
    .line 82
    .line 83
    new-instance p0, Lex1;

    .line 84
    .line 85
    invoke-direct {p0, v0}, Lex1;-><init>(I)V

    .line 86
    .line 87
    .line 88
    const-class v2, Lfx0;

    .line 89
    .line 90
    invoke-virtual {p1, v2, p0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 91
    .line 92
    .line 93
    new-instance p0, Lex1;

    .line 94
    .line 95
    invoke-direct {p0, v0}, Lex1;-><init>(I)V

    .line 96
    .line 97
    .line 98
    const-class v2, Lqu5;

    .line 99
    .line 100
    invoke-virtual {p1, v2, p0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 101
    .line 102
    .line 103
    new-instance p0, Lxw1;

    .line 104
    .line 105
    invoke-direct {p0, v0}, Lxw1;-><init>(I)V

    .line 106
    .line 107
    .line 108
    const-class v0, Lbx4;

    .line 109
    .line 110
    invoke-virtual {p1, v0, p0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 111
    .line 112
    .line 113
    new-instance p0, Lww1;

    .line 114
    .line 115
    invoke-direct {p0, v1}, Lww1;-><init>(I)V

    .line 116
    .line 117
    .line 118
    const-class v0, La28;

    .line 119
    .line 120
    invoke-virtual {p1, v0, p0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 121
    .line 122
    .line 123
    new-instance p0, Lxw1;

    .line 124
    .line 125
    invoke-direct {p0, v1}, Lxw1;-><init>(I)V

    .line 126
    .line 127
    .line 128
    const-class v0, Lk34;

    .line 129
    .line 130
    invoke-virtual {p1, v0, p0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 131
    .line 132
    .line 133
    new-instance p0, Lyw1;

    .line 134
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    .line 137
    .line 138
    const-class v0, Laj7;

    .line 139
    .line 140
    invoke-virtual {p1, v0, p0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 141
    .line 142
    .line 143
    new-instance p0, Lzw1;

    .line 144
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    .line 147
    .line 148
    const-class v0, Lu24;

    .line 149
    .line 150
    invoke-virtual {p1, v0, p0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 151
    .line 152
    .line 153
    new-instance p0, Lax1;

    .line 154
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    .line 157
    .line 158
    const-class v0, Lrw5;

    .line 159
    .line 160
    invoke-virtual {p1, v0, p0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 161
    .line 162
    .line 163
    new-instance p0, Lbx1;

    .line 164
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    .line 167
    .line 168
    const-class v0, Llv4;

    .line 169
    .line 170
    invoke-virtual {p1, v0, p0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method
