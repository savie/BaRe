.class public final Lbk7;
.super Lav4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic q:Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbk7;->q:Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lav4;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d(Landroid/util/DisplayMetrics;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lbk7;->q:Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;

    .line 5
    .line 6
    iget p0, p0, Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;->W:F

    .line 7
    .line 8
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 9
    .line 10
    int-to-float p1, p1

    .line 11
    div-float/2addr p0, p1

    .line 12
    return p0
.end method
