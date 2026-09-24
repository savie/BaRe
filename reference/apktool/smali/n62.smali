.class public final Ln62;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final a:Lh80;

.field public final b:Ljava/lang/StringBuilder;

.field public final c:I

.field public d:I

.field public final synthetic e:Lo62;


# direct methods
.method public constructor <init>(Lo62;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln62;->e:Lo62;

    .line 5
    .line 6
    new-instance v0, Lh80;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Lh80;-><init>(IZ)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Ln62;->a:Lh80;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Ln62;->b:Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object p1, p1, Lo62;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Ln62;->c:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 11

    .line 1
    iget-object v0, p0, Ln62;->a:Lh80;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    iput-object v1, v0, Lh80;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v1, v0, Lh80;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v1, p0, Ln62;->b:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 13
    .line 14
    .line 15
    iget v3, p0, Ln62;->d:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    move v6, v2

    .line 19
    move-object v5, v4

    .line 20
    :goto_0
    iget v7, p0, Ln62;->c:I

    .line 21
    .line 22
    const/4 v8, 0x1

    .line 23
    if-ge v3, v7, :cond_9

    .line 24
    .line 25
    iget-object v7, p0, Ln62;->e:Lo62;

    .line 26
    .line 27
    iget-object v7, v7, Lo62;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    const/16 v9, 0x3b

    .line 34
    .line 35
    if-nez v4, :cond_5

    .line 36
    .line 37
    const/16 v10, 0x3a

    .line 38
    .line 39
    if-ne v10, v7, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-lez v7, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    if-ne v9, v7, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-eqz v9, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-lez v7, :cond_8

    .line 76
    .line 77
    move v6, v8

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    if-eqz v6, :cond_4

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move v6, v2

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    if-nez v5, :cond_8

    .line 94
    .line 95
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    if-eqz v10, :cond_6

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-lez v8, :cond_8

    .line 106
    .line 107
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    if-ne v9, v7, :cond_7

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 122
    .line 123
    .line 124
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-nez v7, :cond_8

    .line 129
    .line 130
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-nez v7, :cond_8

    .line 135
    .line 136
    add-int/2addr v3, v8

    .line 137
    iput v3, p0, Ln62;->d:I

    .line 138
    .line 139
    iput-object v4, v0, Lh80;->b:Ljava/lang/Object;

    .line 140
    .line 141
    iput-object v5, v0, Lh80;->c:Ljava/lang/Object;

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    :cond_8
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_9
    if-eqz v4, :cond_a

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-lez v3, :cond_a

    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iput-object v4, v0, Lh80;->b:Ljava/lang/Object;

    .line 168
    .line 169
    iput-object v1, v0, Lh80;->c:Ljava/lang/Object;

    .line 170
    .line 171
    iput v7, p0, Ln62;->d:I

    .line 172
    .line 173
    :cond_a
    :goto_2
    iget-object p0, v0, Lh80;->b:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p0, Ljava/lang/String;

    .line 176
    .line 177
    iget-object v0, v0, Lh80;->c:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v0, Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    if-nez p0, :cond_b

    .line 186
    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    if-nez p0, :cond_b

    .line 192
    .line 193
    return v8

    .line 194
    :cond_b
    return v2
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Ln62;->a:Lh80;

    .line 2
    .line 3
    iget-object v0, p0, Lh80;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lh80;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-static {}, Lm0;->d()V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method
