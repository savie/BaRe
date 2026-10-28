.class public final Lv44;
.super Ljm8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lcom/bareapps/barebackup/home/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/bareapps/barebackup/home/HomeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv44;->a:Lcom/bareapps/barebackup/home/HomeActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lv44;->a:Lcom/bareapps/barebackup/home/HomeActivity;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/bareapps/barebackup/home/HomeActivity;->Z()Lw44;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lw44;->f:Lcom/bareapps/barebackup/views/NoSwipeViewPager;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/bareapps/barebackup/home/HomeActivity;->a0:Lgv7;

    .line 10
    .line 11
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/view/animation/Animation;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
