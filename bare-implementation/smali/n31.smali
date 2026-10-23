.class public final Ln31;
.super Landroid/util/Property;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Ln31;->a:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Ln31;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lgp2;

    .line 7
    .line 8
    invoke-virtual {p1}, Lgp2;->b()F

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    check-cast p1, Lq71;

    .line 18
    .line 19
    iget p0, p1, Lq71;->p:F

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :pswitch_1
    check-cast p1, Landroid/view/View;

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p0, p0, Ln31;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lgp2;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Float;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    iget p2, p1, Lgp2;->p:F

    .line 15
    .line 16
    cmpl-float p2, p2, p0

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    iput p0, p1, Lgp2;->p:F

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :pswitch_0
    check-cast p1, Lq71;

    .line 27
    .line 28
    check-cast p2, Ljava/lang/Float;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    iput p0, p1, Lq71;->p:F

    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    check-cast p1, Landroid/view/View;

    .line 38
    .line 39
    check-cast p2, Landroid/graphics/PointF;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 56
    .line 57
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-static {p1, p0, v0, v1, p2}, Lwm8;->a(Landroid/view/View;IIII)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
