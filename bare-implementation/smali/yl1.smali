.class public final Lyl1;
.super Landroid/text/style/CharacterStyle;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lyl1;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget p0, p0, Lyl1;->a:I

    .line 5
    .line 6
    iput p0, p1, Landroid/text/TextPaint;->underlineColor:I

    .line 7
    .line 8
    iget p0, p1, Landroid/text/TextPaint;->density:F

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    cmpl-float v0, p0, v0

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    :goto_0
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 19
    .line 20
    mul-float/2addr p0, v0

    .line 21
    iput p0, p1, Landroid/text/TextPaint;->underlineThickness:F

    .line 22
    .line 23
    return-void
.end method
