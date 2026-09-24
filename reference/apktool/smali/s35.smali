.class public final Ls35;
.super Lv75;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Leu4;


# instance fields
.field public final e:Lio1;

.field public final f:Ljava/lang/Float;

.field public k:Lwa;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lio1;ILhv1;Ljava/lang/Float;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p2}, Lv75;-><init>(Landroid/content/ContextWrapper;I)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls35;->e:Lio1;

    .line 5
    .line 6
    iput-object p4, p0, Ls35;->f:Ljava/lang/Float;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final m()Lwa;
    .locals 5

    .line 1
    iget-object v0, p0, Ls35;->e:Lio1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-super {p0}, Lva;->m()Lwa;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Ls35;->k:Lwa;

    .line 16
    .line 17
    const v2, 0x102000b

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lho;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/widget/TextView;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v3, p0, Lva;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Lra;

    .line 31
    .line 32
    iget-object v3, v3, Lra;->a:Landroid/view/ContextThemeWrapper;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 43
    .line 44
    int-to-float v3, v3

    .line 45
    const/high16 v4, 0x43200000    # 160.0f

    .line 46
    .line 47
    div-float/2addr v3, v4

    .line 48
    const/high16 v4, 0x40c00000    # 6.0f

    .line 49
    .line 50
    mul-float/2addr v3, v4

    .line 51
    const/high16 v4, 0x3f800000    # 1.0f

    .line 52
    .line 53
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v3, p0, Ls35;->f:Ljava/lang/Float;

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {v0}, Lho1;->getLifecycle()Lhu4;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, p0}, Lhu4;->a(Leu4;)V

    .line 74
    .line 75
    .line 76
    return-object v1
.end method

.method public final onLifecycleDestroy()V
    .locals 0
    .annotation runtime Lct5;
        value = .enum Lrt4;->ON_DESTROY:Lrt4;
    .end annotation

    .line 1
    iget-object p0, p0, Ls35;->k:Lwa;

    .line 2
    .line 3
    invoke-static {p0}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
