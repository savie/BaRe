.class public final Ldx0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:Landroid/graphics/Typeface;

.field public final o:I

.field public final p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "#FF4081"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, p0, Ldx0;->b:I

    .line 11
    .line 12
    const-string v1, "#FFFFFF"

    .line 13
    .line 14
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, p0, Ldx0;->c:I

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput v1, p0, Ldx0;->d:I

    .line 22
    .line 23
    iput v1, p0, Ldx0;->e:I

    .line 24
    .line 25
    const-string v2, "#D7D7D7"

    .line 26
    .line 27
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iput v2, p0, Ldx0;->f:I

    .line 32
    .line 33
    iput v1, p0, Ldx0;->g:I

    .line 34
    .line 35
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, p0, Ldx0;->h:I

    .line 40
    .line 41
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iput v2, p0, Ldx0;->i:I

    .line 46
    .line 47
    iput v1, p0, Ldx0;->j:I

    .line 48
    .line 49
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iput v2, p0, Ldx0;->k:I

    .line 54
    .line 55
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iput v2, p0, Ldx0;->l:I

    .line 60
    .line 61
    iput v1, p0, Ldx0;->m:I

    .line 62
    .line 63
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 64
    .line 65
    iput-object v2, p0, Ldx0;->n:Landroid/graphics/Typeface;

    .line 66
    .line 67
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Ldx0;->o:I

    .line 72
    .line 73
    iput v1, p0, Ldx0;->p:I

    .line 74
    .line 75
    iput-object p1, p0, Ldx0;->a:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 86
    .line 87
    const/high16 v1, 0x41600000    # 14.0f

    .line 88
    .line 89
    mul-float/2addr v0, v1

    .line 90
    const/high16 v2, 0x3f000000    # 0.5f

    .line 91
    .line 92
    add-float/2addr v0, v2

    .line 93
    float-to-int v0, v0

    .line 94
    iput v0, p0, Ldx0;->d:I

    .line 95
    .line 96
    const/high16 v0, 0x40000000    # 2.0f

    .line 97
    .line 98
    invoke-static {p1, v0}, Ltu0;->j(Landroid/content/Context;F)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    iput v3, p0, Ldx0;->e:I

    .line 103
    .line 104
    invoke-static {p1, v0}, Ltu0;->j(Landroid/content/Context;F)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput v0, p0, Ldx0;->g:I

    .line 109
    .line 110
    const/high16 v0, 0x41200000    # 10.0f

    .line 111
    .line 112
    invoke-static {p1, v0}, Ltu0;->j(Landroid/content/Context;F)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iput v0, p0, Ldx0;->p:I

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 127
    .line 128
    const/high16 v3, 0x41500000    # 13.0f

    .line 129
    .line 130
    mul-float/2addr v3, v0

    .line 131
    add-float/2addr v3, v2

    .line 132
    float-to-int v0, v3

    .line 133
    iput v0, p0, Ldx0;->m:I

    .line 134
    .line 135
    invoke-static {p1, v1}, Ltu0;->j(Landroid/content/Context;F)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    iput p1, p0, Ldx0;->j:I

    .line 140
    .line 141
    return-void
.end method
