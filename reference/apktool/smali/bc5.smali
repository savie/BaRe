.class public final Lbc5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lac5;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lac5;->a:Landroid/content/Context;

    .line 5
    .line 6
    iget v1, p1, Lac5;->d:F

    .line 7
    .line 8
    iget-object v2, p1, Lac5;->b:Landroid/app/ActivityManager;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    const/high16 v3, 0x200000

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/high16 v3, 0x400000

    .line 20
    .line 21
    :goto_0
    iput v3, p0, Lbc5;->c:I

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/high16 v5, 0x100000

    .line 28
    .line 29
    mul-int/2addr v4, v5

    .line 30
    invoke-virtual {v2}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    int-to-float v4, v4

    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    const v5, 0x3ea8f5c3    # 0.33f

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const v5, 0x3ecccccd    # 0.4f

    .line 42
    .line 43
    .line 44
    :goto_1
    mul-float/2addr v4, v5

    .line 45
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    iget-object p1, p1, Lac5;->c:Lnh;

    .line 50
    .line 51
    iget-object p1, p1, Lnh;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Landroid/util/DisplayMetrics;

    .line 54
    .line 55
    iget v5, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 56
    .line 57
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 58
    .line 59
    mul-int/2addr v5, p1

    .line 60
    mul-int/lit8 v5, v5, 0x4

    .line 61
    .line 62
    int-to-float p1, v5

    .line 63
    mul-float v5, p1, v1

    .line 64
    .line 65
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    const/high16 v6, 0x40000000    # 2.0f

    .line 70
    .line 71
    mul-float/2addr p1, v6

    .line 72
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    sub-int v7, v4, v3

    .line 77
    .line 78
    add-int v8, p1, v5

    .line 79
    .line 80
    if-gt v8, v7, :cond_2

    .line 81
    .line 82
    iput p1, p0, Lbc5;->b:I

    .line 83
    .line 84
    iput v5, p0, Lbc5;->a:I

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    int-to-float p1, v7

    .line 88
    add-float v5, v1, v6

    .line 89
    .line 90
    div-float/2addr p1, v5

    .line 91
    mul-float/2addr v6, p1

    .line 92
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    iput v5, p0, Lbc5;->b:I

    .line 97
    .line 98
    mul-float/2addr p1, v1

    .line 99
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iput p1, p0, Lbc5;->a:I

    .line 104
    .line 105
    :goto_2
    const/4 p1, 0x3

    .line 106
    const-string v1, "MemorySizeCalculator"

    .line 107
    .line 108
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v5, "Calculation complete, Calculated memory cache size: "

    .line 117
    .line 118
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget v5, p0, Lbc5;->b:I

    .line 122
    .line 123
    int-to-long v5, v5

    .line 124
    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v5, ", pool size: "

    .line 132
    .line 133
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget p0, p0, Lbc5;->a:I

    .line 137
    .line 138
    int-to-long v5, p0

    .line 139
    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p0, ", byte array size: "

    .line 147
    .line 148
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    int-to-long v5, v3

    .line 152
    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string p0, ", memory class limited? "

    .line 160
    .line 161
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    if-le v8, v4, :cond_3

    .line 165
    .line 166
    const/4 p0, 0x1

    .line 167
    goto :goto_3

    .line 168
    :cond_3
    const/4 p0, 0x0

    .line 169
    :goto_3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string p0, ", max size: "

    .line 173
    .line 174
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    int-to-long v3, v4

    .line 178
    invoke-static {v0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string p0, ", memoryClass: "

    .line 186
    .line 187
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string p0, ", isLowMemoryDevice: "

    .line 198
    .line 199
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_4
    return-void
.end method
