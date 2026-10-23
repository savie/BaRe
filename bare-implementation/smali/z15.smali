.class public final Lz15;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Le35;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz15;->a:Lcom/airbnb/lottie/LottieAnimationView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p0, p0, Lz15;->a:Lcom/airbnb/lottie/LottieAnimationView;

    .line 4
    .line 5
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Le35;

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    sget-object p0, Lcom/airbnb/lottie/LottieAnimationView;->O:Lx15;

    .line 17
    .line 18
    :cond_1
    invoke-interface {p0, p1}, Le35;->onResult(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
