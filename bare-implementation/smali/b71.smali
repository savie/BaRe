.class public final Lb71;
.super Lpr0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "com.bumptech.glide.load.resource.bitmap.CircleCrop.1"

    .line 2
    .line 3
    sget-object v1, Ljo4;->a:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lb71;->b:[B

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Ljava/security/MessageDigest;)V
    .locals 0

    .line 1
    sget-object p0, Lb71;->b:[B

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Lnr0;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    sget-object p0, Ln98;->d:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    int-to-float p4, p3

    .line 8
    const/high16 v0, 0x40000000    # 2.0f

    .line 9
    .line 10
    div-float v1, p4, v0

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    int-to-float v2, v2

    .line 21
    div-float v4, p4, v2

    .line 22
    .line 23
    int-to-float v3, v3

    .line 24
    div-float v5, p4, v3

    .line 25
    .line 26
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    mul-float/2addr v2, v4

    .line 31
    mul-float/2addr v4, v3

    .line 32
    sub-float v3, p4, v2

    .line 33
    .line 34
    div-float/2addr v3, v0

    .line 35
    sub-float/2addr p4, v4

    .line 36
    div-float/2addr p4, v0

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    .line 38
    .line 39
    add-float/2addr v2, v3

    .line 40
    add-float/2addr v4, p4

    .line 41
    invoke-direct {v0, v3, p4, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 42
    .line 43
    .line 44
    sget-object p4, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    move-object v2, p4

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 59
    .line 60
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/4 v4, 0x0

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    move-object v2, p2

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-interface {p1, v3, v5, v2}, Lnr0;->k(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    new-instance v3, Landroid/graphics/Canvas;

    .line 86
    .line 87
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 88
    .line 89
    .line 90
    const/4 v5, 0x0

    .line 91
    invoke-virtual {v3, p2, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_2

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 106
    .line 107
    :goto_2
    invoke-interface {p1, p3, p3, p4}, Lnr0;->k(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    const/4 p4, 0x1

    .line 112
    invoke-virtual {p3, p4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 116
    .line 117
    .line 118
    :try_start_0
    new-instance p4, Landroid/graphics/Canvas;

    .line 119
    .line 120
    invoke-direct {p4, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    .line 122
    .line 123
    sget-object v3, Ln98;->b:Landroid/graphics/Paint;

    .line 124
    .line 125
    invoke-virtual {p4, v1, v1, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 126
    .line 127
    .line 128
    sget-object v1, Ln98;->c:Landroid/graphics/Paint;

    .line 129
    .line 130
    invoke-virtual {p4, v2, v4, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p4, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-nez p0, :cond_3

    .line 144
    .line 145
    invoke-interface {p1, v2}, Lnr0;->f(Landroid/graphics/Bitmap;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    return-object p3

    .line 149
    :catchall_0
    move-exception p1

    .line 150
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 151
    .line 152
    .line 153
    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lb71;

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const p0, 0x41aadb8c

    .line 2
    .line 3
    .line 4
    return p0
.end method
