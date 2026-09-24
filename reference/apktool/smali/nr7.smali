.class public final Lnr7;
.super Landroid/text/style/MetricAffectingSpan;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnr7;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1
    iget p0, p0, Lnr7;->a:I

    .line 2
    .line 3
    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    .line 5
    const/high16 v1, 0x3f400000    # 0.75f

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    mul-float/2addr p0, v1

    .line 15
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 16
    .line 17
    .line 18
    iget p0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    div-float/2addr v1, v0

    .line 25
    float-to-int v0, v1

    .line 26
    add-int/2addr p0, v0

    .line 27
    iput p0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    mul-float/2addr p0, v1

    .line 35
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36
    .line 37
    .line 38
    iget p0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    div-float/2addr v1, v0

    .line 45
    float-to-int v0, v1

    .line 46
    sub-int/2addr p0, v0

    .line 47
    iput p0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1
    iget p0, p0, Lnr7;->a:I

    .line 2
    .line 3
    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    .line 5
    const/high16 v1, 0x3f400000    # 0.75f

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    mul-float/2addr p0, v1

    .line 15
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 16
    .line 17
    .line 18
    iget p0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    div-float/2addr v1, v0

    .line 25
    float-to-int v0, v1

    .line 26
    add-int/2addr p0, v0

    .line 27
    iput p0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    mul-float/2addr p0, v1

    .line 35
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36
    .line 37
    .line 38
    iget p0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    div-float/2addr v1, v0

    .line 45
    float-to-int v0, v1

    .line 46
    sub-int/2addr p0, v0

    .line 47
    iput p0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
