.class public final Lu44;
.super Ljm8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/home/HomeActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu44;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lu44;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lw44;->b:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x2

    .line 11
    if-ne p1, v2, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v1

    .line 16
    :goto_0
    invoke-static {v0, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 17
    .line 18
    .line 19
    if-eq p1, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p1, p1, Lw44;->e:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 26
    .line 27
    invoke-virtual {p1, v1, v1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->o(ZZ)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {v0}, Lsz8;->I(Landroid/view/View;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;->a0:Lgv7;

    .line 37
    .line 38
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroid/view/animation/Animation;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method
